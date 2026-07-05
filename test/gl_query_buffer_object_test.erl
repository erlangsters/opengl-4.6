-module(gl_query_buffer_object_test).

-include_lib("eunit/include/eunit.hrl").

query_buffer_object_test() ->
    gl_test_context:setup_context(),

    {ok, [Query]} = gl:gen_queries(1),
    {ok, [Buffer]} = gl:create_buffers(1),
    try
        ok = gl:named_buffer_data(Buffer, initial_bytes(), dynamic_read),

        ok = gl:begin_query(any_samples_passed, Query),
        ok = gl:end_query(any_samples_passed),

        ok = gl:get_query_buffer_object(i, Query, Buffer, query_result, 4),
        ok = gl:get_query_buffer_object(ui, Query, Buffer, query_result, 8),
        ok = gl:get_query_buffer_object(i64, Query, Buffer, query_result, 16),
        ok = gl:get_query_buffer_object(ui64, Query, Buffer, query_result, 24),
        ok = gl:memory_barrier([query_buffer_barrier_bit]),

        Expected = result_bytes(),
        {ok, Expected} = gl:get_named_buffer_sub_data(Buffer, 0, 32)
    after
        ok = gl:delete_queries([Query]),
        ok = gl:delete_buffers([Buffer])
    end,
    {ok, no_error} = gl:get_error().

initial_bytes() ->
    binary:copy(<<16#FF>>, 32).

result_bytes() ->
    <<16#FF, 16#FF, 16#FF, 16#FF,
      0, 0, 0, 0,
      0, 0, 0, 0,
      16#FF, 16#FF, 16#FF, 16#FF,
      0, 0, 0, 0, 0, 0, 0, 0,
      0, 0, 0, 0, 0, 0, 0, 0>>.
