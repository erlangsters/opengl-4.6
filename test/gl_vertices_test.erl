%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_vertices_test).
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

test_vertex_attrib_integer() ->
    ok.

gl_vertices_test() ->
    test_gl:setup_context(),

    ok = gl:disable_vertex_attrib_array(1),

    % ok = gl:vertex_attrib(i, 1, [{1, 2, 3, 4}]),
    % {ok, [1, 2, 3, 4]} = gl:get_vertex_attrib(i, 1, current_vertex_attrib, 4),

    % Values2 = [{1, 2, 3, 4}, {5, 6, 7, 8}],
    % ok = gl:vertex_attrib(i, 1, Values2),
    % {ok, [1, 2, 3, 4, 5, 6, 7, 8]} = gl:get_vertex_attrib(i, 1, current_vertex_attrib, 8),

    % ok = gl:vertex_attrib(f, 1, {1.0, 0.0, 0.0, 1.0}),
    % {ok, [1.0, +0.0, +0.0, 1.0]} = gl:get_vertex_attrib(f, 1, current_vertex_attrib, 4),



    ok.


% // Set a constant attribute (red color)
% glDisableVertexAttribArray(1); // Ensure attribute 1 is not VBO-backed
% glVertexAttrib4f(1, 1.0, 0.0, 0.0, 1.0);

% // Retrieve it later
% float color[4];
% glGetVertexAttribfv(1, GL_CURRENT_VERTEX_ATTRIB, color);

% // Verify
% printf("Color: R=%.1f, G=%.1f, B=%.1f, A=%.1f\n",
%        color[0], color[1], color[2], color[3]);
