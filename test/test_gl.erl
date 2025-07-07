%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(test_gl).
-export([setup_context/0]).

setup_context() ->
    Display = egl:get_display(default_display),
    {ok, {_, _}} = egl:initialize(Display),

    ConfigAttribs = [
        {surface_type, [pbuffer_bit]},
        {renderable_type, [opengl_bit]}
    ],
    {ok, Configs} = egl:choose_config(Display, ConfigAttribs),
    Config = hd(Configs),

    SurfaceAttribs = [
        {width, 1},
        {height, 1}
    ],
    {ok, Surface} = egl:create_pbuffer_surface(Display, Config, SurfaceAttribs),

    egl:bind_api(opengl_api),

    ContextAttribs = [
        {context_major_version, 4},
        {context_minor_version, 6}
% EGL_CONTEXT_OPENGL_PROFILE_MASK, EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT,
    ],
    {ok, Context} =
        egl:create_context(Display, Config, no_context, ContextAttribs),

    ok = egl:make_current(Display, Surface, Surface, Context),

    ok = gl:glad_load_gl(),

    timer:sleep(100),
    {ok, Version} = gl:get_string(version),
    io:format(user, "OpenGL version: ~p~n", [Version]),

    ok.
