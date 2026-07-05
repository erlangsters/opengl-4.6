-module(gl_program_pipeline_readback_test).
-include_lib("eunit/include/eunit.hrl").

program_pipeline_parameter_readback_test() ->
    gl_test_context:setup_context(),

    {ok, VertexProgram} = gl:create_shader_program(vertex_shader, [vertex_source()]),
    ok = assert_program_linked(VertexProgram),
    {ok, FragmentProgram} =
        gl:create_shader_program(fragment_shader, [fragment_source()]),
    ok = assert_program_linked(FragmentProgram),

    {ok, [Pipeline]} = gl:gen_program_pipelines(1),
    ok = gl:bind_program_pipeline(Pipeline),
    ok = gl:use_program_stages(Pipeline, [vertex_shader_bit], VertexProgram),
    ok = gl:use_program_stages(Pipeline, [fragment_shader_bit], FragmentProgram),
    ok = gl:active_shader_program(Pipeline, FragmentProgram),
    ok = gl:validate_program_pipeline(Pipeline),
    ok = assert_pipeline_valid(Pipeline),

    {ok, [FragmentProgram]} =
        gl:get_program_pipeline(Pipeline, active_program, 1),
    {ok, [InfoLogLength]} =
        gl:get_program_pipeline(Pipeline, info_log_length, 1),
    ?assert(is_integer(InfoLogLength)),
    ?assert(InfoLogLength >= 0),

    ok = gl:delete_program_pipelines([Pipeline]),
    ok = gl:delete_program(VertexProgram),
    ok = gl:delete_program(FragmentProgram),
    {ok, no_error} = gl:get_error().

assert_program_linked(Program) ->
    case gl:get_program_link_status(Program) of
        {ok, true} ->
            ok;
        {ok, false} ->
            {ok, InfoLog} = gl:get_program_info_log(Program, 1024),
            ?assertEqual({program_link_failed, InfoLog}, ok)
    end.

assert_pipeline_valid(Pipeline) ->
    case gl:get_program_pipeline_validation_status(Pipeline) of
        {ok, true} ->
            ok;
        {ok, false} ->
            {ok, InfoLog} = gl:get_program_pipeline_info_log(Pipeline, 1024),
            ?assertEqual({program_pipeline_validation_failed, InfoLog}, ok)
    end.

vertex_source() ->
    <<"#version 140\n"
      "void main() { gl_Position = vec4(0.0, 0.0, 0.0, 1.0); }\n">>.

fragment_source() ->
    <<"#version 140\n"
      "out vec4 frag_color;\n"
      "void main() { frag_color = vec4(0.0, 1.0, 0.0, 1.0); }\n">>.
