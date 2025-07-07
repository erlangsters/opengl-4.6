%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_vector_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test the OpenGL vector part of the binding.
%%
%% It tests the correctness of the generated pack/unpack macros and functions
%% for vectors.
%%
-include("../include/gl.hrl").

gl_vector_test() ->
    Vector1 = {a},
    RawVector1 = ?GL_PACK_VECTOR_1(Vector1),
    [a] = RawVector1,
    Vector1 = ?GL_UNPACK_VECTOR_1(RawVector1),

    Vector2 = {a, b},
    RawVector2 = ?GL_PACK_VECTOR_2(Vector2),
    [a, b] = RawVector2,
    Vector2 = ?GL_UNPACK_VECTOR_2(RawVector2),

    Vector3 = {a, b, c},
    RawVector3 = ?GL_PACK_VECTOR_3(Vector3),
    [a, b, c] = RawVector3,
    Vector3 = ?GL_UNPACK_VECTOR_3(RawVector3),

    Vector4 = {a, b, c, d},
    RawVector4 = ?GL_PACK_VECTOR_4(Vector4),
    [a, b, c, d] = RawVector4,
    Vector4 = ?GL_UNPACK_VECTOR_4(RawVector4),

    ok.
