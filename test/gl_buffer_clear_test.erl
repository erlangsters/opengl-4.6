-module(gl_buffer_clear_test).
-include_lib("eunit/include/eunit.hrl").

buffer_clear_test() ->
    gl_test_context:setup_context(),

    ok = target_bound_buffer_clear_check(),
    ok = named_buffer_clear_check(),
    {ok, no_error} = gl:get_error().

target_bound_buffer_clear_check() ->
    {ok, [Buffer]} = gl:gen_buffers(1),
    ok = gl:bind_buffer(array_buffer, Buffer),
    ok = gl:buffer_data(array_buffer, initial_bytes(), static_draw),

    Red = red_pixel(),
    Green = green_pixel(),
    Zero = zero_pixel(),
    RedRed = <<Red/binary, Red/binary>>,
    RedGreen = <<Red/binary, Green/binary>>,
    ZeroZero = <<Zero/binary, Zero/binary>>,

    ok = gl:clear_buffer_data(array_buffer, rgba8, rgba, unsigned_byte, Red),
    {ok, RedRed} = gl:get_buffer_sub_data(array_buffer, 0, 8),

    ok = gl:clear_buffer_sub_data(array_buffer, rgba8, 4, 4, rgba, unsigned_byte, Green),
    {ok, RedGreen} = gl:get_buffer_sub_data(array_buffer, 0, 8),

    ok = gl:clear_buffer_data(array_buffer, rgba8, rgba, unsigned_byte, none),
    {ok, ZeroZero} = gl:get_buffer_sub_data(array_buffer, 0, 8),

    ok = gl:delete_buffers([Buffer]).

named_buffer_clear_check() ->
    {ok, [Buffer]} = gl:create_buffers(1),
    ok = gl:named_buffer_data(Buffer, initial_bytes(), static_draw),

    Blue = blue_pixel(),
    Yellow = yellow_pixel(),
    Zero = zero_pixel(),
    BlueBlue = <<Blue/binary, Blue/binary>>,
    BlueYellow = <<Blue/binary, Yellow/binary>>,
    ZeroZero = <<Zero/binary, Zero/binary>>,

    ok = gl:clear_named_buffer_data(Buffer, rgba8, rgba, unsigned_byte, Blue),
    {ok, BlueBlue} = gl:get_named_buffer_sub_data(Buffer, 0, 8),

    ok = gl:clear_named_buffer_sub_data(Buffer, rgba8, 4, 4, rgba, unsigned_byte, Yellow),
    {ok, BlueYellow} = gl:get_named_buffer_sub_data(Buffer, 0, 8),

    ok = gl:clear_named_buffer_data(Buffer, rgba8, rgba, unsigned_byte, none),
    {ok, ZeroZero} = gl:get_named_buffer_sub_data(Buffer, 0, 8),

    ok = gl:delete_buffers([Buffer]).

initial_bytes() ->
    <<1, 1, 1, 1, 2, 2, 2, 2>>.

red_pixel() ->
    <<255, 0, 0, 255>>.

green_pixel() ->
    <<0, 255, 0, 255>>.

blue_pixel() ->
    <<0, 0, 255, 255>>.

yellow_pixel() ->
    <<255, 255, 0, 255>>.

zero_pixel() ->
    <<0, 0, 0, 0>>.
