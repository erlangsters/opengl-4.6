%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_texture_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test some functions related to OpenGL textures.
%%
%% It tests blabla...
%%
%% It's not a thorough test, but it checks that the basic functionality
%% works as expected.
%%
-include("../include/gl.hrl").

% gl_texture_test() ->
%     test_gl:setup_context(),

%     {ok, [Texture]} = gl:gen_textures(1),
%     ok = gl:bind_texture(texture_2d, Texture),

%     gl:tex_parameter(i, texture_2d, texture_min_filter, ?GL_NEAREST),
%     gl:tex_parameter(i, texture_2d, texture_mag_filter, ?GL_NEAREST),
%     gl:tex_parameter(i, texture_2d, texture_wrap_s, ?GL_CLAMP_TO_EDGE),
%     gl:tex_parameter(i, texture_2d, texture_wrap_t, ?GL_CLAMP_TO_EDGE),

%     gl:pixel_store(i, unpack_alignment, 1),
%     gl:pixel_store(i, pack_alignment, 1),

%     Width = 3,
%     Height = 2,
%     Pixels = [
%         255, 0, 0, 255, 0, 0,    % Row 0: Red
%         0, 255, 0, 0, 255, 0,    % Row 1: Green
%         0, 0, 255, 0, 0, 255     % Row 2: Blue
%     ],
%     RawPixels = <<<<Pixel:8/little-signed-integer>> || Pixel <- Pixels>>,
%     ok = gl:tex_image_2d(
%         texture_2d, 0, rgb8,
%         Width, Height, 0,
%         rgb, unsigned_byte,
%         RawPixels
%     ),

%     {ok, RawPixels} = gl:get_tex_image(
%         texture_2d, 0,
%         rgb, unsigned_byte,
%         length(Pixels)
%     ),

%     ok = gl:delete_textures(1, [Texture]),

%     ok.

% gl_tex_parameter_test() ->
%     test_gl:setup_context(),

%     {ok, [Texture]} = gl:gen_textures(1),
%     ok = gl:bind_texture(texture_2d, Texture),

%     gl:tex_parameter(f, texture_2d, texture_lod_bias, -0.5),
%     {ok, [-0.5]} = gl:get_tex_parameter(f, texture_2d, texture_lod_bias, 1),

%     gl:tex_parameter(i, texture_2d, texture_min_filter, ?GL_LINEAR_MIPMAP_LINEAR),
%     {ok, [?GL_LINEAR_MIPMAP_LINEAR]} = gl:get_tex_parameter(i, texture_2d, texture_min_filter, 1),

%     BorderColor = [1.0, 0.0, 0.0, 1.0],
%     gl:tex_parameter(f, texture_2d, texture_border_color, BorderColor),
%     {ok, BorderColor} = gl:get_tex_parameter(f, texture_2d, texture_border_color, 4),

%     SwizzleMask = [?GL_RED, ?GL_GREEN, ?GL_BLUE, ?GL_ALPHA],
%     gl:tex_parameter(i, texture_2d, texture_swizzle_rgba, SwizzleMask),
%     {ok, SwizzleMask} = gl:get_tex_parameter(i, texture_2d, texture_swizzle_rgba, 4),

%     gl:tex_parameter_i(i, texture_2d, texture_compare_mode, [?GL_COMPARE_REF_TO_TEXTURE]),
%     {ok, [?GL_COMPARE_REF_TO_TEXTURE]} = gl:get_tex_parameter_i(i, texture_2d, texture_compare_mode, 1),

%     gl:tex_parameter_i(ui, texture_2d, depth_stencil_texture_mode, [?GL_STENCIL_INDEX]),
%     {ok, [?GL_STENCIL_INDEX]} = gl:get_tex_parameter_i(ui, texture_2d, depth_stencil_texture_mode, 1),

%     ok = gl:delete_textures(1, [Texture]),

%     ok.

gl_texture_parameter_test() ->
    test_gl:setup_context(),

    {ok, [Texture]} = gl:gen_textures(1),
    ok = gl:bind_texture(texture_2d, Texture),
    
    gl:texture_parameter(f, Texture, texture_lod_bias, -0.5),
    {ok, [-0.5]} = gl:get_texture_parameter(f, Texture, texture_lod_bias, 1),

    gl:texture_parameter(i, Texture, texture_min_filter, ?GL_LINEAR_MIPMAP_LINEAR),
    {ok, [?GL_LINEAR_MIPMAP_LINEAR]} = gl:get_texture_parameter(i, Texture, texture_min_filter, 1),

    BorderColor = [1.0, 0.0, 0.0, 1.0],
    gl:texture_parameter(f, Texture, texture_border_color, BorderColor),
    {ok, BorderColor} = gl:get_texture_parameter(f, Texture, texture_border_color, 4),

    SwizzleMask = [?GL_RED, ?GL_GREEN, ?GL_BLUE, ?GL_ALPHA],
    gl:texture_parameter(i, Texture, texture_swizzle_rgba, SwizzleMask),
    {ok, SwizzleMask} = gl:get_texture_parameter(i, Texture, texture_swizzle_rgba, 4),

    gl:texture_parameter_i(i, Texture, texture_compare_mode, [?GL_COMPARE_REF_TO_TEXTURE]),
    {ok, [?GL_COMPARE_REF_TO_TEXTURE]} = gl:get_texture_parameter_i(i, Texture, texture_compare_mode, 1),

    gl:texture_parameter_i(ui, Texture, depth_stencil_texture_mode, [?GL_STENCIL_INDEX]),
    {ok, [?GL_STENCIL_INDEX]} = gl:get_texture_parameter_i(ui, Texture, depth_stencil_texture_mode, 1),

    ok = gl:delete_textures(1, [Texture]),

    ok.
