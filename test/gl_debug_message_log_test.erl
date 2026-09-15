-module(gl_debug_message_log_test).
-include_lib("eunit/include/eunit.hrl").

debug_message_log_test() ->
    gl_test_context:setup_context(),

    ok = gl:enable(debug_output),
    ok = gl:debug_message_control(dont_care, dont_care, dont_care, all, true),
    ok = drain_debug_messages(),

    Message = <<"batch 192">>,
    ok = gl:debug_message_insert(
        debug_source_application,
        debug_type_marker,
        192,
        debug_severity_notification,
        Message
    ),
    {ok, [{debug_source_application, debug_type_marker, 192, debug_severity_notification, Message}]} =
        gl:get_debug_message_log(1, 128),

    {ok, no_error} = gl:get_error().

drain_debug_messages() ->
    case gl:get_integer(debug_logged_messages, 1) of
        {ok, [Count]} when Count > 0 ->
            {ok, [MaxLength0]} = gl:get_integer(max_debug_message_length, 1),
            MaxLength = max(MaxLength0, 1),
            {ok, _Messages} = gl:get_debug_message_log(Count, Count * MaxLength),
            drain_debug_messages();
        {ok, [0]} ->
            ok
    end.
