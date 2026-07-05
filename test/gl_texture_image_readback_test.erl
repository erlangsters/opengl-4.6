-module(gl_texture_image_readback_test).
-include_lib("eunit/include/eunit.hrl").

tex_image_readback_test() ->
    gl_test_context:setup_context(),

    ok = gl:pixel_store(unpack_alignment, 1),
    ok = gl:pixel_store(pack_alignment, 1),

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
    {ok, <<255, 0, 0, 255>>} =
        gl:get_tex_image(texture_2d, 0, rgba, unsigned_byte, 4),

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
        gl:get_tex_image(texture_2d, 0, rgba, unsigned_byte, 4),

    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().

red_pixel() ->
    <<255, 0, 0, 255>>.

green_pixel() ->
    <<0, 255, 0, 255>>.
