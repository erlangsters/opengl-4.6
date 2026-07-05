-module(gl_texture_parameter_i_readback_test).
-include_lib("eunit/include/eunit.hrl").

texture_parameter_i_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),

    ok = gl:tex_parameter_i(i, texture_2d, texture_border_color, [1, 2, 3, 4]),
    {ok, [1, 2, 3, 4]} =
        gl:get_tex_parameter_i(i, texture_2d, texture_border_color, 4),

    ok = gl:tex_parameter_i(ui, texture_2d, texture_border_color, [5, 6, 7, 8]),
    {ok, [5, 6, 7, 8]} =
        gl:get_tex_parameter_i(ui, texture_2d, texture_border_color, 4),

    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().
