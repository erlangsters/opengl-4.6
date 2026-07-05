-module(gl_texture_level_parameter_dsa_readback_test).
-include_lib("eunit/include/eunit.hrl").

texture_level_parameter_dsa_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:create_textures(texture_2d, 1),
    ok = gl:texture_storage_2d(Texture, 1, rgba8, 2, 1),

    {ok, [2]} =
        gl:get_texture_level_parameter(i, Texture, 0, texture_width, 1),
    {ok, [1.0]} =
        gl:get_texture_level_parameter(f, Texture, 0, texture_height, 1),

    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().
