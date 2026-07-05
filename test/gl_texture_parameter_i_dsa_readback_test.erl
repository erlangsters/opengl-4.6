-module(gl_texture_parameter_i_dsa_readback_test).
-include_lib("eunit/include/eunit.hrl").

texture_parameter_i_dsa_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:create_textures(texture_2d, 1),

    ok = gl:texture_parameter_i(i, Texture, texture_border_color, [1, 2, 3, 4]),
    {ok, [1, 2, 3, 4]} =
        gl:get_texture_parameter_i(i, Texture, texture_border_color, 4),

    ok = gl:texture_parameter_i(ui, Texture, texture_border_color, [5, 6, 7, 8]),
    {ok, [5, 6, 7, 8]} =
        gl:get_texture_parameter_i(ui, Texture, texture_border_color, 4),

    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().
