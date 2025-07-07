%%
%% Copyright (c) 2025, Byteplug LLC.
%%
%% This source file is part of a project made by the Erlangsters community and
%% is released under the MIT license. Please refer to the LICENSE.md file that
%% can be found at the root of the project directory.
%%
%% Written by Jonathan De Wachter <jonathan.dewachter@byteplug.io>, July 2025
%%
-module(gl_object_test).
-include_lib("eunit/include/eunit.hrl").

%%
%% Test the OpenGL object part of the binding.
%%
%% Not shader/program objects tested here because it requires soruces files.
%%
%% All OpenGL objects share a set of similar functions (create/bind/delete).
%% It just test that those functions are working as expected. xxx
    % Objects are created after they are first bound.
%%
-include("../include/gl.hrl").





% -export_type([shader/0]).
% -export_type([program/0]).
% -export_type([program_pipeline/0]).
% -export_type([texture/0]).
% -export_type([sampler/0]).
% -export_type([buffer/0]).
% -export_type([render_buffer/0]).
% -export_type([frame_buffer/0]).
% -export_type([vertex_array/0]).
% -export_type([transform_feedback/0]).
% -export_type([query/0]).
% -export_type([sync/0]).

% glBindTexture
% glBindBuffer
% glBindRenderbuffer
% glBindFramebuffer
% glBindVertexArray
% glBindSampler
% glBindTransformFeedback
% glBindProgramPipeline
% many other glBindFunc*

% glCreateProgram
% glCreateShader
% glCreateShaderProgramv
% glCreateTransformFeedbacks
% glCreateBuffers
% glCreateFramebuffers
% glCreateRenderbuffers
% glCreateTextures
% glCreateVertexArrays
% glCreateSamplers
% glCreateProgramPipelines
% glCreateQueries

% glGenQueries
% glGenBuffers
% glGenRenderbuffers
% glGenFramebuffers
% glGenVertexArrays
% glGenSamplers
% glGenTransformFeedbacks
% glGenProgramPipelines

-define(IS_OBJECT_FUNCTIONS, [
    {shader, is_shader},
    {program, is_program},
    {program_pipeline, is_program_pipeline},
    {texture, is_texture},
    {sampler, is_sampler},
    {buffer, is_buffer},
    {renderbuffer, is_renderbuffer},
    {framebuffer, is_framebuffer},
    {vertex_array, is_vertex_array},
    {transform_feedback, is_transform_feedback},
    {query, is_query},
    {sync, is_sync}
]).

ensure_is_not_object(Object, Type) ->
    Functions = lists:keydelete(Type, 1, ?IS_OBJECT_FUNCTIONS),
    lists:foreach(fun({_, Function}) ->
        {ok, false} = gl:Function(Object)
    end, Functions).

% gl_shader_progra_test() ->
%     test_gl:setup_context(),

%     % XXX
%     % {ok, Shader} = gl:create_shader(vertex_shader),
%     % {ok, true} = gl:is_shader(Shader),
%     % ensure_is_not_object(Shader, shader),
%     % ok = gl:bind_shader(Shader, vertex_shader),

%     % ok = gl:delete_shader(Shader),

%     ok.

% gl_program_pipeline_test() ->
%     test_gl:setup_context(),

%     {ok, [Pipeline]} = gl:gen_program_pipelines(1),
%     {ok, false} = gl:is_program_pipeline(Pipeline),
%     ok = gl:bind_program_pipeline(Pipeline),

%     {ok, true} = gl:is_program_pipeline(Pipeline),
%     ensure_is_not_object(Pipeline, program_pipeline),

%     ok = gl:delete_program_pipelines([Pipeline]),
%     {ok, false} = gl:is_program_pipeline(Pipeline),

%     ok.

% gl_texture_gen_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Textures} = gl:gen_textures(2),
%     [Texture1, Texture2] = Textures,
%     {ok, false} = gl:is_texture(Texture1),
%     {ok, false} = gl:is_texture(Texture2),

%     ok = gl:bind_texture(texture_2d, Texture1),
%     {ok, true} = gl:is_texture(Texture1),
%     {ok, false} = gl:is_texture(Texture2),
%     ensure_is_not_object(Texture1, texture),

%     ok = gl:bind_texture(texture_2d, Texture2),
%     {ok, true} = gl:is_texture(Texture1),
%     {ok, true} = gl:is_texture(Texture2),
%     ensure_is_not_object(Texture2, texture),

