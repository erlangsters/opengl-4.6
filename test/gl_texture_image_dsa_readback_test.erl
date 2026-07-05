-module(gl_texture_image_dsa_readback_test).
-include_lib("eunit/include/eunit.hrl").

texture_image_dsa_readback_test() ->
    gl_test_context:setup_context(),

    ok = gl:pixel_store(unpack_alignment, 1),
    ok = gl:pixel_store(pack_alignment, 1),

    {ok, [Texture]} = gl:create_textures(texture_2d, 1),
    ok = gl:texture_storage_2d(Texture, 1, rgba8, 1, 1),

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
        gl:get_texture_image(Texture, 0, rgba, unsigned_byte, 4),

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
        gl:get_texture_image(Texture, 0, rgba, unsigned_byte, 4),

    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().

red_pixel() ->
    <<255, 0, 0, 255>>.

green_pixel() ->
    <<0, 255, 0, 255>>.
