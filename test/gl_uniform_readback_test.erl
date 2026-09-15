-module(gl_uniform_readback_test).
-include_lib("eunit/include/eunit.hrl").

uniform_readback_test() ->
    gl_test_context:setup_context(),

    {Program, VertexShader, FragmentShader} = create_program(),
    ok = gl:use_program(Program),

    {ok, FloatLocation} = gl:get_uniform_location(Program, <<"u_float_values">>),
    {ok, IntLocation} = gl:get_uniform_location(Program, <<"u_int_values">>),
    {ok, UintLocation} = gl:get_uniform_location(Program, <<"u_uint_values">>),
    {ok, DoubleLocation} = gl:get_uniform_location(Program, <<"u_double_values">>),
    ?assert(FloatLocation >= 0),
    ?assert(IntLocation >= 0),
    ?assert(UintLocation >= 0),
    ?assert(DoubleLocation >= 0),

    ok = gl:uniform(f, FloatLocation, {0.25, 0.5, 0.75, 1.0}),
    ok = gl:uniform(i, IntLocation, {-1, 2, -3, 4}),
    ok = gl:uniform(ui, UintLocation, {1, 2, 3, 4}),
    ok = gl:uniform(d, DoubleLocation, {0.125, 0.25, 0.5, 1.0}),

    {ok, [0.25, 0.5, 0.75, 1.0]} =
        gl:get_uniform(f, Program, FloatLocation, 4),
    {ok, [-1, 2, -3, 4]} =
        gl:get_uniform(i, Program, IntLocation, 4),
    {ok, [1, 2, 3, 4]} =
        gl:get_uniform(ui, Program, UintLocation, 4),
    {ok, [0.125, 0.25, 0.5, 1.0]} =
        gl:get_uniform(d, Program, DoubleLocation, 4),

    ok = gl:use_program(none),
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
    <<"#version 400\n"
      "void main() { gl_Position = vec4(0.0, 0.0, 0.0, 1.0); }\n">>.

fragment_source() ->
    <<"#version 400\n"
      "uniform vec4 u_float_values;\n"
      "uniform ivec4 u_int_values;\n"
      "uniform uvec4 u_uint_values;\n"
      "uniform dvec4 u_double_values;\n"
      "out vec4 frag_color;\n"
      "void main() {\n"
      "    frag_color = u_float_values +\n"
      "        vec4(u_int_values) * 0.001 +\n"
      "        vec4(u_uint_values) * 0.001 +\n"
      "        vec4(u_double_values) * 0.001;\n"
      "}\n">>.
