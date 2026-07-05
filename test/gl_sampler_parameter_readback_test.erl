-module(gl_sampler_parameter_readback_test).

-include_lib("eunit/include/eunit.hrl").

sampler_parameter_readback_test() ->
    gl_test_context:setup_context(),

    {ok, [Sampler]} = gl:gen_samplers(1),

    ok = gl:sampler_parameter(f, Sampler, texture_min_lod, 1.0),
    {ok, [1.0]} = gl:get_sampler_parameter(f, Sampler, texture_min_lod, 1),

    ok = gl:sampler_parameter(i, Sampler, texture_wrap_s, [16#812F]),
    {ok, [16#812F]} = gl:get_sampler_parameter(i, Sampler, texture_wrap_s, 1),

    ok = gl:delete_samplers([Sampler]),
    {ok, no_error} = gl:get_error().
