%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_enum_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test the OpenGL enums part of the binding.
%%
%% It tests the correctness of the generated macros and functions.
%%
-include("../include/gl.hrl").

gl_enum_test() ->
    lists:foreach(fun(EnumGroup) ->
        lists:foreach(fun(Enum) ->
            Value = gl:enum_value_(Enum),
            ?assert(is_integer(Value)),

            ?assert(lists:member(Enum, gl:value_enums_(Value)), true),
            ?assert(gl:value_enum_(Value, EnumGroup) =:= Enum)
        end, gl:enums_(EnumGroup))
    end, gl:enum_groups_()),

    ok.
