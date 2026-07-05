-module(gl_texture_image_upload_test).
-include_lib("eunit/include/eunit.hrl").

texture_image_upload_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:tex_image_2d(
        texture_2d,
        0,
        rgba,
        1,
        1,
        0,
        rgba,
        unsigned_byte,
        red_pixel()
    ),

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
    {ok, <<255, 0, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:tex_image_2d(
        texture_2d,
        0,
        rgba,
        1,
        1,
        0,
        rgba,
        unsigned_byte,
        none
    ),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),
    ok = gl:tex_sub_image_2d(
        texture_2d,
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

    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().

red_pixel() ->
    <<255, 0, 0, 255>>.

green_pixel() ->
    <<0, 255, 0, 255>>.
