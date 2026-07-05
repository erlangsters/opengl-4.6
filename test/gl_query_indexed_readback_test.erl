-module(gl_query_indexed_readback_test).

-include_lib("eunit/include/eunit.hrl").

query_indexed_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Query]} = gl:gen_queries(1),
    {ok, [0]} = gl:get_query(primitives_generated, 0, current_query, 1),

    ok = gl:begin_query(primitives_generated, 0, Query),
    {ok, [Query]} = gl:get_query(primitives_generated, 0, current_query, 1),
    ok = gl:end_query(primitives_generated, 0),

    {ok, [0]} = gl:get_query(primitives_generated, 0, current_query, 1),

    ok = gl:delete_queries([Query]),
    {ok, no_error} = gl:get_error().
