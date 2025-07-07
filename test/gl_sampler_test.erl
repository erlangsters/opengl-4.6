%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_sampler_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test some functions related to OpenGL samplers.
%%
%% It tests blabla...
%%
%% It's not a thorough test, but it checks that the basic functionality
%% works as expected.
%%
-include("../include/gl.hrl").

gl_sampler_parameter_test() ->
    test_gl:setup_context(),

    {ok, [Sampler]} = gl:gen_samplers(1),
    
    gl:sampler_parameter(f, Sampler, texture_lod_bias, -0.5),
    {ok, [-0.5]} = gl:get_sampler_parameter(f, Sampler, texture_lod_bias, 1),

    % gl:sampler_parameter(i, Sampler, texture_min_filter, ?GL_LINEAR_MIPMAP_LINEAR),
    % {ok, [?GL_LINEAR_MIPMAP_LINEAR]} = gl:get_sampler_parameter(i, Sampler, texture_min_filter, 1),

    BorderColor = [1.0, 0.0, 0.0, 1.0],
    gl:sampler_parameter(f, Sampler, texture_border_color, BorderColor),
    {ok, BorderColor} = gl:get_sampler_parameter(f, Sampler, texture_border_color, 4),

    % SwizzleMask = [?GL_RED, ?GL_GREEN, ?GL_BLUE, ?GL_ALPHA],
    % gl:sampler_parameter(i, Sampler, texture_swizzle_rgba, SwizzleMask),
    % {ok, SwizzleMask} = gl:get_sampler_parameter(i, Sampler, texture_swizzle_rgba, 4),

    CompareMode = [?GL_COMPARE_REF_TO_TEXTURE],
    gl:sampler_parameter_i(i, Sampler, texture_compare_mode, CompareMode),
    {ok, CompareMode} = gl:get_sampler_parameter_i(i, Sampler, texture_compare_mode, 1),

    % DepthStencilMode = [?GL_STENCIL_INDEX],
    % gl:sampler_parameter_i(ui, Sampler, depth_stencil_texture_mode, DepthStencilMode),
    % {ok, DepthStencilMode} = gl:get_sampler_parameter_i(ui, Sampler, depth_stencil_texture_mode, 1),

    ok = gl:delete_samplers(1, [Sampler]),

    ok.
