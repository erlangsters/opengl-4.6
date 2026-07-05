-module(gl_texture_level_parameter_readback_test).
-include_lib("eunit/include/eunit.hrl").

tex_level_parameter_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),
    ok = gl:tex_image_2d(
        texture_2d,
        0,
        rgba,
        2,
        1,
        0,
        rgba,
        unsigned_byte,
        none
    ),

    {ok, [2]} =
        gl:get_tex_level_parameter(i, texture_2d, 0, texture_width, 1),
    {ok, [1.0]} =
        gl:get_tex_level_parameter(f, texture_2d, 0, texture_height, 1),

    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().
