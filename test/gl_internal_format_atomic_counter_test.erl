-module(gl_internal_format_atomic_counter_test).
-include_lib("eunit/include/eunit.hrl").

internal_format_atomic_counter_test() ->
    gl_test_context:setup_context(),

    {ok, [SampleCounts]} =
        gl:get_internal_format(i, renderbuffer, rgba8, num_sample_counts, 1),
    ?assert(SampleCounts >= 0),

    {ok, [SampleCounts64]} =
        gl:get_internal_format(i64, renderbuffer, rgba8, num_sample_counts, 1),
    ?assert(SampleCounts64 >= 0),

    {Program, VertexShader, FragmentShader} = create_program(),

    {ok, [1]} = gl:get_program(Program, active_atomic_counter_buffers, 1),
    {ok, [1]} =
        gl:get_active_atomic_counter_buffer(
            Program,
            0,
            atomic_counter_buffer_active_atomic_counters,
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
    <<"#version 420\n"
      "void main() {\n"
      "    gl_Position = vec4(0.0);\n"
      "}\n">>.

fragment_source() ->
    <<"#version 420\n"
      "layout(binding = 0, offset = 0) uniform atomic_uint canary_counter;\n"
      "out vec4 frag_color;\n"
      "void main() {\n"
      "    uint value = atomicCounter(canary_counter);\n"
      "    frag_color = vec4(float(value & 1u), 1.0, 0.0, 1.0);\n"
      "}\n">>.
