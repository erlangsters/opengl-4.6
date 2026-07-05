-module(gl_pixel_readback_test).

-include_lib("eunit/include/eunit.hrl").

read_n_pixels_test() ->
    gl_test_context:setup_context(),

    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1),
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),

    ok = gl:clear_color(0.0, 1.0, 0.0, 1.0),
    ok = gl:clear([color_buffer_bit]),
    {ok, <<0, 255, 0, 255>>} = gl:read_n_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    {ok, no_error} = gl:get_error().
