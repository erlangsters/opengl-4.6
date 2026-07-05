-module(gl_texture_parameter_dsa_readback_test).
-include_lib("eunit/include/eunit.hrl").

texture_parameter_dsa_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Texture]} = gl:create_textures(texture_2d, 1),

    ok = gl:texture_parameter(f, Texture, texture_min_lod, 1.0),
    {ok, [1.0]} =
        gl:get_texture_parameter(f, Texture, texture_min_lod, 1),

    ok = gl:texture_parameter(i, Texture, texture_wrap_s, [16#812F]),
    {ok, [16#812F]} =
        gl:get_texture_parameter(i, Texture, texture_wrap_s, 1),

    ok = gl:delete_textures([Texture]),
    {ok, no_error} = gl:get_error().
