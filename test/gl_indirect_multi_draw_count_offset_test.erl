-module(gl_indirect_multi_draw_count_offset_test).
-include_lib("eunit/include/eunit.hrl").

indirect_multi_draw_count_offset_test() ->
    gl_test_context:setup_context(),
    ok = assert_gl_4_6_context(),

    {Program, VertexShader, FragmentShader} = create_program(),
    ok = gl:use_program(Program),

    {ok, [VertexArray]} = gl:gen_vertex_arrays(1),
    ok = gl:bind_vertex_array(VertexArray),

    {ok, [ElementBuffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(element_array_buffer, ElementBuffer),
    ok = gl:buffer_data(element_array_buffer, <<0>>, static_draw),

    {ok, [IndirectBuffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(draw_indirect_buffer, IndirectBuffer),
    ok = gl:buffer_data(draw_indirect_buffer, indirect_commands(), static_draw),

    {ok, [ParameterBuffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(parameter_buffer, ParameterBuffer),
    ok = gl:buffer_data(parameter_buffer, parameter_data(), static_draw),

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

    ok =
        assert_draw_green(
            fun() ->
                gl:multi_draw_arrays_indirect_count(
                    points,
                    arrays_offset(),
                    draw_count_offset(),
                    2,
                    arrays_stride()
                )
            end
        ),
    ok =
        assert_draw_green(
            fun() ->
                gl:multi_draw_elements_indirect_count(
                    points,
                    unsigned_byte,
                    elements_offset(),
                    draw_count_offset(),
                    2,
                    elements_stride()
                )
            end
        ),

    ok = gl:use_program(none),
    ok = gl:bind_buffer(parameter_buffer, none),
    ok = gl:bind_buffer(draw_indirect_buffer, none),
    ok = gl:bind_vertex_array(none),
    ok = gl:delete_buffers([ElementBuffer, IndirectBuffer, ParameterBuffer]),
    ok = gl:delete_vertex_arrays([VertexArray]),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok = gl:detach_shader(Program, VertexShader),
    ok = gl:detach_shader(Program, FragmentShader),
    ok = gl:delete_shader(VertexShader),
    ok = gl:delete_shader(FragmentShader),
    ok = gl:delete_program(Program),
    {ok, no_error} = gl:get_error().

assert_draw_green(Draw) ->
    ok = gl:clear_color(0.0, 0.0, 0.0, 1.0),
    ok = gl:clear([color_buffer_bit]),
    ok = Draw(),
    {ok, <<0, 255, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),
    ok.

assert_gl_4_6_context() ->
    {ok, MajorVersion} = gl:get_major_version(),
    {ok, MinorVersion} = gl:get_minor_version(),
    case {MajorVersion, MinorVersion} >= {4, 6} of
        true ->
            ok;
        false ->
            ?assertEqual({gl_4_6_context_required, {MajorVersion, MinorVersion}}, ok)
    end.

arrays_offset() ->
    0.

arrays_stride() ->
    20.

elements_offset() ->
    40.

elements_stride() ->
    24.

draw_count_offset() ->
    4.

indirect_commands() ->
    <<
        (draw_arrays_command())/binary,
        0:32/native-unsigned,
        (draw_arrays_command())/binary,
        0:32/native-unsigned,
        (draw_elements_command())/binary,
        0:32/native-unsigned,
        (draw_elements_command())/binary,
        0:32/native-unsigned
    >>.

draw_arrays_command() ->
    <<
        %% DrawArraysIndirectCommand: count, instanceCount, first, baseInstance.
        1:32/native-unsigned,
        1:32/native-unsigned,
        0:32/native-unsigned,
        0:32/native-unsigned
    >>.

draw_elements_command() ->
    <<
        %% DrawElementsIndirectCommand: count, instanceCount, firstIndex, baseVertex, baseInstance.
        1:32/native-unsigned,
        1:32/native-unsigned,
        0:32/native-unsigned,
        0:32/native-signed,
        0:32/native-unsigned
    >>.

parameter_data() ->
    <<
        16#FFFFFFFF:32/native-unsigned,
        2:32/native-unsigned
    >>.

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
      "void main() {\n"
      "    gl_PointSize = 1.0;\n"
      "    gl_Position = vec4(0.0, 0.0, 0.0, 1.0);\n"
      "}\n">>.

fragment_source() ->
    <<"#version 140\n"
      "out vec4 frag_color;\n"
      "void main() { frag_color = vec4(0.0, 1.0, 0.0, 1.0); }\n">>.
