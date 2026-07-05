-module(gl_vertex_transform_readback_test).
-include_lib("eunit/include/eunit.hrl").

vertex_and_transform_state_readback_test() ->
    gl_test_context:setup_context(),

    ok = vertex_attrib_readback_check(),
    ok = transform_feedback_readback_check(),
    {ok, no_error} = gl:get_error().

vertex_attrib_readback_check() ->
    ok = gl:vertex_attrib(f, 0, {1.0, 0.0, 0.0, 1.0}),
    {ok, [1.0, +0.0, +0.0, 1.0]} =
        gl:get_vertex_attrib(f, 0, current_vertex_attrib, 4),

    ok = gl:vertex_attrib(d, 1, {2.0, 3.0, 4.0, 5.0}),
    {ok, [2.0, 3.0, 4.0, 5.0]} =
        gl:get_vertex_attrib(d, 1, current_vertex_attrib, 4),

    ok = gl:enable_vertex_attrib_array(0),
    {ok, [1]} = gl:get_vertex_attrib(i, 0, vertex_attrib_array_enabled, 1),
    ok = gl:disable_vertex_attrib_array(0),

    ok = gl:vertex_attrib_i(i, 2, {1, 2, 3, 4}),
    {ok, [1, 2, 3, 4]} =
        gl:get_vertex_attrib_i(i, 2, current_vertex_attrib, 4),

    ok = gl:vertex_attrib_i(ui, 3, {5, 6, 7, 8}),
    {ok, [5, 6, 7, 8]} =
        gl:get_vertex_attrib_i(ui, 3, current_vertex_attrib, 4),

    ok = gl:vertex_attrib_l(d, 4, {1.0, 2.0, 3.0, 4.0}),
    {ok, [1.0, 2.0, 3.0, 4.0]} =
        gl:get_vertex_attrib_l(4, current_vertex_attrib, 4),
    ok.

transform_feedback_readback_check() ->
    {ok, [Feedback]} = gl:create_transform_feedbacks(1),
    {ok, [Buffer]} = gl:create_buffers(1),
    ok = gl:named_buffer_data(Buffer, 16, dynamic_draw),
    ok = gl:transform_feedback_buffer_range(Feedback, 0, Buffer, 0, 16),

    {ok, [0]} = gl:get_transform_feedback(Feedback, transform_feedback_active, 1),
    {ok, [0]} = gl:get_transform_feedback(Feedback, transform_feedback_paused, 1),
    {ok, [Buffer]} =
        gl:get_transform_feedback(i, Feedback, transform_feedback_buffer_binding, 0, 1),
    {ok, [16]} =
        gl:get_transform_feedback(i64, Feedback, transform_feedback_buffer_size, 0, 1),

    ok = gl:delete_buffers([Buffer]),
    ok = gl:delete_transform_feedbacks([Feedback]).
