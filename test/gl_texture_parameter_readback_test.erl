-module(gl_texture_parameter_readback_test).
-include_lib("eunit/include/eunit.hrl").

texture_parameter_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),

    ok = gl:tex_parameter(f, texture_2d, texture_min_lod, 1.0),
    {ok, [1.0]} =
        gl:get_tex_parameter(f, texture_2d, texture_min_lod, 1),

    ok = gl:tex_parameter(i, texture_2d, texture_wrap_s, [16#812F]),
    {ok, [16#812F]} =
        gl:get_tex_parameter(i, texture_2d, texture_wrap_s, 1),

    ok = gl:bind_texture(texture_2d, none),
    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().
