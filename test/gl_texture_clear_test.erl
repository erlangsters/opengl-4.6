-module(gl_texture_clear_test).
-include_lib("eunit/include/eunit.hrl").

clear_texture_test() ->
    gl_test_context:setup_context(),

    ok = gl:pixel_store(unpack_alignment, 1),
    ok = gl:pixel_store(pack_alignment, 1),

    {ok, [Texture]} = gl:create_textures(texture_2d, 1),
    ok = gl:texture_storage_2d(Texture, 1, rgba8, 2, 1),

    Red = red_pixel(),
    Green = green_pixel(),
    Zero = zero_pixel(),

    ok = gl:clear_tex_image(Texture, 0, rgba, unsigned_byte, Red),
    {ok, Red} =
        gl:get_texture_sub_image(
            Texture,
            0,
            0,
            0,
            0,
            1,
            1,
            1,
            rgba,
            unsigned_byte,
            4
        ),
    {ok, Red} =
        gl:get_texture_sub_image(
            Texture,
            0,
            1,
            0,
            0,
            1,
            1,
            1,
            rgba,
            unsigned_byte,
            4
        ),

    ok = gl:clear_tex_sub_image(
        Texture,
        0,
        1,
        0,
        0,
        1,
        1,
        1,
        rgba,
        unsigned_byte,
        Green
    ),
    {ok, Red} =
        gl:get_texture_sub_image(
            Texture,
            0,
            0,
            0,
            0,
            1,
            1,
            1,
            rgba,
            unsigned_byte,
            4
        ),
    {ok, Green} =
        gl:get_texture_sub_image(
            Texture,
            0,
            1,
            0,
            0,
            1,
            1,
            1,
            rgba,
            unsigned_byte,
            4
        ),

    ok = gl:clear_tex_image(Texture, 0, rgba, unsigned_byte, none),
    {ok, Zero} =
        gl:get_texture_sub_image(
            Texture,
            0,
            0,
            0,
            0,
            1,
            1,
            1,
            rgba,
            unsigned_byte,
            4
        ),
    {ok, Zero} =
        gl:get_texture_sub_image(
            Texture,
            0,
            1,
            0,
            0,
            1,
            1,
            1,
            rgba,
            unsigned_byte,
            4
        ),

    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().

red_pixel() ->
    <<255, 0, 0, 255>>.

green_pixel() ->
    <<0, 255, 0, 255>>.

zero_pixel() ->
    <<0, 0, 0, 0>>.