%     ok = gl:delete_textures(1, Textures),
%     {ok, false} = gl:is_texture(Texture1),
%     {ok, true} = gl:is_texture(Texture2),

%     ok = gl:delete_textures(1, [Texture2]),
%     {ok, false} = gl:is_texture(Texture2),

%     ok.

% gl_texture_create_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Textures} = gl:create_textures(texture_2d, 2),
%     [Texture1, Texture2] = Textures,
%     {ok, true} = gl:is_texture(Texture1),
%     {ok, true} = gl:is_texture(Texture2),
%     ensure_is_not_object(Texture1, texture),
%     ensure_is_not_object(Texture2, texture),

%     ok = gl:delete_textures(2, Textures),
%     {ok, false} = gl:is_texture(Texture1),
%     {ok, false} = gl:is_texture(Texture2),

%     ok.

% gl_sampler_test() ->
%     test_gl:setup_context(),

%     {ok, [Sampler]} = gl:gen_samplers(1),
%     {ok, false} = gl:is_sampler(Sampler),

%     ok = gl:bind_sampler(Sampler, 0),
%     {ok, true} = gl:is_sampler(Sampler),
%     ensure_is_not_object(Sampler, sampler),

%     ok = gl:delete_samplers([Sampler]),
%     {ok, false} = gl:is_sampler(Sampler),

%     ok.

% gl_buffer_gen_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Buffers} = gl:gen_buffers(2),
%     [Buffer1, Buffer2] = Buffers,
%     {ok, false} = gl:is_buffer(Buffer1),
%     {ok, false} = gl:is_buffer(Buffer2),

%     ok = gl:bind_buffer(array_buffer, Buffer1),
%     {ok, true} = gl:is_buffer(Buffer1),
%     {ok, false} = gl:is_buffer(Buffer2),
%     ensure_is_not_object(Buffer1, buffer),

%     ok = gl:bind_buffer(array_buffer, Buffer2),
%     {ok, true} = gl:is_buffer(Buffer1),
%     {ok, true} = gl:is_buffer(Buffer2),
%     ensure_is_not_object(Buffer2, buffer),

%     ok = gl:delete_buffers(1, Buffers),
%     {ok, false} = gl:is_buffer(Buffer1),
%     {ok, true} = gl:is_buffer(Buffer2),

%     ok = gl:delete_buffers(1, [Buffer2]),
%     {ok, false} = gl:is_buffer(Buffer2),

%     ok.

% gl_buffer_create_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Buffers} = gl:create_buffers(2),
%     [Buffer1, Buffer2] = Buffers,
%     {ok, true} = gl:is_buffer(Buffer1),
%     {ok, true} = gl:is_buffer(Buffer2),
%     ensure_is_not_object(Buffer1, buffer),
%     ensure_is_not_object(Buffer2, buffer),

%     ok = gl:delete_buffers(2, Buffers),
%     {ok, false} = gl:is_buffer(Buffer1),
%     {ok, false} = gl:is_buffer(Buffer2),

%     ok.

% gl_renderbuffer_gen_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Buffers} = gl:gen_renderbuffers(2),
%     [Buffer1, Buffer2] = Buffers,
%     {ok, false} = gl:is_renderbuffer(Buffer1),
%     {ok, false} = gl:is_renderbuffer(Buffer2),

%     ok = gl:bind_renderbuffer(renderbuffer, Buffer1),
%     {ok, true} = gl:is_renderbuffer(Buffer1),
%     {ok, false} = gl:is_renderbuffer(Buffer2),
%     ensure_is_not_object(Buffer1, renderbuffer),

%     ok = gl:bind_renderbuffer(renderbuffer, Buffer2),
%     {ok, true} = gl:is_renderbuffer(Buffer1),
%     {ok, true} = gl:is_renderbuffer(Buffer2),
%     ensure_is_not_object(Buffer2, renderbuffer),

%     ok = gl:delete_renderbuffers(1, Buffers),
%     {ok, false} = gl:is_renderbuffer(Buffer1),
%     {ok, true} = gl:is_renderbuffer(Buffer2),

%     ok = gl:delete_renderbuffers(1, [Buffer2]),
%     {ok, false} = gl:is_renderbuffer(Buffer2),

%     ok.

% gl_renderbuffer_create_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Buffers} = gl:create_renderbuffers(2),
%     [Buffer1, Buffer2] = Buffers,
%     {ok, true} = gl:is_renderbuffer(Buffer1),
%     {ok, true} = gl:is_renderbuffer(Buffer2),
%     ensure_is_not_object(Buffer1, renderbuffer),
%     ensure_is_not_object(Buffer2, renderbuffer),

