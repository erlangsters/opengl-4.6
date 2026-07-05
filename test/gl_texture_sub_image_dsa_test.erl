-module(gl_texture_sub_image_dsa_test).
-include_lib("eunit/include/eunit.hrl").

texture_sub_image_dsa_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:create_textures(texture_2d, 1),
    ok = gl:texture_storage_2d(Texture, 1, rgba8, 1, 1),

    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_texture_2d(
        framebuffer,
        color_attachment0,
        texture_2d,
        Texture,
        0
    ),
    ok = gl:draw_buffers([color_attachment0]),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),

    ok = gl:texture_sub_image_2d(
        Texture,
        0,
        0,
        0,
        1,
        1,
        rgba,
        unsigned_byte,
        red_pixel()
    ),
    {ok, <<255, 0, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:texture_sub_image_2d(
        Texture,
        0,
        0,
        0,
        1,
        1,
        rgba,
        unsigned_byte,
        green_pixel()
    ),
    {ok, <<0, 255, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().

red_pixel() ->
    <<255, 0, 0, 255>>.

green_pixel() ->
    <<0, 255, 0, 255>>.
