-module(gl_subroutine_reflection_test).
-include_lib("eunit/include/eunit.hrl").

subroutine_reflection_test() ->
    gl_test_context:setup_context(),

    {Program, VertexShader, FragmentShader} = create_program(),
    {ok, Location} =
        gl:get_subroutine_uniform_location(
            Program,
            fragment_shader,
            <<"u_color_choice">>
        ),
    ?assert(Location >= 0),
    {ok, GreenIndex} =
        gl:get_subroutine_index(Program, fragment_shader, <<"green_choice">>),
    ?assertNotEqual(16#FFFFFFFF, GreenIndex),

    {ok, [1]} =
        gl:get_program_stage(
            Program,
            fragment_shader,
            active_subroutine_uniforms,
            1
        ),
    {ok, [1]} =
        gl:get_program_stage(
            Program,
            fragment_shader,
            active_subroutine_uniform_locations,
            1
        ),
    {ok, [2]} =
        gl:get_program_stage(Program, fragment_shader, active_subroutines, 1),
    {ok, [1]} =
        gl:get_active_subroutine_uniform(
            Program,
            fragment_shader,
            0,
            uniform_size,
            1
        ),
    {ok, [2]} =
        gl:get_active_subroutine_uniform(
            Program,
            fragment_shader,
            0,
            num_compatible_subroutines,
            1
        ),
    {ok, CompatibleSubroutines} =
        gl:get_active_subroutine_uniform(
            Program,
            fragment_shader,
            0,
            compatible_subroutines,
            2
        ),
    ?assert(lists:member(GreenIndex, CompatibleSubroutines)),
    {ok, <<"u_color_choice">>} =
        gl:get_active_subroutine_uniform_name(Program, fragment_shader, 0, 64),
    {ok, <<"green_choice">>} =
        gl:get_active_subroutine_name(
            Program,
            fragment_shader,
            GreenIndex,
            64
        ),

    {VertexArray, Framebuffer, Renderbuffer} = setup_render_target(),
    ok = gl:use_program(Program),
    ok = gl:uniform_subroutines(fragment_shader, [GreenIndex]),
    {ok, [GreenIndex]} =
        gl:get_uniform_subroutine(fragment_shader, Location, 1),
    ok = gl:draw_arrays(points, 0, 1),
    {ok, <<0, 255, 0, 255>>} =
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

setup_render_target() ->
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
    {VertexArray, Framebuffer, Renderbuffer}.

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
    <<"#version 400\n"
      "void main() {\n"
      "    gl_PointSize = 1.0;\n"
      "    gl_Position = vec4(0.0, 0.0, 0.0, 1.0);\n"
      "}\n">>.

fragment_source() ->
    <<"#version 400\n"
      "subroutine vec4 color_choice_type();\n"
      "subroutine(color_choice_type) vec4 red_choice() {\n"
      "    return vec4(1.0, 0.0, 0.0, 1.0);\n"
      "}\n"
      "subroutine(color_choice_type) vec4 green_choice() {\n"
      "    return vec4(0.0, 1.0, 0.0, 1.0);\n"
      "}\n"
      "subroutine uniform color_choice_type u_color_choice;\n"
      "out vec4 frag_color;\n"
      "void main() {\n"
      "    frag_color = u_color_choice();\n"
      "}\n">>.
