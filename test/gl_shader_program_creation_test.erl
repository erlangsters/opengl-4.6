-module(gl_shader_program_creation_test).
-include_lib("eunit/include/eunit.hrl").

shader_precision_and_program_creation_test() ->
    gl_test_context:setup_context(),

    {ok, RangeMin, RangeMax, Precision} =
        gl:get_shader_precision_format(fragment_shader, high_float),
    ?assert(is_integer(RangeMin)),
    ?assert(is_integer(RangeMax)),
    ?assert(RangeMax >= RangeMin),
    ?assert(is_integer(Precision)),
    ?assert(Precision >= 0),

    {ok, VertexProgram} = gl:create_shader_program(vertex_shader, [vertex_source()]),
    ok = assert_program_linked(VertexProgram),
    {ok, FragmentProgram} =
        gl:create_shader_program(fragment_shader, [fragment_source()]),
    ok = assert_program_linked(FragmentProgram),

    {ok, [Pipeline]} = gl:gen_program_pipelines(1),
    ok = gl:bind_program_pipeline(Pipeline),
    ok = gl:use_program_stages(Pipeline, [vertex_shader_bit], VertexProgram),
    ok = gl:use_program_stages(Pipeline, [fragment_shader_bit], FragmentProgram),
    ok = gl:validate_program_pipeline(Pipeline),
    ok = assert_pipeline_valid(Pipeline),

    {ok, [VertexArray]} = gl:gen_vertex_arrays(1),
    ok = gl:bind_vertex_array(VertexArray),

    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1),
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_renderbuffer(
        framebuffer,
        color_attachment0,
        renderbuffer,
        Renderbuffer
    ),
    ok = gl:draw_buffers([color_attachment0]),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),

    ok = gl:viewport(0, 0, 1, 1),
    ok = gl:clear_color(0.0, 0.0, 0.0, 1.0),
    ok = gl:clear([color_buffer_bit]),
    ok = gl:draw_arrays(points, 0, 1),
    {ok, <<0, 255, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:bind_vertex_array(none),
    ok = gl:delete_vertex_arrays([VertexArray]),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok = gl:delete_program_pipelines([Pipeline]),
    ok = gl:delete_program(VertexProgram),
    ok = gl:delete_program(FragmentProgram),
    {ok, no_error} = gl:get_error().

assert_program_linked(Program) ->
    case gl:get_program(Program, link_status, 1) of
        {ok, [1]} ->
            ok;
        {ok, [0]} ->
            {ok, InfoLog} = gl:get_program_info_log(Program, 1024),
            ?assertEqual({program_link_failed, InfoLog}, ok)
    end.

assert_pipeline_valid(Pipeline) ->
    case gl:get_program_pipeline(Pipeline, validate_status, 1) of
        {ok, [1]} ->
            ok;
        {ok, [0]} ->
            {ok, InfoLog} = gl:get_program_pipeline_info_log(Pipeline, 1024),
            ?assertEqual({program_pipeline_validation_failed, InfoLog}, ok)
    end.

vertex_source() ->
    <<"#version 140\n"
      "void main() { gl_PointSize = 1.0; gl_Position = vec4(0.0, 0.0, 0.0, 1.0); }\n">>.

fragment_source() ->
    <<"#version 140\n"
      "out vec4 frag_color;\n"
      "void main() { frag_color = vec4(0.0, 1.0, 0.0, 1.0); }\n">>.
