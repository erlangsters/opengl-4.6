-module(gl_uniform_matrix_array_rendered_pixel_test).
-include_lib("eunit/include/eunit.hrl").

matrix_uniform_array_rendered_pixel_test() ->
    gl_test_context:setup_context(),

    {Program, VertexShader, FragmentShader} = create_program(),
    {ok, Location} = gl:get_uniform_location(Program, <<"u_matrix[0]">>),
    ?assert(Location >= 0),

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

    ok = clear_framebuffer(),
    ok = gl:use_program(Program),
    ok = gl:uniform_matrix(f, Location, [red_matrix(), green_matrix()]),
    ok = gl:draw_arrays(points, 0, 1),
    {ok, <<0, 255, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = clear_framebuffer(),
    ok = gl:use_program(none),
    ok = gl:program_uniform_matrix(
        f,
        Program,
        Location,
        [red_matrix(), blue_matrix()]
    ),
    ok = gl:use_program(Program),
    ok = gl:draw_arrays(points, 0, 1),
    {ok, <<0, 0, 255, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:use_program(none),
    ok = gl:bind_vertex_array(none),
    ok = gl:delete_vertex_arrays([VertexArray]),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok = gl:detach_shader(Program, VertexShader),
    ok = gl:detach_shader(Program, FragmentShader),
    ok = gl:delete_shader(VertexShader),
    ok = gl:delete_shader(FragmentShader),
    ok = gl:delete_program(Program),
    {ok, no_error} = gl:get_error().

clear_framebuffer() ->
    gl:clear([color_buffer_bit]).

create_program() ->
    {ok, VertexShader} = gl:create_shader(vertex_shader),
    ok = gl:shader_source(VertexShader, [vertex_source()]),
    ok = gl:compile_shader(VertexShader),
    ok = assert_shader_compiled(VertexShader),

    {ok, FragmentShader} = gl:create_shader(fragment_shader),
    ok = gl:shader_source(FragmentShader, [fragment_source()]),
    ok = gl:compile_shader(FragmentShader),
    ok = assert_shader_compiled(FragmentShader),

    {ok, Program} = gl:create_program(),
    ok = gl:attach_shader(Program, VertexShader),
    ok = gl:attach_shader(Program, FragmentShader),
    ok = gl:link_program(Program),
    ok = assert_program_linked(Program),
    {Program, VertexShader, FragmentShader}.

assert_shader_compiled(Shader) ->
    case gl:get_shader_compile_status(Shader) of
        {ok, true} ->
            ok;
        {ok, false} ->
            {ok, InfoLog} = gl:get_shader_info_log(Shader, 1024),
            ?assertEqual({shader_compile_failed, InfoLog}, ok)
    end.

assert_program_linked(Program) ->
    case gl:get_program_link_status(Program) of
        {ok, true} ->
            ok;
        {ok, false} ->
            {ok, InfoLog} = gl:get_program_info_log(Program, 1024),
            ?assertEqual({program_link_failed, InfoLog}, ok)
    end.

vertex_source() ->
    <<"#version 140\n"
      "void main() { gl_PointSize = 1.0; gl_Position = vec4(0.0, 0.0, 0.0, 1.0); }\n">>.

fragment_source() ->
    <<"#version 140\n"
      "uniform mat4 u_matrix[2];\n"
      "out vec4 frag_color;\n"
      "void main() { frag_color = mix(u_matrix[0][0], u_matrix[1][0], step(0.0, gl_FragCoord.x)); }\n">>.

red_matrix() ->
    first_column_matrix({1.0, 0.0, 0.0, 1.0}).

green_matrix() ->
    first_column_matrix({0.0, 1.0, 0.0, 1.0}).

blue_matrix() ->
    first_column_matrix({0.0, 0.0, 1.0, 1.0}).

first_column_matrix(Column) ->
    {
        Column,
        {0.0, 0.0, 0.0, 0.0},
        {0.0, 0.0, 0.0, 0.0},
        {0.0, 0.0, 0.0, 0.0}
    }.
