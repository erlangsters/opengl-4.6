%%
%% Minimal OpenGL 4.6 test context helper for the restarted generator surface.
%%
-module(gl_test_context).
-export([setup_context/0]).

setup_context() ->
    case get(?MODULE) of
        ready ->
            ok;
        _ ->
            ok = setup_context0(),
            put(?MODULE, ready),
            ok
    end.

setup_context0() ->
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

    {ok, Context} = create_context(Display, Config, [
        [
            {context_major_version, 4},
            {context_minor_version, 6}
        ],
        [
            {context_major_version, 4},
            {context_minor_version, 5}
        ]
    ]),

    ok = egl:make_current(Display, Surface, Surface, Context),
    ok = gl:glad_load_gl(),

    ok.

create_context(_Display, _Config, []) ->
    not_ok;
create_context(Display, Config, [ContextAttribs | Rest]) ->
    case egl:create_context(Display, Config, no_context, ContextAttribs) of
        {ok, Context} -> {ok, Context};
        not_ok -> create_context(Display, Config, Rest)
    end.