%     ok = gl:delete_renderbuffers(2, Buffers),
%     {ok, false} = gl:is_renderbuffer(Buffer1),
%     {ok, false} = gl:is_renderbuffer(Buffer2),

%     ok.

% gl_framebuffer_test() ->
%     test_gl:setup_context(),

%     {ok, [Framebuffer]} = gl:gen_framebuffers(1),
%     {ok, false} = gl:is_framebuffer(Framebuffer),

%     ok = gl:bind_framebuffer(framebuffer, Framebuffer),
%     {ok, true} = gl:is_framebuffer(Framebuffer),
%     ensure_is_not_object(Framebuffer, framebuffer),

%     ok = gl:delete_framebuffers([Framebuffer]),
%     {ok, false} = gl:is_framebuffer(Framebuffer),

%     ok.

% gl_vertex_array_gen_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Arrays} = gl:gen_vertex_arrays(2),
%     [Array1, Array2] = Arrays,
%     {ok, false} = gl:is_vertex_array(Array1),
%     {ok, false} = gl:is_vertex_array(Array2),

%     ok = gl:bind_vertex_array(Array1),
%     {ok, true} = gl:is_vertex_array(Array1),
%     {ok, false} = gl:is_vertex_array(Array2),
%     ensure_is_not_object(Array1, vertex_array),

%     ok = gl:bind_vertex_array(Array2),
%     {ok, true} = gl:is_vertex_array(Array2),
%     {ok, true} = gl:is_vertex_array(Array2),
%     ensure_is_not_object(Array2, vertex_array),
    
%     ok = gl:delete_vertex_arrays(1, Arrays),
%     {ok, false} = gl:is_vertex_array(Array1),
%     {ok, true} = gl:is_vertex_array(Array2),

%     ok = gl:delete_vertex_arrays(1, [Array2]),
%     {ok, false} = gl:is_vertex_array(Array2),

%     ok.

% gl_vertex_array_create_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Arrays} = gl:create_vertex_arrays(2),
%     [Array1, Array2] = Arrays,
%     {ok, true} = gl:is_vertex_array(Array1),
%     {ok, true} = gl:is_vertex_array(Array2),
%     ensure_is_not_object(Array1, vertex_array),
%     ensure_is_not_object(Array2, vertex_array),

%     ok = gl:delete_vertex_arrays(2, Arrays),
%     {ok, false} = gl:is_vertex_array(Array1),
%     {ok, false} = gl:is_vertex_array(Array2),

%     ok.

% gl_transform_feedback_test() ->
%     test_gl:setup_context(),

%     {ok, [TransformFeedback]} = gl:gen_transform_feedbacks(1),
%     {ok, false} = gl:is_transform_feedback(TransformFeedback),

%     ok = gl:bind_transform_feedback(TransformFeedback, primitive_feedback),
%     {ok, true} = gl:is_transform_feedback(TransformFeedback),
%     ensure_is_not_object(TransformFeedback, transform_feedback),

%     ok = gl:delete_transform_feedbacks([TransformFeedback]),
%     {ok, false} = gl:is_transform_feedback(TransformFeedback),

%     ok.

% gl_query_gen_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, [Query]} = gl:gen_queries(1),
%     {ok, false} = gl:is_query(Query),
%     ensure_is_not_object(Query, query),

%     ok = gl:delete_queries(1, [Query]),
%     {ok, false} = gl:is_query(Query),

%     ok.

% gl_query_create_test() -> % DONE
%     test_gl:setup_context(),

%     {ok, Queries} = gl:create_queries(primitives_generated, 2),
%     [Query1, Query2] = Queries,
%     {ok, true} = gl:is_query(Query1),
%     {ok, true} = gl:is_query(Query2),
%     ensure_is_not_object(Query1, query),
%     ensure_is_not_object(Query2, query),

%     ok = gl:delete_queries(2, Queries),
%     {ok, false} = gl:is_texture(Query1),
%     {ok, false} = gl:is_texture(Query2),

%     ok.

% gl_sync_test() ->
%     test_gl:setup_context(),

%     {ok, Sync} = gl:sync(),
%     {ok, false} = gl:is_sync(Sync),
%     ok = gl:bind_sync(Sync),

%     {ok, true} = gl:is_sync(Sync),
%     ensure_is_not_object(Sync, sync),

%     ok = gl:delete_sync(Sync),
%     {ok, false} = gl:is_sync(Sync),

%     ok.
