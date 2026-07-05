-module(gl_query_object_readback_test).
-include_lib("eunit/include/eunit.hrl").

query_object_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Query]} = gl:gen_queries(1),
    ok = gl:begin_query(any_samples_passed, Query),
    ok = gl:end_query(any_samples_passed),

    {ok, [0]} = gl:get_query_object(i, Query, query_result, 1),
    {ok, [0]} = gl:get_query_object(ui, Query, query_result, 1),
    {ok, [0]} = gl:get_query_object(i64, Query, query_result, 1),
    {ok, [0]} = gl:get_query_object(ui64, Query, query_result, 1),

    ok = gl:delete_queries([Query]),
    {ok, no_error} = gl:get_error().
