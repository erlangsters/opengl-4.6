-module(gl_object_parameter_readback_test).
-include_lib("eunit/include/eunit.hrl").

object_parameter_readback_test() ->
    gl_test_context:setup_context(),

    ok = target_bound_object_parameter_readback_check(),
    ok = named_object_parameter_readback_check(),
    {ok, no_error} = gl:get_error().

target_bound_object_parameter_readback_check() ->
    {ok, [Buffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(array_buffer, Buffer),
    ok = gl:buffer_data(array_buffer, <<1, 2, 3, 4, 5, 6, 7, 8>>, static_draw),
    {ok, [8]} = gl:get_buffer_parameter(i, array_buffer, buffer_size, 1),
    {ok, [8]} = gl:get_buffer_parameter(i64, array_buffer, buffer_size, 1),

    {ok, [Renderbuffer]} = gl:gen_renderbuffers(1),
    ok = gl:bind_renderbuffer(renderbuffer, Renderbuffer),
    ok = gl:renderbuffer_storage(renderbuffer, rgba4, 2, 1),
    {ok, [2]} = gl:get_renderbuffer_parameter(renderbuffer, renderbuffer_width, 1),
    {ok, [1]} = gl:get_renderbuffer_parameter(renderbuffer, renderbuffer_height, 1),

    {ok, [Framebuffer]} = gl:gen_framebuffers(1),
    ok = gl:bind_framebuffer(framebuffer, Framebuffer),
    ok = gl:framebuffer_parameter(framebuffer, framebuffer_default_width, 2),
    {ok, [2]} = gl:get_framebuffer_parameter(framebuffer, framebuffer_default_width, 1),
    ok = gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer),
    {ok, [Renderbuffer]} = gl:get_framebuffer_attachment_parameter(
        framebuffer,
        color_attachment0,
        framebuffer_attachment_object_name,
        1
    ),

    ok = gl:bind_buffer(array_buffer, none),
    ok = gl:bind_renderbuffer(renderbuffer, 0),
    ok = gl:bind_framebuffer(framebuffer, 0),
    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok = gl:delete_buffers([Buffer]).

named_object_parameter_readback_check() ->
    {ok, [Buffer]} = gl:create_buffers(1),
    ok = gl:named_buffer_data(Buffer, <<1, 2, 3, 4, 5, 6, 7, 8>>, static_draw),
    {ok, [8]} = gl:get_named_buffer_parameter(i, Buffer, buffer_size, 1),
    {ok, [8]} = gl:get_named_buffer_parameter(i64, Buffer, buffer_size, 1),

    {ok, [Renderbuffer]} = gl:create_renderbuffers(1),
    ok = gl:named_renderbuffer_storage(Renderbuffer, rgba4, 2, 1),
    {ok, [2]} = gl:get_named_renderbuffer_parameter(Renderbuffer, renderbuffer_width, 1),
    {ok, [1]} = gl:get_named_renderbuffer_parameter(Renderbuffer, renderbuffer_height, 1),

    {ok, [Framebuffer]} = gl:create_framebuffers(1),
    ok = gl:named_framebuffer_parameter(Framebuffer, framebuffer_default_width, 3),
    {ok, [3]} = gl:get_named_framebuffer_parameter(
        Framebuffer,
        framebuffer_default_width,
        1
    ),
    ok = gl:named_framebuffer_renderbuffer(
        Framebuffer,
        color_attachment0,
        renderbuffer,
        Renderbuffer
    ),
    {ok, [Renderbuffer]} = gl:get_named_framebuffer_attachment_parameter(
        Framebuffer,
        color_attachment0,
        framebuffer_attachment_object_name,
        1
    ),

    ok = gl:delete_framebuffers([Framebuffer]),
    ok = gl:delete_renderbuffers([Renderbuffer]),
    ok = gl:delete_buffers([Buffer]).
