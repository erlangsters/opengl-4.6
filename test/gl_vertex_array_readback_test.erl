-module(gl_vertex_array_readback_test).

-include_lib("eunit/include/eunit.hrl").

vertex_array_state_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Array]} = gl:create_vertex_arrays(1),
    {ok, [Buffer]} = gl:create_buffers(1),
    try
        ok = gl:named_buffer_data(Buffer, 32, static_draw),

        ok = gl:vertex_array_element_buffer(Array, Buffer),
        {ok, [Buffer]} =
            gl:get_vertex_array(Array, element_array_buffer_binding, 1),

        ok = gl:vertex_array_vertex_buffer(Array, 0, Buffer, 4, 8),
        ok = gl:vertex_array_binding_divisor(Array, 0, 3),
        ok = gl:vertex_array_attrib_binding(Array, 0, 0),
        ok = gl:vertex_array_attrib_format(Array, 0, 2, float, false, 0),
        ok = gl:enable_vertex_array_attrib(Array, 0),

        {ok, [1]} =
            gl:get_vertex_array(i, Array, 0, vertex_attrib_array_enabled, 1),
        {ok, [0]} =
            gl:get_vertex_array(i, Array, 0, vertex_attrib_binding, 1),
        {ok, [Buffer]} =
            gl:get_vertex_array(i, Array, 0, vertex_binding_buffer, 1),
        {ok, [8]} =
            gl:get_vertex_array(i, Array, 0, vertex_binding_stride, 1),
        {ok, [3]} =
            gl:get_vertex_array(i, Array, 0, vertex_binding_divisor, 1),
        {ok, [4]} =
            gl:get_vertex_array(i64, Array, 0, vertex_binding_offset, 1)
    after
        ok = gl:delete_vertex_arrays([Array]),
        ok = gl:delete_buffers([Buffer])
    end,
    {ok, no_error} = gl:get_error().
