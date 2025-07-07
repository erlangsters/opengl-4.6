%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_shader_program_test).
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

-define(VERTEX_SHADER_SRC, """
""").

-define(FRAGMENT_SHADER_SRC, """
""").

gl_shader_program_test() ->
    test_gl:setup_context(),

    {ok, VertexShader} = gl:create_shader(vertex_shader),
    gl:shader_source(VertexShader, [?VERTEX_SHADER_SRC]),
    gl:compile_shader(VertexShader),
    % % XXX: verify compilation status

    {ok, FragmentShader} = gl:create_shader(fragment_shader),
    gl:shader_source(FragmentShader, [?FRAGMENT_SHADER_SRC]),
    gl:compile_shader(FragmentShader),
    % XXX: verify compilation status

    {ok, Program} = gl:create_program(),
    gl:attach_shader(Program, VertexShader),
    gl:attach_shader(Program, FragmentShader),
    gl:link_program(Program),
    % XXX: verify linking status

    % XXX:
    gl:delete_shader(VertexShader),
    gl:delete_shader(FragmentShader),


    ok.
