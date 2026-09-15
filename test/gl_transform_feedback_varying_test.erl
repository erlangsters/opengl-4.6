-module(gl_transform_feedback_varying_test).
-include_lib("eunit/include/eunit.hrl").

transform_feedback_varying_reflection_test() ->
    gl_test_context:setup_context(),

    {Program, VertexShader, FragmentShader} = create_program(),

    {ok, [1]} = gl:get_program(Program, transform_feedback_varyings, 1),
    {ok, 1, float, <<"tf_value">>} =
        gl:get_transform_feedback_varying(Program, 0, 64),

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
    ok = gl:transform_feedback_varyings(
        Program,
        [<<"tf_value">>],
        interleaved_attribs
    ),
    ok = gl:link_program(Program),
    ok = assert_program_linked(Program),
    {Program, VertexShader, FragmentShader}.

assert_shader_compiled(Shader) ->
    case gl:get_shader(Shader, compile_status, 1) of
        {ok, [1]} ->
            ok;
        {ok, [0]} ->
            {ok, InfoLog} = gl:get_shader_info_log(Shader, 1024),
            ?assertEqual({shader_compile_failed, InfoLog}, ok)
    end.

assert_program_linked(Program) ->
    case gl:get_program(Program, link_status, 1) of
        {ok, [1]} ->
            ok;
        {ok, [0]} ->
            {ok, InfoLog} = gl:get_program_info_log(Program, 1024),
            ?assertEqual({program_link_failed, InfoLog}, ok)
    end.

vertex_source() ->
    <<"#version 140\n"
      "out float tf_value;\n"
      "void main() {\n"
      "    tf_value = 1.0;\n"
      "    gl_Position = vec4(0.0);\n"
      "}\n">>.

fragment_source() ->
    <<"#version 140\n"
      "out vec4 frag_color;\n"
      "void main() {\n"
      "    frag_color = vec4(1.0);\n"
      "}\n">>.
