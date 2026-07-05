-module(gl_command_state_readback_test).

-include_lib("eunit/include/eunit.hrl").

command_state_readback_test() ->
    gl_test_context:setup_context(),

    ok = non_indexed_state_readback_check(),
    ok = indexed_state_readback_check(),
    ok = multisample_readback_check(),
    {ok, no_error} = gl:get_error().

non_indexed_state_readback_check() ->
    ok = gl:depth_mask(false),
    {ok, [false]} = gl:get_boolean(depth_writemask, 1),
    ok = gl:depth_mask(true),
    {ok, [true]} = gl:get_boolean(depth_writemask, 1),

    ok = gl:line_width(1.0),
    {ok, [1.0]} = gl:get_float(line_width, 1),
    {ok, [1.0]} = gl:get_double(line_width, 1),

    ok = gl:pixel_store(pack_alignment, 1),
    {ok, [1]} = gl:get_integer(pack_alignment, 1),

    {ok, [MaxElementIndex]} = gl:get_integer64(max_element_index, 1),
    ?assert(MaxElementIndex >= 0),
    ok.

indexed_state_readback_check() ->
    ok = gl:disable(blend, 0),
    {ok, [false]} = gl:get_boolean(blend, 0, 1),
    ok = gl:enable(blend, 0),
    {ok, [true]} = gl:get_boolean(blend, 0, 1),
    ok = gl:disable(blend, 0),

    {ok, [Buffer]} = gl:gen_buffers(1),
    try
        ok = gl:bind_buffer(transform_feedback_buffer, Buffer),
        ok = gl:buffer_data(transform_feedback_buffer, 16, dynamic_draw),
        ok = gl:bind_buffer_range(transform_feedback_buffer, 0, Buffer, 0, 16),

        {ok, [Buffer]} =
            gl:get_integer(transform_feedback_buffer_binding, 0, 1),
        {ok, [16]} =
            gl:get_integer64(transform_feedback_buffer_size, 0, 1)
    after
        ok = gl:delete_buffers([Buffer])
    end,

    ok = gl:viewport(0, {0.0, 0.0, 2.0, 3.0}),
    {ok, [+0.0, +0.0, 2.0, 3.0]} = gl:get_float(viewport, 0, 4),
    {ok, [+0.0, +0.0, 2.0, 3.0]} = gl:get_double(viewport, 0, 4),
    ok.

multisample_readback_check() ->
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    try
        ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
        ok = gl:renderbuffer_storage_multisample(renderbuffer, 1, rgba4, 1, 1),
        ok = gl:bind_framebuffer(framebuffer, Framebuffer),
        ok = gl:framebuffer_renderbuffer(
            framebuffer,
            color_attachment0,
            renderbuffer,
            Renderbuffer
        ),
        {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),
        {ok, [SampleCount]} = gl:get_integer(samples, 1),
        ?assert(SampleCount > 0),

        {ok, [X, Y]} = gl:get_multisample(sample_position, 0, 2),
        ?assert(X >= 0.0),
        ?assert(X =< 1.0),
        ?assert(Y >= 0.0),
        ?assert(Y =< 1.0)
    after
        ok = gl:delete_framebuffers([Framebuffer]),
        ok = gl:delete_renderbuffers([Renderbuffer])
    end,
    ok.
