-module(gl_uniform_reflection_test).
-include_lib("eunit/include/eunit.hrl").

uniform_reflection_test() ->
    gl_test_context:setup_context(),

    {Program, VertexShader, FragmentShader} = create_program(),

    {ok, [UniformIndex]} = gl:get_uniform_indices(Program, [<<"u_color">>]),
    ?assertNotEqual(16#FFFFFFFF, UniformIndex),
    {ok, <<"u_color">>} = gl:get_active_uniform_name(Program, UniformIndex, 64),
    {ok, [1]} = gl:get_active_uniforms(Program, [UniformIndex], uniform_size),

    {ok, BlockIndex} = gl:get_uniform_block_index(Program, <<"CanaryBlock">>),
    ?assertNotEqual(16#FFFFFFFF, BlockIndex),
    {ok, <<"CanaryBlock">>} =
        gl:get_active_uniform_block_name(Program, BlockIndex, 64),
    {ok, [1]} =
        gl:get_active_uniform_block(
            Program,
            BlockIndex,
            uniform_block_active_uniforms,
            1
        ),

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
      "uniform vec4 u_color;\n"
      "layout(std140) uniform CanaryBlock {\n"
      "    vec4 block_value;\n"
      "};\n"
      "out vec4 v_color;\n"
      "void main() {\n"
      "    v_color = u_color + block_value;\n"
      "    gl_Position = vec4(0.0);\n"
      "}\n">>.

fragment_source() ->
    <<"#version 140\n"
      "in vec4 v_color;\n"
      "out vec4 frag_color;\n"
      "void main() {\n"
      "    frag_color = v_color;\n"
      "}\n">>.
