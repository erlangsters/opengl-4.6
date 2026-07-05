-module(gl_copy_image_sub_data_test).
-include_lib("eunit/include/eunit.hrl").

copy_image_sub_data_test() ->
    gl_test_context:setup_context(),
    ok = gl:pixel_store(unpack_alignment, 1),
    ok = gl:pixel_store(pack_alignment, 1),

    {ok, [SrcTexture, DstTexture, RbDstTexture]} = gl:gen_textures(3),
    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),

    ok = upload_texture(SrcTexture, red_pixel()),
    ok = allocate_texture(DstTexture),
    ok = gl:copy_image_sub_data(
        SrcTexture,
        texture_2d,
        0,
        0,
        0,
        0,
        DstTexture,
        texture_2d,
        0,
        0,
        0,
        0,
        1,
        1,
        1
    ),
    ok = attach_texture(Framebuffer, DstTexture),
    {ok, <<255, 0, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = setup_green_renderbuffer(Framebuffer, Renderbuffer),
    ok = allocate_texture(RbDstTexture),
    ok = gl:copy_image_sub_data(
        Renderbuffer,
        renderbuffer,
        0,
        0,
        0,
        0,
        RbDstTexture,
        texture_2d,
        0,
        0,
        0,
        0,
        1,
        1,
        1
    ),
    ok = attach_texture(Framebuffer, RbDstTexture),
    {ok, <<0, 255, 0, 255>>} =
        gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4),

    ok = gl:bind_texture(texture_2d, none),
    ok = gl:bind_renderbuffer(renderbuffer, 0),
    ok = gl:bind_framebuffer(framebuffer, 0),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_textures([SrcTexture, DstTexture, RbDstTexture]),
    {ok, no_error} = gl:get_error().

upload_texture(Texture, Pixels) ->
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:tex_image_2d(
        texture_2d,
        0,
        rgba8,
        1,
        1,
        0,
        rgba,
        unsigned_byte,
        Pixels
    ).

allocate_texture(Texture) ->
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:tex_image_2d(
        texture_2d,
        0,
        rgba8,
        1,
        1,
        0,
        rgba,
        unsigned_byte,
        none
    ).

attach_texture(Framebuffer, Texture) ->
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
    ok.

setup_green_renderbuffer(Framebuffer, Renderbuffer) ->
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba8, 1, 1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_renderbuffer(
        framebuffer,
        color_attachment0,
        renderbuffer,
        Renderbuffer
    ),
    ok = gl:draw_buffers([color_attachment0]),
    {ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer),
    ok = gl:clear_color(0.0, 1.0, 0.0, 1.0),
    ok = gl:clear([color_buffer_bit]).

red_pixel() ->
    <<255, 0, 0, 255>>.
