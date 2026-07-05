-module(gl_multi_bind_test).

-include_lib("eunit/include/eunit.hrl").

multi_bind_state_test() ->
    gl_test_context:setup_context(),

    {ok, [Buffer]} = gl:create_buffers(1),
    {ok, [Texture]} = gl:create_textures(texture_2d, 1),
    {ok, [Sampler]} = gl:create_samplers(1),
    {ok, [Array]} = gl:create_vertex_arrays(1),
    try
        ok = gl:named_buffer_data(Buffer, 64, dynamic_draw),
        ok = gl:texture_storage_2d(Texture, 1, rgba8, 1, 1),

        ok = buffer_multi_bind_check(Buffer),
        ok = texture_multi_bind_check(Texture),
        ok = sampler_multi_bind_check(Sampler),
        ok = image_texture_multi_bind_check(Texture),
        ok = vertex_buffer_multi_bind_check(Array, Buffer),
        ok = vertex_array_vertex_buffer_multi_bind_check(Array, Buffer)
    after
        ok = gl:bind_vertex_array(none),
        ok = gl:bind_buffers_base(transform_feedback_buffer, 0, [none]),
        ok = gl:bind_buffers_base(uniform_buffer, 0, [none]),
        ok = gl:bind_textures(0, [none]),
        ok = gl:bind_samplers(0, [none]),
        ok = gl:bind_image_textures(0, [none]),
        ok = gl:delete_vertex_arrays([Array]),
        ok = gl:delete_samplers([Sampler]),
        ok = gl:delete_textures([Texture]),
        ok = gl:delete_buffers([Buffer])
    end,
    {ok, no_error} = gl:get_error().

buffer_multi_bind_check(Buffer) ->
    ok = gl:bind_buffers_base(transform_feedback_buffer, 0, [Buffer]),
    {ok, [Buffer]} = gl:get_integer(transform_feedback_buffer_binding, 0, 1),

    ok = gl:bind_buffers_base(transform_feedback_buffer, 0, [none]),
    {ok, [0]} = gl:get_integer(transform_feedback_buffer_binding, 0, 1),

    ok = gl:bind_buffers_range(uniform_buffer, 0, [{Buffer, 0, 16}]),
    {ok, [Buffer]} = gl:get_integer(uniform_buffer_binding, 0, 1),
    {ok, [0]} = gl:get_integer64(uniform_buffer_start, 0, 1),
    {ok, [16]} = gl:get_integer64(uniform_buffer_size, 0, 1),

    ok = gl:bind_buffers_range(uniform_buffer, 0, [{none, 0, 16}]),
    {ok, [0]} = gl:get_integer(uniform_buffer_binding, 0, 1),
    ok.

texture_multi_bind_check(Texture) ->
    ok = gl:active_texture(texture0),
    ok = gl:bind_textures(0, [Texture]),
    {ok, [Texture]} = gl:get_integer(texture_binding_2d, 1),

    ok = gl:bind_textures(0, [none]),
    {ok, [0]} = gl:get_integer(texture_binding_2d, 1),
    ok.

sampler_multi_bind_check(Sampler) ->
    ok = gl:bind_samplers(0, [Sampler]),
    {ok, [Sampler]} = gl:get_integer(sampler_binding, 0, 1),

    ok = gl:bind_samplers(0, [none]),
    {ok, [0]} = gl:get_integer(sampler_binding, 0, 1),
    ok.

image_texture_multi_bind_check(Texture) ->
    ok = gl:bind_image_textures(0, [Texture]),
    ok = gl:bind_image_textures(0, [none]),
    ok.

vertex_buffer_multi_bind_check(Array, Buffer) ->
    ok = gl:bind_vertex_array(Array),
    ok = gl:bind_vertex_buffers(0, [{Buffer, 4, 8}]),
    {ok, [Buffer]} = gl:get_vertex_array(i, Array, 0, vertex_binding_buffer, 1),
    {ok, [4]} = gl:get_vertex_array(i64, Array, 0, vertex_binding_offset, 1),
    {ok, [8]} = gl:get_vertex_array(i, Array, 0, vertex_binding_stride, 1),

    ok = gl:bind_vertex_buffers(0, [{none, 0, 0}]),
    {ok, [0]} = gl:get_vertex_array(i, Array, 0, vertex_binding_buffer, 1),
    ok.

vertex_array_vertex_buffer_multi_bind_check(Array, Buffer) ->
    ok = gl:vertex_array_vertex_buffers(Array, 0, [{Buffer, 12, 16}]),
    {ok, [Buffer]} = gl:get_vertex_array(i, Array, 0, vertex_binding_buffer, 1),
    {ok, [12]} = gl:get_vertex_array(i64, Array, 0, vertex_binding_offset, 1),
    {ok, [16]} = gl:get_vertex_array(i, Array, 0, vertex_binding_stride, 1),

    ok = gl:vertex_array_vertex_buffers(Array, 0, [{none, 0, 0}]),
    {ok, [0]} = gl:get_vertex_array(i, Array, 0, vertex_binding_buffer, 1),
    ok.
