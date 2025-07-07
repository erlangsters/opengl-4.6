%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_buffer_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test some functions related to OpenGL buffers.
%%
%% It tests blabla...
%%
%% It's not a thorough test, but it checks that the basic functionality
%% works as expected.
%%
-include("../include/gl.hrl").

gl_buffer_test() ->
    test_gl:setup_context(),

    {ok, [Buffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(array_buffer, Buffer),

    ok = gl:buffer_data(array_buffer, 6, <<1, 2, 3, 4, 5, 6>>, static_draw),
    ok = gl:buffer_sub_data(array_buffer, 2, 2, <<4, 3>>),
    {ok, <<1, 2, 4, 3, 5, 6>>} = gl:get_buffer_sub_data(array_buffer, 0, 6),

    ok = gl:delete_buffers(1, [Buffer]),

    ok.
