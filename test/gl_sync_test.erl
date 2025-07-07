%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_sync_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test some functions related to OpenGL syncs.
%%
%% It tests blabla...
%%
%% It's not a thorough test, but it checks that the basic functionality
%% works as expected.
%%
-include("../include/gl.hrl").

gl_sync_test() ->
    test_gl:setup_context(),

    {ok, Sync} = gl:fence_sync(sync_gpu_commands_complete, [none]),
    {ok, true} = gl:is_sync(Sync),

    % ok = case gl:client_wait_sync(Sync, sync_flush_commands_bit, 1000000000) of
    %     already_signaled ->
    %         ok;
    %     timeout_expired ->
    %         ok;
    %     condition_satisfied ->
    %         ok;
    %     wait_failed ->
    %         ok
    % end,

    % ok = gl:wait_sync(Sync, 0, timeout_ignored),

    % {ok, [V]} = gl:get_sync(Sync, sync_status, 1),
    % GL_SIGNALED % XXX

    ok = gl:delete_sync(Sync),
    {ok, false} = gl:is_sync(Sync),

    ok.
