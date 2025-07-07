%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_query_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test some functions related to OpenGL queries.
%%
%% It tests blabla...
%%
%% It's not a thorough test, but it checks that the basic functionality
%% works as expected.
%%
-include("../include/gl.hrl").

gl_query_test() ->
    test_gl:setup_context(),


    ok.
