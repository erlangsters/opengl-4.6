-module(gl_program_resource_reflection_test).
-include_lib("eunit/include/eunit.hrl").

program_resource_reflection_test() ->
    gl_test_context:setup_context(),

    {Program, VertexShader, FragmentShader} = create_program(),

    {ok, [1]} = gl:get_program_interface(Program, uniform_block, active_resources, 1),

    {ok, UniformIndex} = gl:get_program_resource_index(Program, uniform, <<"u_color">>),
    ?assertNotEqual(16#FFFFFFFF, UniformIndex),
    {ok, <<"u_color">>} = gl:get_program_resource_name(Program, uniform, UniformIndex, 64),
    {ok, [16#8B52, 1]} =
        gl:get_program_resource(Program, uniform, UniformIndex, [type, array_size], 2),

    {ok, BlockIndex} = gl:get_program_resource_index(Program, uniform_block, <<"CanaryBlock">>),
    ?assertNotEqual(16#FFFFFFFF, BlockIndex),
    {ok, [1]} =
        gl:get_program_resource(Program, uniform_block, BlockIndex, [num_active_variables], 1),
    {ok, ActiveVariables} =
        gl:get_program_resource(Program, uniform_block, BlockIndex, [active_variables], 1),
    ?assertMatch([_], ActiveVariables),

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
