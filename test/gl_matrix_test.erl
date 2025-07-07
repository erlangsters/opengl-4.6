%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_matrix_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test the OpenGL matrix part of the binding.
%%
%% It tests the correctness of the generated pack/unpack macros and functions
%% for matrices.
%%
-include("../include/gl.hrl").

gl_matrix_test() ->
    Matrix2x2 = {{a, b}, {c, d}},
    RawMatrix2x2 = ?GL_PACK_MATRIX_2x2(Matrix2x2),
    [a, b, c, d] = RawMatrix2x2,
    Matrix2x2 = ?GL_UNPACK_MATRIX_2x2(RawMatrix2x2),

    Matrix3x3 = {{a, b, c}, {d, e, f}, {g, h, i}},
    RawMatrix3x3 = ?GL_PACK_MATRIX_3x3(Matrix3x3),
    [a, b, c, d, e, f, g, h, i] = RawMatrix3x3,
    Matrix3x3 = ?GL_UNPACK_MATRIX_3x3(RawMatrix3x3),

    Matrix4x4 = {{a, b, c, d}, {e, f, g, h}, {i, j, k, l}, {m, n, o, p}},
    RawMatrix4x4 = ?GL_PACK_MATRIX_4x4(Matrix4x4),
    [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p] = RawMatrix4x4,
    Matrix4x4 = ?GL_UNPACK_MATRIX_4x4(RawMatrix4x4),

    Matrix2x3 = {{a, b}, {c, d}, {e, f}},
    RawMatrix2x3 = ?GL_PACK_MATRIX_2x3(Matrix2x3),
    [a, b, c, d, e, f] = RawMatrix2x3,
    Matrix2x3 = ?GL_UNPACK_MATRIX_2x3(RawMatrix2x3),

    Matrix3x2 = {{a, b, c}, {d, e, f}},
    RawMatrix3x2 = ?GL_PACK_MATRIX_3x2(Matrix3x2),
    [a, b, c, d, e, f] = RawMatrix3x2,
    Matrix3x2 = ?GL_UNPACK_MATRIX_3x2(RawMatrix3x2),


    % Matrix2x4 = {{a, e}, {b, f}, {c, g}, {d, h}},
    % RawMatrix2x4 = ?GL_PACK_MATRIX_2x4(Matrix2x4),
    % [a, e, b, f, c, g, d, h] =  RawMatrix2x4,
    % Matrix2x4 = ?GL_UNPACK_MATRIX_2x4(RawMatrix2x4),

    % Matrix4x2 = {{a, c, e, g}, {b, d, f, h}},
    % RawMatrix4x2 = ?GL_PACK_MATRIX_4x2(Matrix4x2),
    % [a, c, e, g, b, d, f, h] = RawMatrix4x2,
    % Matrix4x2 = ?GL_UNPACK_MATRIX_4x2(RawMatrix4x2),



    % Matrix3x4 = {{a, e, i}, {b, f, j}, {c, g, k}, {d, h, l}},
    % RawMatrix3x4 = ?GL_PACK_MATRIX_3x4(Matrix3x4),
    % [a, e, i, b, f, j, c, g, k, d, h, l] = RawMatrix3x4,
    % Matrix3x4 = ?GL_UNPACK_MATRIX_3x4(RawMatrix3x4),

    % Matrix4x3 = {{a, d, g, j}, {b, e, h, k}, {c, f, i, l}},
    % RawMatrix4x3 = ?GL_PACK_MATRIX_4x3(Matrix4x3),
    % [a, d, g, j, b, e, h, k, c, f, i, l] = RawMatrix4x3,
    % Matrix4x3 = ?GL_UNPACK_MATRIX_4x3(RawMatrix4x3),

    ok.
