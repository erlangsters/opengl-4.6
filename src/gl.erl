%% This file is generated. Do not edit!
-module(gl).
-moduledoc """
OpenGL 4.6 binding.

It implements the API of OpenGL 4.6, adjusted for BEAM (Erlang language).

blabla...
Knowledge of the EGL API in C is assumed, as this module is a direct binding to
the C API. xXxx

XXX: To be written.

Another source of reference is the OpenGL samples project that provides working
C samples with their counterparts in Erlang (and later Elixir).
Repo: [OpenGL Samples](https://github.com/erlangsters/opengl-samples).

Another source of reference is the
[test suites](https://github.com/erlangsters/egl-1.5/tree/master/test)
""".

% Low-level OpenGL types.
-export_type([scalar/1]).
-export_type([vector1/1, vector2/1, vector3/1, vector4/1]).
-export_type([matrix2/1, matrix3/1, matrix4/1]).
-export_type([matrix2x3/1, matrix3x2/1]).
-export_type([matrix2x4/1, matrix4x2/1]).
-export_type([matrix3x4/1, matrix4x3/1]).


-export_type([enum/0]).
-export_type([bitfield/0]).

% High-level OpenGL types.
-export_type([shader/0]).
-export_type([program/0]).
-export_type([buffer/0]).
-export_type([render_buffer/0]).
-export_type([frame_buffer/0]).
-export_type([vertex_array/0]).
-export_type([texture/0]).
-export_type([query/0]).
-export_type([sync/0]).
-export_type([sampler/0]).
-export_type([transform_feedback/0]).
-export_type([program_pipeline/0]).

% The OpenGL enum types.
-export_type([framebuffer_target/0]).
-export_type([string_name/0]).
-export_type([pixel_format/0]).
-export_type([clip_control_depth/0]).
-export_type([clamp_color_mode_a_r_b/0]).
-export_type([front_face_direction/0]).
-export_type([vertex_attrib_type/0]).
-export_type([sized_internal_format/0]).
-export_type([clamp_color_target_a_r_b/0]).
-export_type([texture_unit/0]).
-export_type([vertex_provoking_mode/0]).
-export_type([query_counter_target/0]).
-export_type([internal_format/0]).
-export_type([shader_type/0]).
-export_type([vertex_attrib_pointer_type/0]).
-export_type([buffer_usage_a_r_b/0]).
-export_type([sync_condition/0]).
-export_type([program_property_a_r_b/0]).
-export_type([copy_buffer_sub_data_target/0]).
-export_type([texture_target/0]).
-export_type([blending_factor/0]).
-export_type([get_p_name/0]).
-export_type([graphics_reset_status/0]).
-export_type([query_target/0]).
-export_type([conditional_render_mode/0]).
-export_type([clip_control_origin/0]).
-export_type([stencil_op/0]).
-export_type([enable_cap/0]).
-export_type([vertex_attrib_i_type/0]).
-export_type([sync_status/0]).
-export_type([buffer_target_a_r_b/0]).
-export_type([bind_transform_feedback_target/0]).
-export_type([read_buffer_mode/0]).
-export_type([pixel_type/0]).
-export_type([buffer_access_a_r_b/0]).
-export_type([hint_target/0]).
-export_type([blend_equation_mode_e_x_t/0]).
-export_type([triangle_face/0]).
-export_type([copy_image_sub_data_target/0]).
-export_type([draw_buffer_mode/0]).
-export_type([primitive_type/0]).
-export_type([vertex_attrib_l_type/0]).
-export_type([blit_framebuffer_filter/0]).
-export_type([framebuffer_attachment/0]).
-export_type([shader_parameter_name/0]).
-export_type([polygon_mode/0]).
-export_type([renderbuffer_target/0]).
-export_type([depth_function/0]).
-export_type([hint_mode/0]).
-export_type([stencil_function/0]).
-export_type([error_code/0]).
-export_type([framebuffer_status/0]).

% The OpenGL bitfield types.
-export_type([clear_buffer_mask/0]).
-export_type([memory_barrier_mask/0]).
-export_type([sync_behavior_flags/0]).
-export_type([sync_object_mask/0]).
-export_type([use_program_stage_mask/0]).

-export([disable/1]).
-export([memory_barrier_by_region/1]).
-export([tex_sub_image_2d/9]).
-export([blend_func_separate/5]).
-export([query_counter/2]).
-export([bind_render_buffer/2]).
-export([enable_vertex_attrib_array/1]).
-export([clear_stencil/1]).
-export([begin_query_indexed/3]).
-export([vertex_attrib_binding/2]).
-export([get_program_info_log/2]).
-export([tex_storage_2d/5]).
-export([get_program_pipeline_info_log/2]).
-export([get_boolean/3]).
-export([is_enabled/2]).
-export([create_buffers/1]).
-export([stencil_op/3]).
-export([is_renderbuffer/1]).
-export([get_shader_iv/3]).
-export([tex_sub_image_1d/7]).
-export([flush/0]).
-export([pause_transform_feedback/0]).
-export([is_query/1]).
-export([framebuffer_texture_1d/5]).
-export([is_transform_feedback/1]).
-export([read_buffer/1]).
-export([create_program_pipelines/1]).
-export([texture_sub_image_2d/9]).
-export([delete_transform_feedbacks/2]).
-export([create_shader/1]).
-export([bind_program_pipeline/1]).
-export([bind_image_texture/7]).
-export([vertex_attrib_pointer/6]).
-export([check_named_framebuffer_status/2]).
-export([get_integer64/2]).
-export([texture_storage_2d_multisample/6]).
-export([draw_arrays_instanced/4]).
-export([delete_framebuffers/2]).
-export([polygon_offset/2]).
-export([end_transform_feedback/0]).
-export([active_shader_program/2]).
-export([stencil_mask/1]).
-export([clamp_color/2]).
-export([copy_buffer_sub_data/5]).
-export([disable_vertex_attrib_array/1]).
-export([create_queries/2]).
-export([clear_depth/1]).
-export([link_program/1]).
-export([compile_shader/1]).
-export([detach_shader/2]).
-export([get_double/2]).
-export([scissor_indexed/5]).
-export([copy_image_sub_data/15]).
-export([compressed_tex_image_2d/8]).
-export([attach_shader/2]).
-export([transform_feedback_buffer_range/5]).
-export([transform_feedback_buffer_base/3]).
-export([generate_mipmap/1]).
-export([create_vertex_arrays/1]).
-export([check_framebuffer_status/1]).
-export([blit_named_framebuffer/12]).
-export([is_program/1]).
-export([disable/2]).
-export([fence_sync/2]).
-export([get_double/3]).
-export([is_shader/1]).
-export([wait_sync/3]).
-export([gen_textures/1]).
-export([enable/2]).
-export([validate_program/1]).
-export([bind_vertex_buffer/4]).
-export([get_string/2]).
-export([tex_sub_image_3d/11]).
-export([memory_barrier/1]).
-export([get_n_tex_image/5]).
-export([copy_tex_image_2d/8]).
-export([bind_vertex_array/1]).
-export([texture_sub_image_1d/7]).
-export([create_transform_feedbacks/1]).
-export([depth_range_indexed/3]).
-export([blit_framebuffer/10]).
-export([named_renderbuffer_storage_multisample/5]).
-export([get_compressed_texture_sub_image/9]).
-export([stencil_mask_separate/2]).
-export([vertex_attrib_format/5]).
-export([texture_storage_1d/4]).
-export([scissor/4]).
-export([tex_image_2d/9]).
-export([get_error/0]).
-export([is_vertex_array/1]).
-export([create_textures/2]).
-export([point_size/1]).
-export([bind_texture/2]).
-export([delete_shader/1]).
-export([depth_range/2]).
-export([get_integer/3]).
-export([draw_buffer/1]).
-export([stencil_func/3]).
-export([vertex_array_element_buffer/2]).
-export([gen_program_pipelines/1]).
-export([is_sync/1]).
-export([tex_storage_1d/4]).
-export([tex_buffer/3]).
-export([draw_arrays/3]).
-export([framebuffer_texture_2d/5]).
-export([vertex_attrib_i_format/4]).
-export([provoking_vertex/1]).
-export([line_width/1]).
-export([depth_mask/1]).
-export([blend_equation_separate/2]).
-export([texture_buffer_range/5]).
-export([copy_tex_sub_image_3d/9]).
-export([texture_buffer/3]).
-export([viewport/4]).
-export([get_texture_image/5]).
-export([invalidate_tex_image/2]).
-export([tex_image_3d/10]).
-export([begin_conditional_render/2]).
-export([texture_storage_3d_multisample/7]).
-export([get_tex_image/5]).
-export([draw_transform_feedback_instanced/3]).
-export([delete_render_buffers/2]).
-export([compressed_tex_sub_image_2d/9]).
-export([bind_buffer/2]).
-export([copy_tex_sub_image_1d/6]).
-export([draw_arrays_instanced_base_instance/5]).
-export([vertex_binding_divisor/2]).
-export([blend_func/3]).
-export([buffer_data/4]).
-export([compressed_tex_sub_image_1d/7]).
-export([get_shader_source/2]).
-export([sample_coverage/2]).
-export([stencil_op_separate/4]).
-export([copy_texture_sub_image_3d/11]).
-export([copy_named_buffer_sub_data/5]).
-export([blend_func/2]).
-export([use_program_stages/3]).
-export([hint/2]).
-export([vertex_attrib_l_pointer/0]).
-export([create_samplers/1]).
-export([get_boolean/2]).
-export([begin_transform_feedback/1]).
-export([get_graphics_reset_status/0]).
-export([polygon_offset_clamp/3]).
-export([vertex_array_binding_divisor/3]).
-export([blend_color/4]).
-export([tex_storage_2d_multisample/6]).
-export([end_query_indexed/2]).
-export([is_program_pipeline/1]).
-export([begin_query/2]).
-export([compressed_texture_sub_image_2d/9]).
-export([tex_buffer_range/5]).
-export([release_shader_compiler/0]).
-export([get_float/3]).
-export([end_query/1]).
-export([named_framebuffer_texture/4]).
-export([delete_samplers/2]).
-export([shader_source/2]).
-export([clear/1]).
-export([framebuffer_renderbuffer/4]).
-export([vertex_array_attrib_binding/3]).
-export([copy_texture_sub_image_1d/6]).
-export([validate_program_pipeline/1]).
-export([texture_storage_2d/5]).
-export([tex_image_1d/8]).
-export([invalidate_buffer_data/1]).
-export([min_sample_shading/1]).
-export([draw_transform_feedback_stream_instanced/4]).
-export([delete_sync/1]).
-export([primitive_restart_index/1]).
-export([draw_transform_feedback/2]).
-export([read_n_pixels/7]).
-export([copy_tex_sub_image_2d/8]).
-export([stencil_func_separate/4]).
-export([get_integer/2]).
-export([texture_sub_image_3d/11]).
-export([gen_vertex_arrays/1]).
-export([gen_render_buffers/1]).
-export([compressed_texture_sub_image_1d/7]).
-export([vertex_array_vertex_buffer/5]).
-export([depth_func/1]).
-export([gen_framebuffers/1]).
-export([vertex_attrib_divisor/2]).
-export([delete_program_pipelines/2]).
-export([get_float/2]).
-export([tex_storage_3d/6]).
-export([color_mask/4]).
-export([invalidate_buffer_sub_data/3]).
-export([renderbuffer_storage_multisample/5]).
-export([is_texture/1]).
-export([texture_view/8]).
-export([is_framebuffer/1]).
-export([gen_samplers/1]).
-export([gen_transform_feedbacks/1]).
-export([disable_vertex_array_attrib/2]).
-export([is_sampler/1]).
-export([compressed_tex_image_1d/7]).
-export([front_face/1]).
-export([texture_barrier/0]).
-export([vertex_array_attrib_format/6]).
-export([blend_equation/1]).
-export([get_string/1]).
-export([client_wait_sync/3]).
-export([get_shader_info_log/2]).
-export([gen_queries/1]).
-export([enable/1]).
-export([is_buffer/1]).
-export([blend_func_separate/4]).
-export([texture_storage_3d/6]).
-export([bind_framebuffer/2]).
-export([clip_control/2]).
-export([clear_color/4]).
-export([blend_equation_separate/3]).
-export([compressed_tex_image_3d/9]).
-export([delete_queries/2]).
-export([color_mask/5]).
-export([framebuffer_texture/4]).
-export([delete_textures/2]).
-export([create_renderbuffers/1]).
-export([render_buffer_storage/4]).
-export([is_enabled/1]).
-export([polygon_mode/2]).
-export([dispatch_compute/3]).
-export([vertex_array_attrib_l_format/5]).
-export([compressed_tex_sub_image_3d/11]).
-export([delete_buffers/2]).
-export([gen_buffers/1]).
-export([active_texture/1]).
-export([resume_transform_feedback/0]).
-export([get_integer64/3]).
-export([finish/0]).
-export([copy_tex_image_1d/7]).
-export([enable_vertex_array_attrib/2]).
-export([end_conditional_render/0]).
-export([tex_image_3d_multisample/7]).
-export([compressed_texture_sub_image_3d/11]).
-export([blend_equation/2]).
-export([invalidate_tex_sub_image/8]).
-export([get_texture_sub_image/11]).
-export([create_program/0]).
-export([draw_transform_feedback_stream/3]).
-export([generate_texture_mipmap/1]).
-export([tex_storage_3d_multisample/7]).
-export([framebuffer_texture_layer/5]).
-export([framebuffer_texture_3d/6]).
-export([tex_image_2d_multisample/6]).
-export([dispatch_compute_indirect/1]).
-export([cull_face/1]).
-export([delete_vertex_arrays/2]).
-export([shader_storage_block_binding/3]).
-export([get_program_iv/3]).
-export([use_program/1]).
-export([read_pixels/7]).
-export([delete_program/1]).
-export([named_renderbuffer_storage/4]).
-export([vertex_attrib_l_format/4]).
-export([copy_texture_sub_image_2d/8]).
-export([vertex_array_attrib_i_format/5]).
-export([bind_transform_feedback/2]).

-include("../include/gl.hrl").

-doc "to be written.".
-type scalar(Type) :: Type.

-doc "to be written.".
-type vector1(Type) :: {scalar(Type)}.
-doc "to be written.".
-type vector2(Type) :: {scalar(Type), scalar(Type)}.
-doc "to be written.".
-type vector3(Type) :: {scalar(Type), scalar(Type), scalar(Type)}.
-doc "to be written.".
-type vector4(Type) :: {scalar(Type), scalar(Type), scalar(Type), scalar(Type)}.
-doc "to be written.".

-type matrix2(Type) :: {vector2(Type), vector2(Type)}.
-doc "to be written.".
-type matrix3(Type) :: {vector3(Type), vector3(Type), vector3(Type)}.
-doc "to be written.".
-type matrix4(Type) :: {vector4(Type), vector4(Type), vector4(Type), vector4(Type)}.
-doc "to be written.".

-type matrix2x3(Type) :: {vector3(Type), vector3(Type)}.
-doc "to be written.".
-type matrix3x2(Type) :: {vector2(Type), vector2(Type), vector2(Type)}.
-doc "to be written.".

-type matrix2x4(Type) :: {vector4(Type), vector4(Type)}.
-doc "to be written.".
-type matrix4x2(Type) :: {vector2(Type), vector2(Type), vector2(Type), vector2(Type)}.
-doc "to be written.".

-type matrix3x4(Type) :: {vector4(Type), vector4(Type), vector4(Type)}.
-doc "to be written.".
-type matrix4x3(Type) :: {vector3(Type), vector3(Type), vector3(Type), vector3(Type)}.


-doc "An OpenGL enum..".
-type enum() :: atom().
-doc "An OpenGL bitfield.".
-type bitfield() :: [atom()].

-doc "An OpenGL shader object.".
-type shader() :: pos_integer().
-doc "An OpenGL program object.".
-type program() :: pos_integer().
-doc "An OpenGL buffer object.".
-type buffer() :: pos_integer().
-doc "An OpenGL render buffer object.".
-type render_buffer() :: pos_integer().
-doc "An OpenGL frame buffer object.".
-type frame_buffer() :: pos_integer().
-doc "An OpenGL vertex array object.".
-type vertex_array() :: pos_integer().
-doc "An OpenGL texture object.".
-type texture() :: pos_integer().
-doc "An OpenGL query object.".
-type query() :: pos_integer().
-doc "An OpenGL sync object.".
-type sync() :: pos_integer().
-doc "An OpenGL sampler object.".
-type sampler() :: pos_integer().
-doc "An OpenGL transform feedback object.".
-type transform_feedback() :: pos_integer().
-doc "An OpenGL program pipeline object.".
-type program_pipeline() :: pos_integer().

-doc "The OpenGL `framebuffer_target` enum.".
-type framebuffer_target() :: 
    draw_framebuffer |
    framebuffer |
    read_framebuffer
.
-doc "The OpenGL `string_name` enum.".
-type string_name() :: 
    version |
    shading_language_version |
    extensions |
    renderer |
    vendor
.
-doc "The OpenGL `pixel_format` enum.".
-type pixel_format() :: 
    rgba_integer |
    green_integer |
    bgra |
    bgr_integer |
    rgb |
    rgb_integer |
    rg |
    blue |
    bgra_integer |
    bgr |
    alpha |
    depth_stencil |
    green |
    red |
    depth_component |
    blue_integer |
    unsigned_int |
    red_integer |
    stencil_index |
    rg_integer |
    rgba |
    unsigned_short
.
-doc "The OpenGL `clip_control_depth` enum.".
-type clip_control_depth() :: 
    zero_to_one |
    negative_one_to_one
.
-doc "The OpenGL `clamp_color_mode_a_r_b` enum.".
-type clamp_color_mode_a_r_b() :: 
    true |
    false |
    fixed_only
.
-doc "The OpenGL `front_face_direction` enum.".
-type front_face_direction() :: 
    cw |
    ccw
.
-doc "The OpenGL `vertex_attrib_type` enum.".
-type vertex_attrib_type() :: 
    half_float |
    int_2_10_10_10_rev |
    fixed |
    short |
    double |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `sized_internal_format` enum.".
-type sized_internal_format() :: 
    r32i |
    rgb8 |
    compressed_rg11_eac |
    stencil_index8 |
    rg32ui |
    rgb16ui |
    rgb32ui |
    rg8ui |
    compressed_signed_red_rgtc1 |
    rgb16_snorm |
    r16_snorm |
    rgba12 |
    rgba8i |
    rgba8_snorm |
    rgba32ui |
    compressed_r11_eac |
    compressed_rgb8_punchthrough_alpha1_etc2 |
    compressed_signed_rg11_eac |
    rgb16i |
    rgba32i |
    rg16ui |
    depth_component16 |
    stencil_index4 |
    rgba16 |
    rg32f |
    r8 |
    compressed_srgb8_etc2 |
    compressed_srgb_alpha_bptc_unorm |
    compressed_rgb_bptc_unsigned_float |
    compressed_signed_r11_eac |
    rgb5 |
    r32f |
    compressed_rgb_bptc_signed_float |
    rg8i |
    rgba16i |
    rgb8i |
    rgb16 |
    compressed_red_rgtc1 |
    compressed_rgba8_etc2_eac |
    stencil_index16 |
    rgb32f |
    r16f |
    rg16i |
    rgb565 |
    rgb10_a2 |
    srgb8 |
    rgba16ui |
    r32ui |
    rgb8ui |
    r16i |
    compressed_srgb8_punchthrough_alpha1_etc2 |
    rg16f |
    rgb12 |
    rgba32f |
    rgb10 |
    compressed_rgba_bptc_unorm |
    rgb32i |
    r16 |
    rgba8 |
    rgb16f |
    rgba4 |
    depth_component32f |
    r8ui |
    depth24_stencil8 |
    r3_g3_b2 |
    rgb8_snorm |
    srgb8_alpha8 |
    rg16_snorm |
    rgba16_snorm |
    rgba2 |
    stencil_index1 |
    r8i |
    rgb4 |
    rg16 |
    rgba8ui |
    r8_snorm |
    rgb10_a2ui |
    r11f_g11f_b10f |
    compressed_rg_rgtc2 |
    rgb9_e5 |
    rgb5_a1 |
    rg32i |
    compressed_rgb8_etc2 |
    rgba16f |
    compressed_srgb8_alpha8_etc2_eac |
    rg8_snorm |
    depth_component24 |
    r16ui |
    depth32f_stencil8 |
    rg8 |
    compressed_signed_rg_rgtc2 |
    depth_component32
.
-doc "The OpenGL `clamp_color_target_a_r_b` enum.".
-type clamp_color_target_a_r_b() :: 
    clamp_read_color
.
-doc "The OpenGL `texture_unit` enum.".
-type texture_unit() :: 
    texture19 |
    texture14 |
    texture10 |
    texture2 |
    texture17 |
    texture6 |
    texture8 |
    texture9 |
    texture28 |
    texture23 |
    texture24 |
    texture27 |
    texture21 |
    texture12 |
    texture4 |
    texture16 |
    texture13 |
    texture29 |
    texture3 |
    texture5 |
    texture11 |
    texture18 |
    texture7 |
    texture25 |
    texture26 |
    texture20 |
    texture30 |
    texture15 |
    texture1 |
    texture22 |
    texture0 |
    texture31
.
-doc "The OpenGL `vertex_provoking_mode` enum.".
-type vertex_provoking_mode() :: 
    first_vertex_convention |
    last_vertex_convention
.
-doc "The OpenGL `query_counter_target` enum.".
-type query_counter_target() :: 
    timestamp
.
-doc "The OpenGL `internal_format` enum.".
-type internal_format() :: 
    r32i |
    rgb8 |
    compressed_rg11_eac |
    stencil_index8 |
    rg32ui |
    rgb16ui |
    rgb32ui |
    rg8ui |
    compressed_srgb |
    compressed_signed_red_rgtc1 |
    rgb16_snorm |
    r16_snorm |
    rgba12 |
    rgba8i |
    rgba8_snorm |
    rgb |
    rgba32ui |
    compressed_r11_eac |
    compressed_rgb8_punchthrough_alpha1_etc2 |
    compressed_signed_rg11_eac |
    rgb16i |
    rgba32i |
    rg16ui |
    rg |
    depth_component16 |
    stencil_index4 |
    compressed_rg |
    compressed_red |
    rgba16 |
    rg32f |
    r8 |
    compressed_srgb8_etc2 |
    compressed_srgb_alpha_bptc_unorm |
    compressed_rgb_bptc_unsigned_float |
    compressed_signed_r11_eac |
    rgb5 |
    r32f |
    compressed_rgb_bptc_signed_float |
    rg8i |
    rgba16i |
    rgb8i |
    rgb16 |
    compressed_red_rgtc1 |
    compressed_rgba8_etc2_eac |
    stencil_index16 |
    rgb32f |
    r16f |
    rg16i |
    rgb565 |
    rgb10_a2 |
    srgb8 |
    depth_stencil |
    rgba16ui |
    srgb |
    r32ui |
    rgb8ui |
    r16i |
    compressed_srgb8_punchthrough_alpha1_etc2 |
    compressed_srgb_alpha |
    rg16f |
    rgb12 |
    rgba32f |
    rgb10 |
    compressed_rgba_bptc_unorm |
    rgb32i |
    r16 |
    rgba8 |
    compressed_rgba |
    red |
    srgb_alpha |
    rgb16f |
    rgba4 |
    depth_component32f |
    r8ui |
    depth24_stencil8 |
    depth_component |
    r3_g3_b2 |
    rgb8_snorm |
    srgb8_alpha8 |
    rg16_snorm |
    rgba16_snorm |
    rgba2 |
    stencil_index1 |
    r8i |
    rgb4 |
    rg16 |
    rgba8ui |
    r8_snorm |
    rgb10_a2ui |
    compressed_rgb |
    r11f_g11f_b10f |
    compressed_rg_rgtc2 |
    rgb9_e5 |
    rgb5_a1 |
    stencil_index |
    rg32i |
    compressed_rgb8_etc2 |
    rgba16f |
    compressed_srgb8_alpha8_etc2_eac |
    rg8_snorm |
    rgba |
    depth_component24 |
    r16ui |
    depth32f_stencil8 |
    rg8 |
    compressed_signed_rg_rgtc2 |
    depth_component32
.
-doc "The OpenGL `shader_type` enum.".
-type shader_type() :: 
    tess_control_shader |
    geometry_shader |
    tess_evaluation_shader |
    compute_shader |
    fragment_shader |
    vertex_shader
.
-doc "The OpenGL `vertex_attrib_pointer_type` enum.".
-type vertex_attrib_pointer_type() :: 
    half_float |
    int_2_10_10_10_rev |
    fixed |
    short |
    double |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `buffer_usage_a_r_b` enum.".
-type buffer_usage_a_r_b() :: 
    dynamic_draw |
    static_draw |
    dynamic_copy |
    static_read |
    stream_copy |
    stream_read |
    static_copy |
    dynamic_read |
    stream_draw
.
-doc "The OpenGL `sync_condition` enum.".
-type sync_condition() :: 
    sync_gpu_commands_complete
.
-doc "The OpenGL `program_property_a_r_b` enum.".
-type program_property_a_r_b() :: 
    attached_shaders |
    geometry_input_type |
    link_status |
    info_log_length |
    geometry_output_type |
    validate_status |
    active_uniforms |
    active_attribute_max_length |
    active_attributes |
    program_binary_length |
    transform_feedback_varyings |
    active_uniform_block_max_name_length |
    delete_status |
    transform_feedback_varying_max_length |
    compute_work_group_size |
    geometry_vertices_out |
    active_atomic_counter_buffers |
    active_uniform_max_length |
    active_uniform_blocks |
    transform_feedback_buffer_mode
.
-doc "The OpenGL `copy_buffer_sub_data_target` enum.".
-type copy_buffer_sub_data_target() :: 
    pixel_unpack_buffer |
    dispatch_indirect_buffer |
    array_buffer |
    copy_read_buffer |
    texture_buffer |
    pixel_pack_buffer |
    transform_feedback_buffer |
    draw_indirect_buffer |
    shader_storage_buffer |
    copy_write_buffer |
    uniform_buffer |
    atomic_counter_buffer |
    query_buffer |
    element_array_buffer
.
-doc "The OpenGL `texture_target` enum.".
-type texture_target() :: 
    proxy_texture_2d_multisample |
    texture_cube_map_array |
    texture_2d_multisample |
    texture_2d_multisample_array |
    proxy_texture_1d_array |
    texture_1d |
    proxy_texture_cube_map |
    texture_2d |
    texture_buffer |
    texture_rectangle |
    proxy_texture_2d_array |
    texture_2d_array |
    texture_cube_map_negative_z |
    proxy_texture_3d |
    texture_1d_array |
    proxy_texture_cube_map_array |
    proxy_texture_2d |
    proxy_texture_1d |
    proxy_texture_2d_multisample_array |
    texture_cube_map_positive_x |
    texture_3d |
    renderbuffer |
    texture_cube_map_negative_y |
    texture_cube_map_positive_y |
    texture_cube_map_negative_x |
    texture_cube_map |
    proxy_texture_rectangle |
    texture_cube_map_positive_z
.
-doc "The OpenGL `blending_factor` enum.".
-type blending_factor() :: 
    src1_alpha |
    constant_color |
    one_minus_constant_alpha |
    dst_color |
    one_minus_src_alpha |
    one_minus_dst_color |
    src_color |
    constant_alpha |
    one_minus_constant_color |
    src_alpha_saturate |
    one_minus_src1_color |
    zero |
    one_minus_src1_alpha |
    one_minus_src_color |
    one_minus_dst_alpha |
    src1_color |
    dst_alpha |
    one |
    src_alpha
.
-doc "The OpenGL `get_p_name` enum.".
-type get_p_name() :: 
    max_varying_vectors |
    compressed_texture_formats |
    polygon_offset_fill |
    shader_storage_buffer_size |
    dither |
    max_combined_compute_uniform_components |
    texture_buffer_offset_alignment |
    stencil_back_func |
    stencil_pass_depth_pass |
    viewport_index_provoking_vertex |
    max_combined_uniform_blocks |
    draw_framebuffer_binding |
    pack_skip_rows |
    blend_equation_rgb |
    max_elements_indices |
    max_label_length |
    max_compute_uniform_components |
    depth_func |
    max_vertex_uniform_blocks |
    line_smooth_hint |
    max_geometry_output_components |
    line_width_granularity |
    line_width_range |
    depth_test |
    max_combined_shader_storage_blocks |
    shader_storage_buffer_start |
    min_program_texel_offset |
    max_framebuffer_samples |
    unpack_lsb_first |
    point_size_granularity |
    color_clear_value |
    major_version |
    max_compute_work_group_invocations |
    max_geometry_atomic_counters |
    max_vertex_uniform_components |
    max_compute_shader_storage_blocks |
    max_framebuffer_height |
    max_combined_geometry_uniform_components |
    max_shader_storage_buffer_bindings |
    smooth_point_size_granularity |
    draw_buffer |
    max_draw_buffers |
    smooth_line_width_granularity |
    smooth_line_width_range |
    current_program |
    blend_src |
    max_vertex_attrib_relative_offset |
    max_texture_buffer_size |
    max_tess_control_uniform_blocks |
    pack_row_length |
    max_geometry_input_components |
    blend_dst |
    context_flags |
    texture_binding_1d |
    texture_1d |
    transform_feedback_buffer_binding |
    shader_binary_formats |
    max_vertex_atomic_counters |
    polygon_smooth_hint |
    stencil_ref |
    texture_binding_2d_multisample_array |
    front_face |
    max_vertex_attribs |
    provoking_vertex |
    texture_2d |
    program_binary_formats |
    stencil_back_writemask |
    max_compute_texture_image_units |
    line_smooth |
    cull_face_mode |
    max_tess_evaluation_uniform_blocks |
    max_fragment_atomic_counters |
    scissor_test |
    max_color_texture_samples |
    max_fragment_uniform_vectors |
    sampler_binding |
    color_logic_op |
    sample_coverage_invert |
    samples |
    element_array_buffer_binding |
    max_sample_mask_words |
    max_vertex_uniform_vectors |
    max_compute_atomic_counter_buffers |
    unpack_swap_bytes |
    implementation_color_read_type |
    aliased_line_width_range |
    texture_binding_2d_array |
    pixel_unpack_buffer_binding |
    blend_color |
    blend_equation_alpha |
    max_uniform_block_size |
    stencil_back_pass_depth_fail |
    num_program_binary_formats |
    max_tess_control_shader_storage_blocks |
    max_framebuffer_width |
    texture_binding_rectangle |
    stencil_back_pass_depth_pass |
    max_combined_atomic_counters |
    point_size |
    vertex_binding_divisor |
    polygon_offset_point |
    pack_alignment |
    max_compute_work_group_size |
    renderbuffer_binding |
    read_framebuffer_binding |
    max_tess_control_atomic_counters |
    texture_binding_cube_map |
    stencil_pass_depth_fail |
    unpack_skip_images |
    max_geometry_uniform_components |
    max_texture_size |
    max_geometry_texture_image_units |
    point_fade_threshold_size |
    unpack_image_height |
    max_compute_atomic_counters |
    viewport_bounds_range |
    cull_face |
    sample_coverage_value |
    stereo |
    max_vertex_texture_image_units |
    array_buffer_binding |
    max_geometry_uniform_blocks |
    max_3d_texture_size |
    context_profile_mask |
    stencil_writemask |
    scissor_box |
    minor_version |
    max_compute_uniform_blocks |
    max_server_wait_timeout |
    max_viewports |
    transform_feedback_buffer_size |
    max_combined_fragment_uniform_components |
    texture_binding_1d_array |
    shader_storage_buffer_offset_alignment |
    max_vertex_shader_storage_blocks |
    num_extensions |
    vertex_binding_stride |
    max_varying_floats |
    blend_dst_alpha |
    unpack_skip_rows |
    max_viewport_dims |
    num_shader_binary_formats |
    max_depth_texture_samples |
    vertex_array_binding |
    max_fragment_input_components |
    depth_clear_value |
    unpack_skip_pixels |
    stencil_back_fail |
    stencil_back_ref |
    max_renderbuffer_size |
    polygon_mode |
    max_element_index |
    max_vertex_output_components |
    stencil_back_value_mask |
    max_color_attachments |
    max_combined_texture_image_units |
    max_texture_image_units |
    uniform_buffer_size |
    max_vertex_attrib_bindings |
    max_clip_distances |
    shader_storage_buffer_binding |
    blend |
    texture_compression_hint |
    program_pipeline_binding |
    stencil_value_mask |
    max_texture_lod_bias |
    unpack_row_length |
    pack_skip_pixels |
    max_integer_samples |
    stencil_clear_value |
    color_writemask |
    layer_provoking_vertex |
    shader_compiler |
    max_fragment_uniform_components |
    max_debug_group_stack_depth |
    stencil_test |
    viewport_subpixel_bits |
    point_size_range |
    max_elements_vertices |
    unpack_alignment |
    vertex_binding_offset |
    subpixel_bits |
    transform_feedback_buffer_start |
    max_combined_vertex_uniform_components |
    debug_group_stack_depth |
    depth_range |
    polygon_smooth |
    polygon_offset_line |
    sample_buffers |
    max_cube_map_texture_size |
    logic_op_mode |
    fragment_shader_derivative_hint |
    polygon_offset_factor |
    max_fragment_shader_storage_blocks |
    timestamp |
    primitive_restart_index |
    texture_binding_2d_multisample |
    program_point_size |
    max_uniform_locations |
    uniform_buffer_binding |
    dispatch_indirect_buffer_binding |
    doublebuffer |
    depth_writemask |
    blend_src_rgb |
    max_program_texel_offset |
    max_compute_work_group_count |
    implementation_color_read_format |
    blend_equation |
    stencil_func |
    max_uniform_buffer_bindings |
    pack_swap_bytes |
    uniform_buffer_start |
    texture_binding_2d |
    max_array_texture_layers |
    read_buffer |
    pack_skip_images |
    max_dual_source_draw_buffers |
    max_framebuffer_layers |
    blend_src_alpha |
    max_varying_components |
    pack_lsb_first |
    max_fragment_uniform_blocks |
    max_tess_evaluation_atomic_counters |
    uniform_buffer_offset_alignment |
    blend_dst_rgb |
    vertex_array |
    line_width |
    max_geometry_shader_storage_blocks |
    max_rectangle_texture_size |
    smooth_point_size_range |
    active_texture |
    pack_image_height |
    viewport |
    stencil_fail |
    pixel_pack_buffer_binding |
    min_map_buffer_alignment |
    num_compressed_texture_formats |
    texture_binding_buffer |
    texture_binding_3d |
    max_tess_evaluation_shader_storage_blocks |
    polygon_offset_units
.
-doc "The OpenGL `graphics_reset_status` enum.".
-type graphics_reset_status() :: 
    guilty_context_reset |
    unknown_context_reset |
    innocent_context_reset |
    no_error
.
-doc "The OpenGL `query_target` enum.".
-type query_target() :: 
    transform_feedback_overflow |
    primitives_submitted |
    any_samples_passed_conservative |
    samples_passed |
    any_samples_passed |
    vertices_submitted |
    vertex_shader_invocations |
    time_elapsed |
    transform_feedback_primitives_written |
    primitives_generated
.
-doc "The OpenGL `conditional_render_mode` enum.".
-type conditional_render_mode() :: 
    query_wait |
    query_by_region_no_wait |
    query_by_region_no_wait_inverted |
    query_wait_inverted |
    query_by_region_wait_inverted |
    query_by_region_wait |
    query_no_wait_inverted |
    query_no_wait
.
-doc "The OpenGL `clip_control_origin` enum.".
-type clip_control_origin() :: 
    lower_left |
    upper_left
.
-doc "The OpenGL `stencil_op` enum.".
-type stencil_op() :: 
    incr_wrap |
    incr |
    invert |
    zero |
    decr_wrap |
    keep |
    decr |
    replace
.
-doc "The OpenGL `enable_cap` enum.".
-type enable_cap() :: 
    polygon_offset_fill |
    clip_distance6 |
    dither |
    clip_distance0 |
    depth_test |
    texture_1d |
    clip_distance4 |
    framebuffer_srgb |
    texture_2d |
    line_smooth |
    scissor_test |
    texture_rectangle |
    color_logic_op |
    sample_shading |
    polygon_offset_point |
    depth_clamp |
    cull_face |
    primitive_restart |
    clip_distance1 |
    debug_output_synchronous |
    sample_alpha_to_one |
    primitive_restart_fixed_index |
    blend |
    texture_cube_map_seamless |
    debug_output |
    stencil_test |
    multisample |
    clip_distance3 |
    polygon_smooth |
    polygon_offset_line |
    clip_distance7 |
    texture_cube_map |
    program_point_size |
    sample_coverage |
    sample_alpha_to_coverage |
    rasterizer_discard |
    vertex_array |
    sample_mask |
    clip_distance5 |
    clip_distance2
.
-doc "The OpenGL `vertex_attrib_i_type` enum.".
-type vertex_attrib_i_type() :: 
    short |
    unsigned_byte |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `sync_status` enum.".
-type sync_status() :: 
    condition_satisfied |
    already_signaled |
    wait_failed |
    timeout_expired
.
-doc "The OpenGL `buffer_target_a_r_b` enum.".
-type buffer_target_a_r_b() :: 
    parameter_buffer |
    pixel_unpack_buffer |
    dispatch_indirect_buffer |
    array_buffer |
    copy_read_buffer |
    texture_buffer |
    pixel_pack_buffer |
    transform_feedback_buffer |
    draw_indirect_buffer |
    shader_storage_buffer |
    copy_write_buffer |
    uniform_buffer |
    atomic_counter_buffer |
    query_buffer |
    element_array_buffer
.
-doc "The OpenGL `bind_transform_feedback_target` enum.".
-type bind_transform_feedback_target() :: 
    transform_feedback
.
-doc "The OpenGL `read_buffer_mode` enum.".
-type read_buffer_mode() :: 
    color_attachment2 |
    back_left |
    color_attachment6 |
    back_right |
    color_attachment13 |
    color_attachment5 |
    right |
    color_attachment11 |
    color_attachment0 |
    color_attachment7 |
    left |
    color_attachment12 |
    color_attachment4 |
    color_attachment9 |
    front |
    color_attachment8 |
    color_attachment15 |
    back |
    color_attachment1 |
    color_attachment10 |
    color_attachment3 |
    front_left |
    front_right |
    none |
    color_attachment14
.
-doc "The OpenGL `pixel_type` enum.".
-type pixel_type() :: 
    half_float |
    unsigned_byte_3_3_2 |
    unsigned_short_5_6_5 |
    short |
    float_32_unsigned_int_24_8_rev |
    unsigned_short_5_5_5_1 |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_8_8_8_8 |
    unsigned_byte_2_3_3_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    unsigned_int_24_8 |
    float |
    unsigned_int_5_9_9_9_rev |
    unsigned_short_4_4_4_4_rev |
    unsigned_int_10_10_10_2 |
    unsigned_short_4_4_4_4 |
    unsigned_short_1_5_5_5_rev |
    int |
    unsigned_int |
    unsigned_short_5_6_5_rev |
    unsigned_int_8_8_8_8_rev |
    unsigned_short |
    byte
.
-doc "The OpenGL `buffer_access_a_r_b` enum.".
-type buffer_access_a_r_b() :: 
    write_only |
    read_write |
    read_only
.
-doc "The OpenGL `hint_target` enum.".
-type hint_target() :: 
    line_smooth_hint |
    polygon_smooth_hint |
    program_binary_retrievable_hint |
    texture_compression_hint |
    fragment_shader_derivative_hint
.
-doc "The OpenGL `blend_equation_mode_e_x_t` enum.".
-type blend_equation_mode_e_x_t() :: 
    func_add |
    max |
    func_subtract |
    func_reverse_subtract |
    min
.
-doc "The OpenGL `triangle_face` enum.".
-type triangle_face() :: 
    front |
    back |
    front_and_back
.
-doc "The OpenGL `copy_image_sub_data_target` enum.".
-type copy_image_sub_data_target() :: 
    texture_cube_map_array |
    texture_2d_multisample |
    texture_2d_multisample_array |
    texture_1d |
    texture_2d |
    texture_rectangle |
    texture_2d_array |
    texture_1d_array |
    texture_3d |
    renderbuffer |
    texture_cube_map
.
-doc "The OpenGL `draw_buffer_mode` enum.".
-type draw_buffer_mode() :: 
    color_attachment2 |
    back_left |
    color_attachment16 |
    color_attachment21 |
    color_attachment6 |
    color_attachment29 |
    back_right |
    color_attachment13 |
    color_attachment19 |
    color_attachment22 |
    color_attachment5 |
    right |
    color_attachment11 |
    color_attachment25 |
    color_attachment23 |
    color_attachment0 |
    color_attachment17 |
    color_attachment7 |
    left |
    color_attachment12 |
    color_attachment4 |
    color_attachment18 |
    color_attachment9 |
    color_attachment26 |
    front |
    color_attachment8 |
    color_attachment15 |
    back |
    color_attachment20 |
    color_attachment1 |
    color_attachment10 |
    color_attachment27 |
    color_attachment3 |
    color_attachment31 |
    front_left |
    color_attachment28 |
    front_and_back |
    front_right |
    none |
    color_attachment30 |
    color_attachment24 |
    color_attachment14
.
-doc "The OpenGL `primitive_type` enum.".
-type primitive_type() :: 
    line_strip_adjacency |
    lines_adjacency |
    line_loop |
    points |
    quads |
    triangle_fan |
    patches |
    lines |
    triangle_strip_adjacency |
    line_strip |
    triangle_strip |
    triangles |
    triangles_adjacency
.
-doc "The OpenGL `vertex_attrib_l_type` enum.".
-type vertex_attrib_l_type() :: 
    double
.
-doc "The OpenGL `blit_framebuffer_filter` enum.".
-type blit_framebuffer_filter() :: 
    nearest |
    linear
.
-doc "The OpenGL `framebuffer_attachment` enum.".
-type framebuffer_attachment() :: 
    color_attachment2 |
    color_attachment16 |
    color_attachment21 |
    color_attachment6 |
    color_attachment29 |
    color_attachment13 |
    color_attachment19 |
    color_attachment22 |
    color_attachment5 |
    color_attachment11 |
    color_attachment25 |
    color_attachment23 |
    color_attachment0 |
    color_attachment17 |
    color_attachment7 |
    color_attachment12 |
    color_attachment4 |
    color_attachment18 |
    color_attachment9 |
    color_attachment26 |
    color_attachment8 |
    color_attachment15 |
    color_attachment20 |
    color_attachment1 |
    depth_stencil_attachment |
    color_attachment10 |
    color_attachment27 |
    color_attachment3 |
    color_attachment31 |
    depth_attachment |
    color_attachment28 |
    color_attachment30 |
    color_attachment24 |
    color_attachment14 |
    stencil_attachment
.
-doc "The OpenGL `shader_parameter_name` enum.".
-type shader_parameter_name() :: 
    info_log_length |
    shader_source_length |
    compile_status |
    delete_status |
    shader_type
.
-doc "The OpenGL `polygon_mode` enum.".
-type polygon_mode() :: 
    line |
    fill |
    point
.
-doc "The OpenGL `renderbuffer_target` enum.".
-type renderbuffer_target() :: 
    renderbuffer
.
-doc "The OpenGL `depth_function` enum.".
-type depth_function() :: 
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `hint_mode` enum.".
-type hint_mode() :: 
    fastest |
    dont_care |
    nicest
.
-doc "The OpenGL `stencil_function` enum.".
-type stencil_function() :: 
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `error_code` enum.".
-type error_code() :: 
    invalid_enum |
    stack_underflow |
    invalid_framebuffer_operation |
    invalid_operation |
    out_of_memory |
    no_error |
    invalid_value |
    stack_overflow
.
-doc "The OpenGL `framebuffer_status` enum.".
-type framebuffer_status() :: 
    framebuffer_incomplete_attachment |
    framebuffer_incomplete_missing_attachment |
    framebuffer_incomplete_draw_buffer |
    framebuffer_unsupported |
    framebuffer_undefined |
    framebuffer_incomplete_layer_targets |
    framebuffer_incomplete_multisample |
    framebuffer_complete |
    framebuffer_incomplete_read_buffer
.

-doc "The OpenGL `clear_buffer_mask` bitfield.".
-type clear_buffer_mask() :: [
    depth_buffer_bit |
    color_buffer_bit |
    stencil_buffer_bit
].
-doc "The OpenGL `memory_barrier_mask` bitfield.".
-type memory_barrier_mask() :: [
    query_buffer_barrier_bit |
    vertex_attrib_array_barrier_bit |
    client_mapped_buffer_barrier_bit |
    shader_image_access_barrier_bit |
    element_array_barrier_bit |
    command_barrier_bit |
    buffer_update_barrier_bit |
    uniform_barrier_bit |
    pixel_buffer_barrier_bit |
    framebuffer_barrier_bit |
    transform_feedback_barrier_bit |
    texture_fetch_barrier_bit |
    shader_storage_barrier_bit |
    texture_update_barrier_bit |
    atomic_counter_barrier_bit |
    all_barrier_bits
].
-doc "The OpenGL `sync_behavior_flags` bitfield.".
-type sync_behavior_flags() :: [
    none
].
-doc "The OpenGL `sync_object_mask` bitfield.".
-type sync_object_mask() :: [
    sync_flush_commands_bit
].
-doc "The OpenGL `use_program_stage_mask` bitfield.".
-type use_program_stage_mask() :: [
    compute_shader_bit |
    geometry_shader_bit |
    vertex_shader_bit |
    tess_evaluation_shader_bit |
    fragment_shader_bit |
    all_shader_bits |
    tess_control_shader_bit
].


-nifs([glDisable_raw/1]).
-nifs([glMemoryBarrierByRegion_raw/1]).
-nifs([glTexSubImage2D_raw/9]).
-nifs([glBlendFuncSeparatei_raw/5]).
-nifs([glQueryCounter_raw/2]).
-nifs([glBindRenderbuffer_raw/2]).
-nifs([glEnableVertexAttribArray_raw/1]).
-nifs([glClearStencil_raw/1]).
-nifs([glBeginQueryIndexed_raw/3]).
-nifs([glVertexAttribBinding_raw/2]).
-nifs([glGetProgramInfoLog_raw/2]).
-nifs([glTexStorage2D_raw/5]).
-nifs([glGetProgramPipelineInfoLog_raw/2]).
-nifs([glGetBooleani_v_raw/3]).
-nifs([glIsEnabledi_raw/2]).
-nifs([glCreateBuffers_raw/1]).
-nifs([glStencilOp_raw/3]).
-nifs([glIsRenderbuffer_raw/1]).
-nifs([glGetShaderiv_raw/3]).
-nifs([glTexSubImage1D_raw/7]).
-nifs([glFlush_raw/0]).
-nifs([glPauseTransformFeedback_raw/0]).
-nifs([glIsQuery_raw/1]).
-nifs([glFramebufferTexture1D_raw/5]).
-nifs([glIsTransformFeedback_raw/1]).
-nifs([glReadBuffer_raw/1]).
-nifs([glCreateProgramPipelines_raw/1]).
-nifs([glTextureSubImage2D_raw/9]).
-nifs([glDeleteTransformFeedbacks_raw/2]).
-nifs([glCreateShader_raw/1]).
-nifs([glBindProgramPipeline_raw/1]).
-nifs([glBindImageTexture_raw/7]).
-nifs([glVertexAttribPointer_raw/6]).
-nifs([glCheckNamedFramebufferStatus_raw/2]).
-nifs([glGetInteger64v_raw/2]).
-nifs([glTextureStorage2DMultisample_raw/6]).
-nifs([glDrawArraysInstanced_raw/4]).
-nifs([glDeleteFramebuffers_raw/2]).
-nifs([glPolygonOffset_raw/2]).
-nifs([glEndTransformFeedback_raw/0]).
-nifs([glActiveShaderProgram_raw/2]).
-nifs([glStencilMask_raw/1]).
-nifs([glClampColor_raw/2]).
-nifs([glCopyBufferSubData_raw/5]).
-nifs([glDisableVertexAttribArray_raw/1]).
-nifs([glCreateQueries_raw/2]).
-nifs([glClearDepth_raw/1]).
-nifs([glLinkProgram_raw/1]).
-nifs([glCompileShader_raw/1]).
-nifs([glDetachShader_raw/2]).
-nifs([glGetDoublev_raw/2]).
-nifs([glScissorIndexed_raw/5]).
-nifs([glCopyImageSubData_raw/15]).
-nifs([glCompressedTexImage2D_raw/8]).
-nifs([glAttachShader_raw/2]).
-nifs([glTransformFeedbackBufferRange_raw/5]).
-nifs([glTransformFeedbackBufferBase_raw/3]).
-nifs([glGenerateMipmap_raw/1]).
-nifs([glCreateVertexArrays_raw/1]).
-nifs([glCheckFramebufferStatus_raw/1]).
-nifs([glBlitNamedFramebuffer_raw/12]).
-nifs([glIsProgram_raw/1]).
-nifs([glDisablei_raw/2]).
-nifs([glFenceSync_raw/2]).
-nifs([glGetDoublei_v_raw/3]).
-nifs([glIsShader_raw/1]).
-nifs([glWaitSync_raw/3]).
-nifs([glGenTextures_raw/1]).
-nifs([glEnablei_raw/2]).
-nifs([glValidateProgram_raw/1]).
-nifs([glBindVertexBuffer_raw/4]).
-nifs([glGetStringi_raw/2]).
-nifs([glTexSubImage3D_raw/11]).
-nifs([glMemoryBarrier_raw/1]).
-nifs([glGetnTexImage_raw/5]).
-nifs([glCopyTexImage2D_raw/8]).
-nifs([glBindVertexArray_raw/1]).
-nifs([glTextureSubImage1D_raw/7]).
-nifs([glCreateTransformFeedbacks_raw/1]).
-nifs([glDepthRangeIndexed_raw/3]).
-nifs([glBlitFramebuffer_raw/10]).
-nifs([glNamedRenderbufferStorageMultisample_raw/5]).
-nifs([glGetCompressedTextureSubImage_raw/9]).
-nifs([glStencilMaskSeparate_raw/2]).
-nifs([glVertexAttribFormat_raw/5]).
-nifs([glTextureStorage1D_raw/4]).
-nifs([glScissor_raw/4]).
-nifs([glTexImage2D_raw/9]).
-nifs([glGetError_raw/0]).
-nifs([glIsVertexArray_raw/1]).
-nifs([glCreateTextures_raw/2]).
-nifs([glPointSize_raw/1]).
-nifs([glBindTexture_raw/2]).
-nifs([glDeleteShader_raw/1]).
-nifs([glDepthRange_raw/2]).
-nifs([glGetIntegeri_v_raw/3]).
-nifs([glDrawBuffer_raw/1]).
-nifs([glStencilFunc_raw/3]).
-nifs([glVertexArrayElementBuffer_raw/2]).
-nifs([glGenProgramPipelines_raw/1]).
-nifs([glIsSync_raw/1]).
-nifs([glTexStorage1D_raw/4]).
-nifs([glTexBuffer_raw/3]).
-nifs([glDrawArrays_raw/3]).
-nifs([glFramebufferTexture2D_raw/5]).
-nifs([glVertexAttribIFormat_raw/4]).
-nifs([glProvokingVertex_raw/1]).
-nifs([glLineWidth_raw/1]).
-nifs([glDepthMask_raw/1]).
-nifs([glBlendEquationSeparate_raw/2]).
-nifs([glTextureBufferRange_raw/5]).
-nifs([glCopyTexSubImage3D_raw/9]).
-nifs([glTextureBuffer_raw/3]).
-nifs([glViewport_raw/4]).
-nifs([glGetTextureImage_raw/5]).
-nifs([glInvalidateTexImage_raw/2]).
-nifs([glTexImage3D_raw/10]).
-nifs([glBeginConditionalRender_raw/2]).
-nifs([glTextureStorage3DMultisample_raw/7]).
-nifs([glGetTexImage_raw/5]).
-nifs([glDrawTransformFeedbackInstanced_raw/3]).
-nifs([glDeleteRenderbuffers_raw/2]).
-nifs([glCompressedTexSubImage2D_raw/9]).
-nifs([glBindBuffer_raw/2]).
-nifs([glCopyTexSubImage1D_raw/6]).
-nifs([glDrawArraysInstancedBaseInstance_raw/5]).
-nifs([glVertexBindingDivisor_raw/2]).
-nifs([glBlendFunci_raw/3]).
-nifs([glBufferData_raw/4]).
-nifs([glCompressedTexSubImage1D_raw/7]).
-nifs([glGetShaderSource_raw/2]).
-nifs([glSampleCoverage_raw/2]).
-nifs([glStencilOpSeparate_raw/4]).
-nifs([glCopyTextureSubImage3D_raw/11]).
-nifs([glCopyNamedBufferSubData_raw/5]).
-nifs([glBlendFunc_raw/2]).
-nifs([glUseProgramStages_raw/3]).
-nifs([glHint_raw/2]).
-nifs([glVertexAttribLPointer_raw/0]).
-nifs([glCreateSamplers_raw/1]).
-nifs([glGetBooleanv_raw/2]).
-nifs([glBeginTransformFeedback_raw/1]).
-nifs([glGetGraphicsResetStatus_raw/0]).
-nifs([glPolygonOffsetClamp_raw/3]).
-nifs([glVertexArrayBindingDivisor_raw/3]).
-nifs([glBlendColor_raw/4]).
-nifs([glTexStorage2DMultisample_raw/6]).
-nifs([glEndQueryIndexed_raw/2]).
-nifs([glIsProgramPipeline_raw/1]).
-nifs([glBeginQuery_raw/2]).
-nifs([glCompressedTextureSubImage2D_raw/9]).
-nifs([glTexBufferRange_raw/5]).
-nifs([glReleaseShaderCompiler_raw/0]).
-nifs([glGetFloati_v_raw/3]).
-nifs([glEndQuery_raw/1]).
-nifs([glNamedFramebufferTexture_raw/4]).
-nifs([glDeleteSamplers_raw/2]).
-nifs([glShaderSource_raw/2]).
-nifs([glClear_raw/1]).
-nifs([glFramebufferRenderbuffer_raw/4]).
-nifs([glVertexArrayAttribBinding_raw/3]).
-nifs([glCopyTextureSubImage1D_raw/6]).
-nifs([glValidateProgramPipeline_raw/1]).
-nifs([glTextureStorage2D_raw/5]).
-nifs([glTexImage1D_raw/8]).
-nifs([glInvalidateBufferData_raw/1]).
-nifs([glMinSampleShading_raw/1]).
-nifs([glDrawTransformFeedbackStreamInstanced_raw/4]).
-nifs([glDeleteSync_raw/1]).
-nifs([glPrimitiveRestartIndex_raw/1]).
-nifs([glDrawTransformFeedback_raw/2]).
-nifs([glReadnPixels_raw/7]).
-nifs([glCopyTexSubImage2D_raw/8]).
-nifs([glStencilFuncSeparate_raw/4]).
-nifs([glGetIntegerv_raw/2]).
-nifs([glTextureSubImage3D_raw/11]).
-nifs([glGenVertexArrays_raw/1]).
-nifs([glGenRenderbuffers_raw/1]).
-nifs([glCompressedTextureSubImage1D_raw/7]).
-nifs([glVertexArrayVertexBuffer_raw/5]).
-nifs([glDepthFunc_raw/1]).
-nifs([glGenFramebuffers_raw/1]).
-nifs([glVertexAttribDivisor_raw/2]).
-nifs([glDeleteProgramPipelines_raw/2]).
-nifs([glGetFloatv_raw/2]).
-nifs([glTexStorage3D_raw/6]).
-nifs([glColorMask_raw/4]).
-nifs([glInvalidateBufferSubData_raw/3]).
-nifs([glRenderbufferStorageMultisample_raw/5]).
-nifs([glIsTexture_raw/1]).
-nifs([glTextureView_raw/8]).
-nifs([glIsFramebuffer_raw/1]).
-nifs([glGenSamplers_raw/1]).
-nifs([glGenTransformFeedbacks_raw/1]).
-nifs([glDisableVertexArrayAttrib_raw/2]).
-nifs([glIsSampler_raw/1]).
-nifs([glCompressedTexImage1D_raw/7]).
-nifs([glFrontFace_raw/1]).
-nifs([glTextureBarrier_raw/0]).
-nifs([glVertexArrayAttribFormat_raw/6]).
-nifs([glBlendEquation_raw/1]).
-nifs([glGetString_raw/1]).
-nifs([glClientWaitSync_raw/3]).
-nifs([glGetShaderInfoLog_raw/2]).
-nifs([glGenQueries_raw/1]).
-nifs([glEnable_raw/1]).
-nifs([glIsBuffer_raw/1]).
-nifs([glBlendFuncSeparate_raw/4]).
-nifs([glTextureStorage3D_raw/6]).
-nifs([glBindFramebuffer_raw/2]).
-nifs([glClipControl_raw/2]).
-nifs([glClearColor_raw/4]).
-nifs([glBlendEquationSeparatei_raw/3]).
-nifs([glCompressedTexImage3D_raw/9]).
-nifs([glDeleteQueries_raw/2]).
-nifs([glColorMaski_raw/5]).
-nifs([glFramebufferTexture_raw/4]).
-nifs([glDeleteTextures_raw/2]).
-nifs([glCreateRenderbuffers_raw/1]).
-nifs([glRenderbufferStorage_raw/4]).
-nifs([glIsEnabled_raw/1]).
-nifs([glPolygonMode_raw/2]).
-nifs([glDispatchCompute_raw/3]).
-nifs([glVertexArrayAttribLFormat_raw/5]).
-nifs([glCompressedTexSubImage3D_raw/11]).
-nifs([glDeleteBuffers_raw/2]).
-nifs([glGenBuffers_raw/1]).
-nifs([glActiveTexture_raw/1]).
-nifs([glResumeTransformFeedback_raw/0]).
-nifs([glGetInteger64i_v_raw/3]).
-nifs([glFinish_raw/0]).
-nifs([glCopyTexImage1D_raw/7]).
-nifs([glEnableVertexArrayAttrib_raw/2]).
-nifs([glEndConditionalRender_raw/0]).
-nifs([glTexImage3DMultisample_raw/7]).
-nifs([glCompressedTextureSubImage3D_raw/11]).
-nifs([glBlendEquationi_raw/2]).
-nifs([glInvalidateTexSubImage_raw/8]).
-nifs([glGetTextureSubImage_raw/11]).
-nifs([glCreateProgram_raw/0]).
-nifs([glDrawTransformFeedbackStream_raw/3]).
-nifs([glGenerateTextureMipmap_raw/1]).
-nifs([glTexStorage3DMultisample_raw/7]).
-nifs([glFramebufferTextureLayer_raw/5]).
-nifs([glFramebufferTexture3D_raw/6]).
-nifs([glTexImage2DMultisample_raw/6]).
-nifs([glDispatchComputeIndirect_raw/1]).
-nifs([glCullFace_raw/1]).
-nifs([glDeleteVertexArrays_raw/2]).
-nifs([glShaderStorageBlockBinding_raw/3]).
-nifs([glGetProgramiv_raw/3]).
-nifs([glUseProgram_raw/1]).
-nifs([glReadPixels_raw/7]).
-nifs([glDeleteProgram_raw/1]).
-nifs([glNamedRenderbufferStorage_raw/4]).
-nifs([glVertexAttribLFormat_raw/4]).
-nifs([glCopyTextureSubImage2D_raw/8]).
-nifs([glVertexArrayAttribIFormat_raw/5]).
-nifs([glBindTransformFeedback_raw/2]).

-on_load(init_nif/0).

init_nif() ->
    PrivDir = code:priv_dir(?MODULE),
    NifPath = filename:join(PrivDir, "beam-gl"),
    ok = erlang:load_nif(NifPath, 0).

-doc """
foobar

It implements the `glDisable` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisable) formore information.
""".
-spec disable(Cap :: enable_cap()) -> ok | {error, atom()}.
disable(Cap) ->
    NewCap = case Cap of
        clip_distance2 -> ?GL_CLIP_DISTANCE2;
        clip_distance5 -> ?GL_CLIP_DISTANCE5;
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        clip_distance7 -> ?GL_CLIP_DISTANCE7;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        clip_distance3 -> ?GL_CLIP_DISTANCE3;
        multisample -> ?GL_MULTISAMPLE;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        texture_cube_map_seamless -> ?GL_TEXTURE_CUBE_MAP_SEAMLESS;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        sample_alpha_to_one -> ?GL_SAMPLE_ALPHA_TO_ONE;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        clip_distance1 -> ?GL_CLIP_DISTANCE1;
        primitive_restart -> ?GL_PRIMITIVE_RESTART;
        cull_face -> ?GL_CULL_FACE;
        depth_clamp -> ?GL_DEPTH_CLAMP;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        sample_shading -> ?GL_SAMPLE_SHADING;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        scissor_test -> ?GL_SCISSOR_TEST;
        line_smooth -> ?GL_LINE_SMOOTH;
        texture_2d -> ?GL_TEXTURE_2D;
        framebuffer_srgb -> ?GL_FRAMEBUFFER_SRGB;
        clip_distance4 -> ?GL_CLIP_DISTANCE4;
        texture_1d -> ?GL_TEXTURE_1D;
        depth_test -> ?GL_DEPTH_TEST;
        clip_distance0 -> ?GL_CLIP_DISTANCE0;
        dither -> ?GL_DITHER;
        clip_distance6 -> ?GL_CLIP_DISTANCE6;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glDisable_raw(NewCap).

-doc """
undefined

It implements the `glMemoryBarrierByRegion` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glMemoryBarrierByRegion) formore information.
""".
-spec memory_barrier_by_region(Barriers :: memory_barrier_mask()) -> ok | {error, atom()}.
memory_barrier_by_region(Barriers) ->
    NewBarriers = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_barrier_bits -> ?GL_ALL_BARRIER_BITS;
            atomic_counter_barrier_bit -> ?GL_ATOMIC_COUNTER_BARRIER_BIT;
            texture_update_barrier_bit -> ?GL_TEXTURE_UPDATE_BARRIER_BIT;
            shader_storage_barrier_bit -> ?GL_SHADER_STORAGE_BARRIER_BIT;
            texture_fetch_barrier_bit -> ?GL_TEXTURE_FETCH_BARRIER_BIT;
            transform_feedback_barrier_bit -> ?GL_TRANSFORM_FEEDBACK_BARRIER_BIT;
            framebuffer_barrier_bit -> ?GL_FRAMEBUFFER_BARRIER_BIT;
            pixel_buffer_barrier_bit -> ?GL_PIXEL_BUFFER_BARRIER_BIT;
            uniform_barrier_bit -> ?GL_UNIFORM_BARRIER_BIT;
            buffer_update_barrier_bit -> ?GL_BUFFER_UPDATE_BARRIER_BIT;
            command_barrier_bit -> ?GL_COMMAND_BARRIER_BIT;
            element_array_barrier_bit -> ?GL_ELEMENT_ARRAY_BARRIER_BIT;
            shader_image_access_barrier_bit -> ?GL_SHADER_IMAGE_ACCESS_BARRIER_BIT;
            client_mapped_buffer_barrier_bit -> ?GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT;
            vertex_attrib_array_barrier_bit -> ?GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT;
            query_buffer_barrier_bit -> ?GL_QUERY_BUFFER_BARRIER_BIT
        end,
        L bor R
    end, 16#00, Barriers),
    glMemoryBarrierByRegion_raw(NewBarriers).

-doc """
Specify a two-dimensional texture subimage.

It implements the `glTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexSubImage2D) formore information.
""".
-spec tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, NewType, Pixels).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparatei` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFuncSeparatei) formore information.
""".
-spec blend_func_separate(
    Buffer :: pos_integer(),
    SourceRGB :: blending_factor(),
    DestinationRGB :: blending_factor(),
    SourceAlpha :: blending_factor(),
    DestinationAlpha :: blending_factor()
) -> ok | {error, atom()}.
blend_func_separate(Buffer, SourceRGB, DestinationRGB, SourceAlpha, DestinationAlpha) ->
    NewDestinationAlpha = case DestinationAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewSourceAlpha = case SourceAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewDestinationRGB = case DestinationRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewSourceRGB = case SourceRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,

    glBlendFuncSeparatei_raw(Buffer, NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha).

-doc """
Record the GL time into a query object after all previous commands have reached the GL server but have not yet necessarily executed.

It implements the `glQueryCounter` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glQueryCounter) formore information.
""".
-spec query_counter(
    Query :: query(),
    Target :: query_counter_target()
) -> ok | {error, atom()}.
query_counter(Query, Target) ->
    NewTarget = case Target of
        timestamp -> ?GL_TIMESTAMP
    end,

    glQueryCounter_raw(Query, NewTarget).

-doc """
Bind a renderbuffer to a renderbuffer target.

It implements the `glBindRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindRenderbuffer) formore information.
""".
-spec bind_render_buffer(
    Target :: renderbuffer_target(),
    Buffer :: render_buffer()
) -> ok | {error, atom()}.
bind_render_buffer(Target, Buffer) ->
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glBindRenderbuffer_raw(NewTarget, Buffer).

-doc """
Enable or disable a generic vertex attribute
    array.

It implements the `glEnableVertexAttribArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnableVertexAttribArray) formore information.
""".
-spec enable_vertex_attrib_array(Index :: pos_integer()) -> ok | {error, atom()}.
enable_vertex_attrib_array(Index) ->

    glEnableVertexAttribArray_raw(Index).

-doc """
Specify the clear value for the stencil buffer.

It implements the `glClearStencil` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClearStencil) formore information.
""".
-spec clear_stencil(S :: integer()) -> ok | {error, atom()}.
clear_stencil(S) ->

    glClearStencil_raw(S).

-doc """
Delimit the boundaries of a query object on an indexed target.

It implements the `glBeginQueryIndexed` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginQueryIndexed) formore information.
""".
-spec begin_query_indexed(
    Target :: query_target(),
    Index :: pos_integer(),
    Query :: query()
) -> ok | {error, atom()}.
begin_query_indexed(Target, Index, Query) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        time_elapsed -> ?GL_TIME_ELAPSED;
        vertex_shader_invocations -> ?GL_VERTEX_SHADER_INVOCATIONS;
        vertices_submitted -> ?GL_VERTICES_SUBMITTED;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        samples_passed -> ?GL_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE;
        primitives_submitted -> ?GL_PRIMITIVES_SUBMITTED;
        transform_feedback_overflow -> ?GL_TRANSFORM_FEEDBACK_OVERFLOW
    end,

    glBeginQueryIndexed_raw(NewTarget, Index, Query).

-doc """
Associate a vertex attribute and a vertex buffer binding for a vertex array object.

It implements the `glVertexAttribBinding` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribBinding) formore information.
""".
-spec vertex_attrib_binding(
    AttribIndex :: pos_integer(),
    BindingIndex :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_binding(AttribIndex, BindingIndex) ->

    glVertexAttribBinding_raw(AttribIndex, BindingIndex).

-doc """
Returns the information log for a program object.

It implements the `glGetProgramInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetProgramInfoLog) formore information.
""".
-spec get_program_info_log(
    Program :: program(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_info_log(Program, StringSize) ->

    glGetProgramInfoLog_raw(Program, StringSize).

-doc """
Simultaneously specify storage for all levels of a two-dimensional or one-dimensional array texture.

It implements the `glTexStorage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexStorage2D) formore information.
""".
-spec tex_storage_2d(
    Target :: texture_target(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
tex_storage_2d(Target, Levels, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexStorage2D_raw(NewTarget, Levels, NewInternalFormat, Width, Height).

-doc """
Retrieve the info log string from a program pipeline object.

It implements the `glGetProgramPipelineInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetProgramPipelineInfoLog) formore information.
""".
-spec get_program_pipeline_info_log(
    Pipeline :: program_pipeline(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_pipeline_info_log(Pipeline, StringSize) ->

    glGetProgramPipelineInfoLog_raw(Pipeline, StringSize).

-doc """
undefined

It implements the `glGetBooleani_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetBooleani_v) formore information.
""".
-spec get_boolean(
    Target :: buffer_target_a_r_b(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Target, Index, N) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        query_buffer -> ?GL_QUERY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER;
        parameter_buffer -> ?GL_PARAMETER_BUFFER
    end,

    glGetBooleani_v_raw(NewTarget, Index, N).

-doc """
undefined

It implements the `glIsEnabledi` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsEnabledi) formore information.
""".
-spec is_enabled(
    Capability :: enable_cap(),
    Index :: pos_integer()
) -> {ok, NoName :: boolean()} | {error, atom()}.
is_enabled(Capability, Index) ->
    NewCapability = case Capability of
        clip_distance2 -> ?GL_CLIP_DISTANCE2;
        clip_distance5 -> ?GL_CLIP_DISTANCE5;
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        clip_distance7 -> ?GL_CLIP_DISTANCE7;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        clip_distance3 -> ?GL_CLIP_DISTANCE3;
        multisample -> ?GL_MULTISAMPLE;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        texture_cube_map_seamless -> ?GL_TEXTURE_CUBE_MAP_SEAMLESS;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        sample_alpha_to_one -> ?GL_SAMPLE_ALPHA_TO_ONE;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        clip_distance1 -> ?GL_CLIP_DISTANCE1;
        primitive_restart -> ?GL_PRIMITIVE_RESTART;
        cull_face -> ?GL_CULL_FACE;
        depth_clamp -> ?GL_DEPTH_CLAMP;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        sample_shading -> ?GL_SAMPLE_SHADING;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        scissor_test -> ?GL_SCISSOR_TEST;
        line_smooth -> ?GL_LINE_SMOOTH;
        texture_2d -> ?GL_TEXTURE_2D;
        framebuffer_srgb -> ?GL_FRAMEBUFFER_SRGB;
        clip_distance4 -> ?GL_CLIP_DISTANCE4;
        texture_1d -> ?GL_TEXTURE_1D;
        depth_test -> ?GL_DEPTH_TEST;
        clip_distance0 -> ?GL_CLIP_DISTANCE0;
        dither -> ?GL_DITHER;
        clip_distance6 -> ?GL_CLIP_DISTANCE6;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glIsEnabledi_raw(NewCapability, Index).

-doc """
Create buffer objects.

It implements the `glCreateBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateBuffers) formore information.
""".
-spec create_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
create_buffers(N) ->

    glCreateBuffers_raw(N).

-doc """
Set front and back stencil test actions.

It implements the `glStencilOp` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilOp) formore information.
""".
-spec stencil_op(
    Fail :: stencil_op(),
    ZFail :: stencil_op(),
    ZPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op(Fail, ZFail, ZPass) ->
    NewZPass = case ZPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewZFail = case ZFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFail = case Fail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,

    glStencilOp_raw(NewFail, NewZFail, NewZPass).

-doc """
Determine if a name corresponds to a renderbuffer object.

It implements the `glIsRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsRenderbuffer) formore information.
""".
-spec is_renderbuffer(Buffer :: render_buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_renderbuffer(Buffer) ->

    glIsRenderbuffer_raw(Buffer).

-doc """
undefined

It implements the `glGetShaderiv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetShaderiv) formore information.
""".
-spec get_shader_iv(
    Shader :: shader(),
    PName :: shader_parameter_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_shader_iv(Shader, PName, N) ->
    NewPName = case PName of
        shader_type -> ?GL_SHADER_TYPE;
        delete_status -> ?GL_DELETE_STATUS;
        compile_status -> ?GL_COMPILE_STATUS;
        shader_source_length -> ?GL_SHADER_SOURCE_LENGTH;
        info_log_length -> ?GL_INFO_LOG_LENGTH
    end,

    glGetShaderiv_raw(Shader, NewPName, N).

-doc """
Specify a one-dimensional texture subimage.

It implements the `glTexSubImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexSubImage1D) formore information.
""".
-spec tex_sub_image_1d(
    Target :: texture_target(),
    Level :: integer(),
    Offset :: integer(),
    Width :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_sub_image_1d(Target, Level, Offset, Width, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexSubImage1D_raw(NewTarget, Level, Offset, Width, NewFormat, NewType, Pixels).

-doc """
Force execution of GL commands in finite time.

It implements the `glFlush` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFlush) formore information.
""".
-spec flush() -> ok | {error, atom()}.
flush() ->

    glFlush_raw().

-doc """
Pause transform feedback operations.

It implements the `glPauseTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPauseTransformFeedback) formore information.
""".
-spec pause_transform_feedback() -> ok | {error, atom()}.
pause_transform_feedback() ->

    glPauseTransformFeedback_raw().

-doc """
Determine if a name corresponds to a query object.

It implements the `glIsQuery` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsQuery) formore information.
""".
-spec is_query(Query :: query()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_query(Query) ->

    glIsQuery_raw(Query).

-doc """
undefined

It implements the `glFramebufferTexture1D` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTexture1D) formore information.
""".
-spec framebuffer_texture_1d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_1d(Target, Attachment, TextureTarget, Texture, Level) ->
    NewTextureTarget = case TextureTarget of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTexture1D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level).

-doc """
Determine if a name corresponds to a transform feedback object.

It implements the `glIsTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsTransformFeedback) formore information.
""".
-spec is_transform_feedback(Feedback :: transform_feedback()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_transform_feedback(Feedback) ->

    glIsTransformFeedback_raw(Feedback).

-doc """
Select a color buffer source for pixels.

It implements the `glReadBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glReadBuffer) formore information.
""".
-spec read_buffer(Source :: read_buffer_mode()) -> ok | {error, atom()}.
read_buffer(Source) ->
    NewSource = case Source of
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        none -> ?GL_NONE;
        front_right -> ?GL_FRONT_RIGHT;
        front_left -> ?GL_FRONT_LEFT;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        back -> ?GL_BACK;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        front -> ?GL_FRONT;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        left -> ?GL_LEFT;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        right -> ?GL_RIGHT;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        back_right -> ?GL_BACK_RIGHT;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        back_left -> ?GL_BACK_LEFT;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,

    glReadBuffer_raw(NewSource).

-doc """
Create program pipeline objects.

It implements the `glCreateProgramPipelines` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateProgramPipelines) formore information.
""".
-spec create_program_pipelines(N :: pos_integer()) -> {ok, Pipelines :: [program_pipeline()]} | {error, atom()}.
create_program_pipelines(N) ->

    glCreateProgramPipelines_raw(N).

-doc """
Specify a two-dimensional texture subimage.

It implements the `glTextureSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureSubImage2D) formore information.
""".
-spec texture_sub_image_2d(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
texture_sub_image_2d(Texture, Level, OffsetX, OffsetY, Width, Height, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glTextureSubImage2D_raw(Texture, Level, OffsetX, OffsetY, Width, Height, NewFormat, NewType, Pixels).

-doc """
Delete transform feedback objects.

It implements the `glDeleteTransformFeedbacks` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteTransformFeedbacks) formore information.
""".
-spec delete_transform_feedbacks(
    N :: integer(),
    Feedbacks :: [transform_feedback()]
) -> ok | {error, atom()}.
delete_transform_feedbacks(N, Feedbacks) ->
    NewFeedbacks = << <<ID:32/native>> || ID <- Feedbacks >>,
    glDeleteTransformFeedbacks_raw(N, NewFeedbacks).

-doc """
Creates a shader object.

It implements the `glCreateShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateShader) formore information.
""".
-spec create_shader(Type :: shader_type()) -> {ok, NoName :: shader()} | {error, atom()}.
create_shader(Type) ->
    NewType = case Type of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        compute_shader -> ?GL_COMPUTE_SHADER;
        tess_evaluation_shader -> ?GL_TESS_EVALUATION_SHADER;
        geometry_shader -> ?GL_GEOMETRY_SHADER;
        tess_control_shader -> ?GL_TESS_CONTROL_SHADER
    end,

    glCreateShader_raw(NewType).

-doc """
Bind a program pipeline to the current context.

It implements the `glBindProgramPipeline` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindProgramPipeline) formore information.
""".
-spec bind_program_pipeline(Pipeline :: program_pipeline()) -> ok | {error, atom()}.
bind_program_pipeline(Pipeline) ->

    glBindProgramPipeline_raw(Pipeline).

-doc """
Bind a level of a texture to an image unit.

It implements the `glBindImageTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindImageTexture) formore information.
""".
-spec bind_image_texture(
    Unit :: pos_integer(),
    Texture :: texture(),
    Level :: integer(),
    Layered :: boolean(),
    Layer :: integer(),
    Access :: buffer_access_a_r_b(),
    Format :: internal_format()
) -> ok | {error, atom()}.
bind_image_texture(Unit, Texture, Level, Layered, Layer, Access, Format) ->
    NewFormat = case Format of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewAccess = case Access of
        read_only -> ?GL_READ_ONLY;
        read_write -> ?GL_READ_WRITE;
        write_only -> ?GL_WRITE_ONLY
    end,

    glBindImageTexture_raw(Unit, Texture, Level, Layered, Layer, NewAccess, NewFormat).

-doc """
Define an array of generic vertex attribute data.

It implements the `glVertexAttribPointer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribPointer) formore information.
""".
-spec vertex_attrib_pointer(
    Index :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_pointer_type(),
    Normalized :: boolean(),
    Stride :: integer(),
    Pointer :: integer()
) -> ok | {error, atom()}.
vertex_attrib_pointer(Index, Size, Type, Normalized, Stride, Pointer) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        double -> ?GL_DOUBLE;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    glVertexAttribPointer_raw(Index, Size, NewType, Normalized, Stride, Pointer).

-doc """
Check the completeness status of a framebuffer.

It implements the `glCheckNamedFramebufferStatus` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCheckNamedFramebufferStatus) formore information.
""".
-spec check_named_framebuffer_status(
    Framebuffer :: frame_buffer(),
    Target :: framebuffer_target()
) -> {ok, NoName :: framebuffer_status()} | {error, atom()}.
check_named_framebuffer_status(Framebuffer, Target) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glCheckNamedFramebufferStatus_raw(Framebuffer, NewTarget).

-doc """
undefined

It implements the `glGetInteger64v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetInteger64v) formore information.
""".
-spec get_integer64(
    PName :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer64(PName, N) ->
    NewPName = case PName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetInteger64v_raw(NewPName, N).

-doc """
Specify storage for a two-dimensional multisample texture.

It implements the `glTextureStorage2DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureStorage2DMultisample) formore information.
""".
-spec texture_storage_2d_multisample(
    Texture :: texture(),
    Samples :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
texture_storage_2d_multisample(Texture, Samples, InternalFormat, Width, Height, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureStorage2DMultisample_raw(Texture, Samples, NewInternalFormat, Width, Height, FixedSampleLocations).

-doc """
Draw multiple instances of a range of elements.

It implements the `glDrawArraysInstanced` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawArraysInstanced) formore information.
""".
-spec draw_arrays_instanced(
    Mode :: primitive_type(),
    First :: integer(),
    Count :: integer(),
    InstanceCount :: integer()
) -> ok | {error, atom()}.
draw_arrays_instanced(Mode, First, Count, InstanceCount) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawArraysInstanced_raw(NewMode, First, Count, InstanceCount).

-doc """
Delete framebuffer objects.

It implements the `glDeleteFramebuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteFramebuffers) formore information.
""".
-spec delete_framebuffers(
    N :: integer(),
    Buffers :: [frame_buffer()]
) -> ok | {error, atom()}.
delete_framebuffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteFramebuffers_raw(N, NewBuffers).

-doc """
Set the scale and units used to calculate depth values.

It implements the `glPolygonOffset` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPolygonOffset) formore information.
""".
-spec polygon_offset(
    Factor :: float(),
    Units :: float()
) -> ok | {error, atom()}.
polygon_offset(Factor, Units) ->

    glPolygonOffset_raw(Factor, Units).

-doc """
undefined

It implements the `glEndTransformFeedback` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndTransformFeedback) formore information.
""".
-spec end_transform_feedback() -> ok | {error, atom()}.
end_transform_feedback() ->

    glEndTransformFeedback_raw().

-doc """
Set the active program object for a program pipeline object.

It implements the `glActiveShaderProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glActiveShaderProgram) formore information.
""".
-spec active_shader_program(
    Pipeline :: program_pipeline(),
    Program :: program()
) -> ok | {error, atom()}.
active_shader_program(Pipeline, Program) ->

    glActiveShaderProgram_raw(Pipeline, Program).

-doc """
Control the front and back writing of individual bits in the stencil planes.

It implements the `glStencilMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilMask) formore information.
""".
-spec stencil_mask(Mask :: pos_integer()) -> ok | {error, atom()}.
stencil_mask(Mask) ->

    glStencilMask_raw(Mask).

-doc """
Specify whether data read via.

It implements the `glClampColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClampColor) formore information.
""".
-spec clamp_color(
    Target :: clamp_color_target_a_r_b(),
    Clamp :: clamp_color_mode_a_r_b()
) -> ok | {error, atom()}.
clamp_color(Target, Clamp) ->
    NewClamp = case Clamp of
        fixed_only -> ?GL_FIXED_ONLY;
        false -> ?GL_FALSE;
        true -> ?GL_TRUE
    end,
    NewTarget = case Target of
        clamp_read_color -> ?GL_CLAMP_READ_COLOR
    end,

    glClampColor_raw(NewTarget, NewClamp).

-doc """
Copy all or part of the data store of a buffer object to the data store of another buffer object.

It implements the `glCopyBufferSubData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyBufferSubData) formore information.
""".
-spec copy_buffer_sub_data(
    ReadTarget :: copy_buffer_sub_data_target(),
    WriteTarget :: copy_buffer_sub_data_target(),
    ReadOffset :: integer(),
    WriteOffset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
copy_buffer_sub_data(ReadTarget, WriteTarget, ReadOffset, WriteOffset, Size) ->
    NewWriteTarget = case WriteTarget of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        query_buffer -> ?GL_QUERY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,
    NewReadTarget = case ReadTarget of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        query_buffer -> ?GL_QUERY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    glCopyBufferSubData_raw(NewReadTarget, NewWriteTarget, ReadOffset, WriteOffset, Size).

-doc """
undefined

It implements the `glDisableVertexAttribArray` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisableVertexAttribArray) formore information.
""".
-spec disable_vertex_attrib_array(Index :: pos_integer()) -> ok | {error, atom()}.
disable_vertex_attrib_array(Index) ->

    glDisableVertexAttribArray_raw(Index).

-doc """
Create query objects.

It implements the `glCreateQueries` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateQueries) formore information.
""".
-spec create_queries(
    Target :: query_target(),
    N :: pos_integer()
) -> {ok, Queries :: [query()]} | {error, atom()}.
create_queries(Target, N) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        time_elapsed -> ?GL_TIME_ELAPSED;
        vertex_shader_invocations -> ?GL_VERTEX_SHADER_INVOCATIONS;
        vertices_submitted -> ?GL_VERTICES_SUBMITTED;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        samples_passed -> ?GL_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE;
        primitives_submitted -> ?GL_PRIMITIVES_SUBMITTED;
        transform_feedback_overflow -> ?GL_TRANSFORM_FEEDBACK_OVERFLOW
    end,

    glCreateQueries_raw(NewTarget, N).

-doc """
Specify the clear value for the depth buffer.

It implements the `glClearDepth` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClearDepth) formore information.
""".
-spec clear_depth(Depth :: float()) -> ok | {error, atom()}.
clear_depth(Depth) ->

    glClearDepth_raw(Depth).

-doc """
Links a program object.

It implements the `glLinkProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glLinkProgram) formore information.
""".
-spec link_program(Program :: program()) -> ok | {error, atom()}.
link_program(Program) ->

    glLinkProgram_raw(Program).

-doc """
Compiles a shader object.

It implements the `glCompileShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompileShader) formore information.
""".
-spec compile_shader(Shader :: shader()) -> ok | {error, atom()}.
compile_shader(Shader) ->

    glCompileShader_raw(Shader).

-doc """
Detaches a shader object from a program object to which it is attached.

It implements the `glDetachShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDetachShader) formore information.
""".
-spec detach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
detach_shader(Program, Shader) ->

    glDetachShader_raw(Program, Shader).

-doc """
foobar

It implements the `glGetDoublev` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetDoublev) formore information.
""".
-spec get_double(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [float()]} | {error, atom()}.
get_double(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetDoublev_raw(NewName, N).

-doc """
Define the scissor box for a specific viewport.

It implements the `glScissorIndexed` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glScissorIndexed) formore information.
""".
-spec scissor_indexed(
    Index :: pos_integer(),
    Left :: integer(),
    Bottom :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
scissor_indexed(Index, Left, Bottom, Width, Height) ->

    glScissorIndexed_raw(Index, Left, Bottom, Width, Height).

-doc """
Perform a raw data copy between two images.

It implements the `glCopyImageSubData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyImageSubData) formore information.
""".
-spec copy_image_sub_data(
    SrcName :: pos_integer(),
    SrcTarget :: copy_image_sub_data_target(),
    SrcLevel :: integer(),
    SrcX :: integer(),
    SrcY :: integer(),
    SrcZ :: integer(),
    DstName :: pos_integer(),
    DstTarget :: copy_image_sub_data_target(),
    DstLevel :: integer(),
    DstX :: integer(),
    DstY :: integer(),
    DstZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
copy_image_sub_data(SrcName, SrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, DstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth) ->
    NewDstTarget = case DstTarget of
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,
    NewSrcTarget = case SrcTarget of
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY
    end,

    glCopyImageSubData_raw(SrcName, NewSrcTarget, SrcLevel, SrcX, SrcY, SrcZ, DstName, NewDstTarget, DstLevel, DstX, DstY, DstZ, Width, Height, Depth).

-doc """
Specify a two-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTexImage2D) formore information.
""".
-spec compressed_tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, ImageSize, ImageData) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCompressedTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, ImageSize, ImageData).

-doc """
Attaches a shader object to a program object.

It implements the `glAttachShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glAttachShader) formore information.
""".
-spec attach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
attach_shader(Program, Shader) ->

    glAttachShader_raw(Program, Shader).

-doc """
Bind a range within a buffer object to a transform feedback buffer object.

It implements the `glTransformFeedbackBufferRange` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTransformFeedbackBufferRange) formore information.
""".
-spec transform_feedback_buffer_range(
    Feedback :: transform_feedback(),
    Index :: pos_integer(),
    Buffer :: buffer(),
    Offset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
transform_feedback_buffer_range(Feedback, Index, Buffer, Offset, Size) ->

    glTransformFeedbackBufferRange_raw(Feedback, Index, Buffer, Offset, Size).

-doc """
Bind a buffer object to a transform feedback buffer object.

It implements the `glTransformFeedbackBufferBase` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTransformFeedbackBufferBase) formore information.
""".
-spec transform_feedback_buffer_base(
    Feedback :: transform_feedback(),
    Index :: pos_integer(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
transform_feedback_buffer_base(Feedback, Index, Buffer) ->

    glTransformFeedbackBufferBase_raw(Feedback, Index, Buffer).

-doc """
Generate mipmaps for a specified texture object.

It implements the `glGenerateMipmap` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenerateMipmap) formore information.
""".
-spec generate_mipmap(Target :: texture_target()) -> ok | {error, atom()}.
generate_mipmap(Target) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glGenerateMipmap_raw(NewTarget).

-doc """
Create vertex array objects.

It implements the `glCreateVertexArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateVertexArrays) formore information.
""".
-spec create_vertex_arrays(N :: pos_integer()) -> {ok, Arrays :: [vertex_array()]} | {error, atom()}.
create_vertex_arrays(N) ->

    glCreateVertexArrays_raw(N).

-doc """
Check the completeness status of a framebuffer.

It implements the `glCheckFramebufferStatus` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCheckFramebufferStatus) formore information.
""".
-spec check_framebuffer_status(Target :: framebuffer_target()) -> {ok, NoName :: framebuffer_status()} | {error, atom()}.
check_framebuffer_status(Target) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glCheckFramebufferStatus_raw(NewTarget).

-doc """
Copy a block of pixels from one framebuffer object to another.

It implements the `glBlitNamedFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlitNamedFramebuffer) formore information.
""".
-spec blit_named_framebuffer(
    ReadFramebuffer :: frame_buffer(),
    DrawFramebuffer :: frame_buffer(),
    SrcX0 :: integer(),
    SrcY0 :: integer(),
    SrcX1 :: integer(),
    SrcY1 :: integer(),
    DstX0 :: integer(),
    DstY0 :: integer(),
    DstX1 :: integer(),
    DstY1 :: integer(),
    Mask :: clear_buffer_mask(),
    Filter :: blit_framebuffer_filter()
) -> ok | {error, atom()}.
blit_named_framebuffer(ReadFramebuffer, DrawFramebuffer, SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter) ->
    NewFilter = case Filter of
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST
    end,
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    glBlitNamedFramebuffer_raw(ReadFramebuffer, DrawFramebuffer, SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, NewMask, NewFilter).

-doc """
Determines if a name corresponds to a program object.

It implements the `glIsProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsProgram) formore information.
""".
-spec is_program(Program :: program()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_program(Program) ->

    glIsProgram_raw(Program).

-doc """
undefined

It implements the `glDisablei` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisablei) formore information.
""".
-spec disable(
    Capability :: enable_cap(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
disable(Capability, Index) ->
    NewCapability = case Capability of
        clip_distance2 -> ?GL_CLIP_DISTANCE2;
        clip_distance5 -> ?GL_CLIP_DISTANCE5;
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        clip_distance7 -> ?GL_CLIP_DISTANCE7;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        clip_distance3 -> ?GL_CLIP_DISTANCE3;
        multisample -> ?GL_MULTISAMPLE;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        texture_cube_map_seamless -> ?GL_TEXTURE_CUBE_MAP_SEAMLESS;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        sample_alpha_to_one -> ?GL_SAMPLE_ALPHA_TO_ONE;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        clip_distance1 -> ?GL_CLIP_DISTANCE1;
        primitive_restart -> ?GL_PRIMITIVE_RESTART;
        cull_face -> ?GL_CULL_FACE;
        depth_clamp -> ?GL_DEPTH_CLAMP;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        sample_shading -> ?GL_SAMPLE_SHADING;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        scissor_test -> ?GL_SCISSOR_TEST;
        line_smooth -> ?GL_LINE_SMOOTH;
        texture_2d -> ?GL_TEXTURE_2D;
        framebuffer_srgb -> ?GL_FRAMEBUFFER_SRGB;
        clip_distance4 -> ?GL_CLIP_DISTANCE4;
        texture_1d -> ?GL_TEXTURE_1D;
        depth_test -> ?GL_DEPTH_TEST;
        clip_distance0 -> ?GL_CLIP_DISTANCE0;
        dither -> ?GL_DITHER;
        clip_distance6 -> ?GL_CLIP_DISTANCE6;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glDisablei_raw(NewCapability, Index).

-doc """
Create a new sync object and insert it into the GL command stream.

It implements the `glFenceSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFenceSync) formore information.
""".
-spec fence_sync(
    Condition :: sync_condition(),
    Flags :: sync_behavior_flags()
) -> {ok, NoName :: sync()} | {error, atom()}.
fence_sync(Condition, Flags) ->
    NewFlags = lists:foldl(fun(Field, L) ->
        R = case Field of
            none -> ?GL_NONE
        end,
        L bor R
    end, 16#00, Flags),    NewCondition = case Condition of
        sync_gpu_commands_complete -> ?GL_SYNC_GPU_COMMANDS_COMPLETE
    end,

    glFenceSync_raw(NewCondition, NewFlags).

-doc """
undefined

It implements the `glGetDoublei_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetDoublei_v) formore information.
""".
-spec get_double(
    Target :: get_p_name(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [float()]} | {error, atom()}.
get_double(Target, Index, N) ->
    NewTarget = case Target of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetDoublei_v_raw(NewTarget, Index, N).

-doc """
Determines if a name corresponds to a shader object.

It implements the `glIsShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsShader) formore information.
""".
-spec is_shader(Shader :: shader()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_shader(Shader) ->

    glIsShader_raw(Shader).

-doc """
Instruct the GL server to block until the specified sync object becomes signaled.

It implements the `glWaitSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glWaitSync) formore information.
""".
-spec wait_sync(
    Sync :: sync(),
    Flags :: sync_behavior_flags(),
    Timeout :: pos_integer()
) -> ok | {error, atom()}.
wait_sync(Sync, Flags, Timeout) ->
    NewFlags = lists:foldl(fun(Field, L) ->
        R = case Field of
            none -> ?GL_NONE
        end,
        L bor R
    end, 16#00, Flags),
    glWaitSync_raw(Sync, NewFlags, Timeout).

-doc """
Generate texture names.

It implements the `glGenTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenTextures) formore information.
""".
-spec gen_textures(N :: pos_integer()) -> {ok, Textures :: [texture()]} | {error, atom()}.
gen_textures(N) ->

    glGenTextures_raw(N).

-doc """
undefined

It implements the `glEnablei` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnablei) formore information.
""".
-spec enable(
    Capability :: enable_cap(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
enable(Capability, Index) ->
    NewCapability = case Capability of
        clip_distance2 -> ?GL_CLIP_DISTANCE2;
        clip_distance5 -> ?GL_CLIP_DISTANCE5;
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        clip_distance7 -> ?GL_CLIP_DISTANCE7;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        clip_distance3 -> ?GL_CLIP_DISTANCE3;
        multisample -> ?GL_MULTISAMPLE;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        texture_cube_map_seamless -> ?GL_TEXTURE_CUBE_MAP_SEAMLESS;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        sample_alpha_to_one -> ?GL_SAMPLE_ALPHA_TO_ONE;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        clip_distance1 -> ?GL_CLIP_DISTANCE1;
        primitive_restart -> ?GL_PRIMITIVE_RESTART;
        cull_face -> ?GL_CULL_FACE;
        depth_clamp -> ?GL_DEPTH_CLAMP;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        sample_shading -> ?GL_SAMPLE_SHADING;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        scissor_test -> ?GL_SCISSOR_TEST;
        line_smooth -> ?GL_LINE_SMOOTH;
        texture_2d -> ?GL_TEXTURE_2D;
        framebuffer_srgb -> ?GL_FRAMEBUFFER_SRGB;
        clip_distance4 -> ?GL_CLIP_DISTANCE4;
        texture_1d -> ?GL_TEXTURE_1D;
        depth_test -> ?GL_DEPTH_TEST;
        clip_distance0 -> ?GL_CLIP_DISTANCE0;
        dither -> ?GL_DITHER;
        clip_distance6 -> ?GL_CLIP_DISTANCE6;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glEnablei_raw(NewCapability, Index).

-doc """
Validates a program object.

It implements the `glValidateProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glValidateProgram) formore information.
""".
-spec validate_program(Program :: program()) -> ok | {error, atom()}.
validate_program(Program) ->

    glValidateProgram_raw(Program).

-doc """
Bind a buffer to a vertex buffer bind point.

It implements the `glBindVertexBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindVertexBuffer) formore information.
""".
-spec bind_vertex_buffer(
    BindingIndex :: pos_integer(),
    Buffer :: buffer(),
    Offset :: integer(),
    Stride :: integer()
) -> ok | {error, atom()}.
bind_vertex_buffer(BindingIndex, Buffer, Offset, Stride) ->

    glBindVertexBuffer_raw(BindingIndex, Buffer, Offset, Stride).

-doc """
Return a string describing the current GL connection.

It implements the `glGetStringi` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetStringi) formore information.
""".
-spec get_string(
    Name :: string_name(),
    Index :: pos_integer()
) -> {ok, NoName :: string() | binary()} | {error, atom()}.
get_string(Name, Index) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    glGetStringi_raw(NewName, Index).

-doc """
Specify a three-dimensional texture subimage.

It implements the `glTexSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexSubImage3D) formore information.
""".
-spec tex_sub_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, NewType, Pixels).

-doc """
Defines a barrier ordering memory transactions.

It implements the `glMemoryBarrier` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glMemoryBarrier) formore information.
""".
-spec memory_barrier(Barriers :: memory_barrier_mask()) -> ok | {error, atom()}.
memory_barrier(Barriers) ->
    NewBarriers = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_barrier_bits -> ?GL_ALL_BARRIER_BITS;
            atomic_counter_barrier_bit -> ?GL_ATOMIC_COUNTER_BARRIER_BIT;
            texture_update_barrier_bit -> ?GL_TEXTURE_UPDATE_BARRIER_BIT;
            shader_storage_barrier_bit -> ?GL_SHADER_STORAGE_BARRIER_BIT;
            texture_fetch_barrier_bit -> ?GL_TEXTURE_FETCH_BARRIER_BIT;
            transform_feedback_barrier_bit -> ?GL_TRANSFORM_FEEDBACK_BARRIER_BIT;
            framebuffer_barrier_bit -> ?GL_FRAMEBUFFER_BARRIER_BIT;
            pixel_buffer_barrier_bit -> ?GL_PIXEL_BUFFER_BARRIER_BIT;
            uniform_barrier_bit -> ?GL_UNIFORM_BARRIER_BIT;
            buffer_update_barrier_bit -> ?GL_BUFFER_UPDATE_BARRIER_BIT;
            command_barrier_bit -> ?GL_COMMAND_BARRIER_BIT;
            element_array_barrier_bit -> ?GL_ELEMENT_ARRAY_BARRIER_BIT;
            shader_image_access_barrier_bit -> ?GL_SHADER_IMAGE_ACCESS_BARRIER_BIT;
            client_mapped_buffer_barrier_bit -> ?GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT;
            vertex_attrib_array_barrier_bit -> ?GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT;
            query_buffer_barrier_bit -> ?GL_QUERY_BUFFER_BARRIER_BIT
        end,
        L bor R
    end, 16#00, Barriers),
    glMemoryBarrier_raw(NewBarriers).

-doc """
undefined

It implements the `glGetnTexImage` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetnTexImage) formore information.
""".
-spec get_n_tex_image(
    Target :: texture_target(),
    Level :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    PixelsSize :: pos_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
get_n_tex_image(Target, Level, Format, Type, PixelsSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glGetnTexImage_raw(NewTarget, Level, NewFormat, NewType, PixelsSize).

-doc """
Copy pixels into a 2D texture image.

It implements the `glCopyTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexImage2D) formore information.
""".
-spec copy_tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer()
) -> ok | {error, atom()}.
copy_tex_image_2d(Target, Level, InternalFormat, X, Y, Width, Height, Border) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCopyTexImage2D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Height, Border).

-doc """
Bind a vertex array object.

It implements the `glBindVertexArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindVertexArray) formore information.
""".
-spec bind_vertex_array(Array :: vertex_array()) -> ok | {error, atom()}.
bind_vertex_array(Array) ->

    glBindVertexArray_raw(Array).

-doc """
Specify a one-dimensional texture subimage.

It implements the `glTextureSubImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureSubImage1D) formore information.
""".
-spec texture_sub_image_1d(
    Texture :: texture(),
    Level :: integer(),
    Offset :: integer(),
    Width :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
texture_sub_image_1d(Texture, Level, Offset, Width, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glTextureSubImage1D_raw(Texture, Level, Offset, Width, NewFormat, NewType, Pixels).

-doc """
Create transform feedback objects.

It implements the `glCreateTransformFeedbacks` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateTransformFeedbacks) formore information.
""".
-spec create_transform_feedbacks(N :: pos_integer()) -> {ok, Feedbacks :: [transform_feedback()]} | {error, atom()}.
create_transform_feedbacks(N) ->

    glCreateTransformFeedbacks_raw(N).

-doc """
Specify mapping of depth values from normalized device coordinates to window coordinates for a specified viewport.

It implements the `glDepthRangeIndexed` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthRangeIndexed) formore information.
""".
-spec depth_range_indexed(
    Index :: pos_integer(),
    Near :: float(),
    Far :: float()
) -> ok | {error, atom()}.
depth_range_indexed(Index, Near, Far) ->

    glDepthRangeIndexed_raw(Index, Near, Far).

-doc """
Copy a block of pixels from one framebuffer object to another.

It implements the `glBlitFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlitFramebuffer) formore information.
""".
-spec blit_framebuffer(
    SrcX0 :: integer(),
    SrcY0 :: integer(),
    SrcX1 :: integer(),
    SrcY1 :: integer(),
    DstX0 :: integer(),
    DstY0 :: integer(),
    DstX1 :: integer(),
    DstY1 :: integer(),
    Mask :: clear_buffer_mask(),
    Filter :: blit_framebuffer_filter()
) -> ok | {error, atom()}.
blit_framebuffer(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter) ->
    NewFilter = case Filter of
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST
    end,
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    glBlitFramebuffer_raw(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, NewMask, NewFilter).

-doc """
Establish data storage, format, dimensions and sample count of
    a renderbuffer object's image.

It implements the `glNamedRenderbufferStorageMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glNamedRenderbufferStorageMultisample) formore information.
""".
-spec named_renderbuffer_storage_multisample(
    Renderbuffer :: render_buffer(),
    Samples :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
named_renderbuffer_storage_multisample(Renderbuffer, Samples, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glNamedRenderbufferStorageMultisample_raw(Renderbuffer, Samples, NewInternalFormat, Width, Height).

-doc """
Retrieve a sub-region of a compressed texture image from a
    compressed texture object.

It implements the `glGetCompressedTextureSubImage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetCompressedTextureSubImage) formore information.
""".
-spec get_compressed_texture_sub_image(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    BufSize :: pos_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
get_compressed_texture_sub_image(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, BufSize) ->

    glGetCompressedTextureSubImage_raw(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, BufSize).

-doc """
Control the front and/or back writing of individual bits in the stencil planes.

It implements the `glStencilMaskSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilMaskSeparate) formore information.
""".
-spec stencil_mask_separate(
    Face :: triangle_face(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_mask_separate(Face, Mask) ->
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilMaskSeparate_raw(NewFace, Mask).

-doc """
Specify the organization of vertex arrays.

It implements the `glVertexAttribFormat` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribFormat) formore information.
""".
-spec vertex_attrib_format(
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_type(),
    Normalized :: boolean(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_format(AttribIndex, Size, Type, Normalized, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        double -> ?GL_DOUBLE;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    glVertexAttribFormat_raw(AttribIndex, Size, NewType, Normalized, RelativeOffset).

-doc """
Simultaneously specify storage for all levels of a one-dimensional texture.

It implements the `glTextureStorage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureStorage1D) formore information.
""".
-spec texture_storage_1d(
    Texture :: texture(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer()
) -> ok | {error, atom()}.
texture_storage_1d(Texture, Levels, InternalFormat, Width) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureStorage1D_raw(Texture, Levels, NewInternalFormat, Width).

-doc """
Define the scissor box.

It implements the `glScissor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glScissor) formore information.
""".
-spec scissor(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
scissor(X, Y, Width, Height) ->

    glScissor_raw(X, Y, Width, Height).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage2D) formore information.
""".
-spec tex_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, NewFormat, NewType, Pixels).

-doc """
Return error information.

It implements the `glGetError` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetError) formore information.
""".
-spec get_error() -> {ok, NoName :: error_code()} | {error, atom()}.
get_error() ->

    glGetError_raw().

-doc """
Determine if a name corresponds to a vertex array object.

It implements the `glIsVertexArray` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsVertexArray) formore information.
""".
-spec is_vertex_array(Array :: vertex_array()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_vertex_array(Array) ->

    glIsVertexArray_raw(Array).

-doc """
Create texture objects.

It implements the `glCreateTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateTextures) formore information.
""".
-spec create_textures(
    Target :: texture_target(),
    N :: pos_integer()
) -> {ok, Textures :: [texture()]} | {error, atom()}.
create_textures(Target, N) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCreateTextures_raw(NewTarget, N).

-doc """
Specify the diameter of rasterized points.

It implements the `glPointSize` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPointSize) formore information.
""".
-spec point_size(Size :: float()) -> ok | {error, atom()}.
point_size(Size) ->

    glPointSize_raw(Size).

-doc """
Bind a named texture to a texturing target.

It implements the `glBindTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindTexture) formore information.
""".
-spec bind_texture(
    Target :: texture_target(),
    Texture :: texture()
) -> ok | {error, atom()}.
bind_texture(Target, Texture) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glBindTexture_raw(NewTarget, Texture).

-doc """
Deletes a shader object.

It implements the `glDeleteShader` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteShader) formore information.
""".
-spec delete_shader(Shader :: shader()) -> ok | {error, atom()}.
delete_shader(Shader) ->

    glDeleteShader_raw(Shader).

-doc """
Specify mapping of depth values from normalized device coordinates to window coordinates.

It implements the `glDepthRange` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthRange) formore information.
""".
-spec depth_range(
    Near :: float(),
    Far :: float()
) -> ok | {error, atom()}.
depth_range(Near, Far) ->

    glDepthRange_raw(Near, Far).

-doc """
undefined

It implements the `glGetIntegeri_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetIntegeri_v) formore information.
""".
-spec get_integer(
    Target :: get_p_name(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer(Target, Index, N) ->
    NewTarget = case Target of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetIntegeri_v_raw(NewTarget, Index, N).

-doc """
Specify which color buffers are to be drawn into.

It implements the `glDrawBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawBuffer) formore information.
""".
-spec draw_buffer(Buffer :: draw_buffer_mode()) -> ok | {error, atom()}.
draw_buffer(Buffer) ->
    NewBuffer = case Buffer of
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        none -> ?GL_NONE;
        front_right -> ?GL_FRONT_RIGHT;
        front_and_back -> ?GL_FRONT_AND_BACK;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        front_left -> ?GL_FRONT_LEFT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        back -> ?GL_BACK;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        front -> ?GL_FRONT;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        left -> ?GL_LEFT;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        right -> ?GL_RIGHT;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        back_right -> ?GL_BACK_RIGHT;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        back_left -> ?GL_BACK_LEFT;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,

    glDrawBuffer_raw(NewBuffer).

-doc """
Set front and back function and reference value for stencil testing.

It implements the `glStencilFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilFunc) formore information.
""".
-spec stencil_func(
    Function :: stencil_function(),
    Ref :: integer(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_func(Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    glStencilFunc_raw(NewFunction, Ref, Mask).

-doc """
Configures element array buffer binding of a vertex array object.

It implements the `glVertexArrayElementBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayElementBuffer) formore information.
""".
-spec vertex_array_element_buffer(
    Array :: vertex_array(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
vertex_array_element_buffer(Array, Buffer) ->

    glVertexArrayElementBuffer_raw(Array, Buffer).

-doc """
Reserve program pipeline object names.

It implements the `glGenProgramPipelines` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenProgramPipelines) formore information.
""".
-spec gen_program_pipelines(N :: pos_integer()) -> {ok, Pipelines :: [program_pipeline()]} | {error, atom()}.
gen_program_pipelines(N) ->

    glGenProgramPipelines_raw(N).

-doc """
Determine if a name corresponds to a sync object.

It implements the `glIsSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsSync) formore information.
""".
-spec is_sync(Sync :: sync()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_sync(Sync) ->

    glIsSync_raw(Sync).

-doc """
Simultaneously specify storage for all levels of a one-dimensional texture.

It implements the `glTexStorage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexStorage1D) formore information.
""".
-spec tex_storage_1d(
    Target :: texture_target(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer()
) -> ok | {error, atom()}.
tex_storage_1d(Target, Levels, InternalFormat, Width) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexStorage1D_raw(NewTarget, Levels, NewInternalFormat, Width).

-doc """
Attach a buffer object's data store to a buffer texture object.

It implements the `glTexBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexBuffer) formore information.
""".
-spec tex_buffer(
    Target :: texture_target(),
    InternalFormat :: sized_internal_format(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
tex_buffer(Target, InternalFormat, Buffer) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexBuffer_raw(NewTarget, NewInternalFormat, Buffer).

-doc """
Render primitives from array data.

It implements the `glDrawArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawArrays) formore information.
""".
-spec draw_arrays(
    Mode :: primitive_type(),
    First :: integer(),
    Count :: integer()
) -> ok | {error, atom()}.
draw_arrays(Mode, First, Count) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawArrays_raw(NewMode, First, Count).

-doc """
undefined

It implements the `glFramebufferTexture2D` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTexture2D) formore information.
""".
-spec framebuffer_texture_2d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_2d(Target, Attachment, TextureTarget, Texture, Level) ->
    NewTextureTarget = case TextureTarget of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTexture2D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level).

-doc """
undefined

It implements the `glVertexAttribIFormat` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribIFormat) formore information.
""".
-spec vertex_attrib_i_format(
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_i_type(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_i_format(AttribIndex, Size, Type, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        short -> ?GL_SHORT
    end,

    glVertexAttribIFormat_raw(AttribIndex, Size, NewType, RelativeOffset).

-doc """
Specifiy the vertex to be used as the source of data for flat shaded varyings.

It implements the `glProvokingVertex` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glProvokingVertex) formore information.
""".
-spec provoking_vertex(Mode :: vertex_provoking_mode()) -> ok | {error, atom()}.
provoking_vertex(Mode) ->
    NewMode = case Mode of
        last_vertex_convention -> ?GL_LAST_VERTEX_CONVENTION;
        first_vertex_convention -> ?GL_FIRST_VERTEX_CONVENTION
    end,

    glProvokingVertex_raw(NewMode).

-doc """
Specify the width of rasterized lines.

It implements the `glLineWidth` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glLineWidth) formore information.
""".
-spec line_width(Width :: float()) -> ok | {error, atom()}.
line_width(Width) ->

    glLineWidth_raw(Width).

-doc """
Enable or disable writing into the depth buffer.

It implements the `glDepthMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthMask) formore information.
""".
-spec depth_mask(Flag :: boolean()) -> ok | {error, atom()}.
depth_mask(Flag) ->

    glDepthMask_raw(Flag).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquationSeparate) formore information.
""".
-spec blend_equation_separate(
    ModeRGB :: blend_equation_mode_e_x_t(),
    ModeAlpha :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation_separate(ModeRGB, ModeAlpha) ->
    NewModeAlpha = case ModeAlpha of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,
    NewModeRGB = case ModeRGB of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationSeparate_raw(NewModeRGB, NewModeAlpha).

-doc """
Attach a range of a buffer object's data store to a buffer texture object.

It implements the `glTextureBufferRange` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureBufferRange) formore information.
""".
-spec texture_buffer_range(
    Texture :: texture(),
    InternalFormat :: sized_internal_format(),
    Buffer :: buffer(),
    Offset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
texture_buffer_range(Texture, InternalFormat, Buffer, Offset, Size) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureBufferRange_raw(Texture, NewInternalFormat, Buffer, Offset, Size).

-doc """
Copy a three-dimensional texture subimage.

It implements the `glCopyTexSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexSubImage3D) formore information.
""".
-spec copy_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCopyTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height).

-doc """
Attach a buffer object's data store to a buffer texture object.

It implements the `glTextureBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureBuffer) formore information.
""".
-spec texture_buffer(
    Texture :: texture(),
    InternalFormat :: sized_internal_format(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
texture_buffer(Texture, InternalFormat, Buffer) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureBuffer_raw(Texture, NewInternalFormat, Buffer).

-doc """
Set the viewport.

It implements the `glViewport` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glViewport) formore information.
""".
-spec viewport(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
viewport(X, Y, Width, Height) ->

    glViewport_raw(X, Y, Width, Height).

-doc """
undefined

It implements the `glGetTextureImage` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTextureImage) formore information.
""".
-spec get_texture_image(
    Texture :: texture(),
    Level :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    BufSize :: pos_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
get_texture_image(Texture, Level, Format, Type, BufSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glGetTextureImage_raw(Texture, Level, NewFormat, NewType, BufSize).

-doc """
Invalidate the entirety a texture image.

It implements the `glInvalidateTexImage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glInvalidateTexImage) formore information.
""".
-spec invalidate_tex_image(
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
invalidate_tex_image(Texture, Level) ->

    glInvalidateTexImage_raw(Texture, Level).

-doc """
Specify a three-dimensional texture image.

It implements the `glTexImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage3D) formore information.
""".
-spec tex_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Border :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_image_3d(Target, Level, InternalFormat, Width, Height, Depth, Border, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, NewFormat, NewType, Pixels).

-doc """
Start conditional rendering.

It implements the `glBeginConditionalRender` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginConditionalRender) formore information.
""".
-spec begin_conditional_render(
    Query :: query(),
    Mode :: conditional_render_mode()
) -> ok | {error, atom()}.
begin_conditional_render(Query, Mode) ->
    NewMode = case Mode of
        query_no_wait -> ?GL_QUERY_NO_WAIT;
        query_no_wait_inverted -> ?GL_QUERY_NO_WAIT_INVERTED;
        query_by_region_wait -> ?GL_QUERY_BY_REGION_WAIT;
        query_by_region_wait_inverted -> ?GL_QUERY_BY_REGION_WAIT_INVERTED;
        query_wait_inverted -> ?GL_QUERY_WAIT_INVERTED;
        query_by_region_no_wait_inverted -> ?GL_QUERY_BY_REGION_NO_WAIT_INVERTED;
        query_by_region_no_wait -> ?GL_QUERY_BY_REGION_NO_WAIT;
        query_wait -> ?GL_QUERY_WAIT
    end,

    glBeginConditionalRender_raw(Query, NewMode).

-doc """
Specify storage for a two-dimensional multisample array texture.

It implements the `glTextureStorage3DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureStorage3DMultisample) formore information.
""".
-spec texture_storage_3d_multisample(
    Texture :: texture(),
    Samples :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
texture_storage_3d_multisample(Texture, Samples, InternalFormat, Width, Height, Depth, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureStorage3DMultisample_raw(Texture, Samples, NewInternalFormat, Width, Height, Depth, FixedSampleLocations).

-doc """
Return a texture image.

It implements the `glGetTexImage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTexImage) formore information.
""".
-spec get_tex_image(
    Target :: texture_target(),
    Level :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    PixelsSize :: pos_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
get_tex_image(Target, Level, Format, Type, PixelsSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glGetTexImage_raw(NewTarget, Level, NewFormat, NewType, PixelsSize).

-doc """
Render multiple instances of primitives using a count derived from a transform feedback object.

It implements the `glDrawTransformFeedbackInstanced` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawTransformFeedbackInstanced) formore information.
""".
-spec draw_transform_feedback_instanced(
    Mode :: primitive_type(),
    Feedback :: transform_feedback(),
    InstanceCount :: integer()
) -> ok | {error, atom()}.
draw_transform_feedback_instanced(Mode, Feedback, InstanceCount) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawTransformFeedbackInstanced_raw(NewMode, Feedback, InstanceCount).

-doc """
Delete renderbuffer objects.

It implements the `glDeleteRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteRenderbuffers) formore information.
""".
-spec delete_render_buffers(
    N :: integer(),
    Buffers :: [render_buffer()]
) -> ok | {error, atom()}.
delete_render_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteRenderbuffers_raw(N, NewBuffers).

-doc """
Specify a two-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTexSubImage2D) formore information.
""".
-spec compressed_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: internal_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCompressedTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, ImageSize, ImageData).

-doc """
Bind a named buffer object.

It implements the `glBindBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindBuffer) formore information.
""".
-spec bind_buffer(
    Target :: buffer_target_a_r_b(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
bind_buffer(Target, Buffer) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        query_buffer -> ?GL_QUERY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER;
        parameter_buffer -> ?GL_PARAMETER_BUFFER
    end,

    glBindBuffer_raw(NewTarget, Buffer).

-doc """
Copy a one-dimensional texture subimage.

It implements the `glCopyTexSubImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexSubImage1D) formore information.
""".
-spec copy_tex_sub_image_1d(
    Target :: texture_target(),
    Level :: integer(),
    Offset :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer()
) -> ok | {error, atom()}.
copy_tex_sub_image_1d(Target, Level, Offset, X, Y, Width) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCopyTexSubImage1D_raw(NewTarget, Level, Offset, X, Y, Width).

-doc """
Draw multiple instances of a range of elements with offset applied to instanced attributes.

It implements the `glDrawArraysInstancedBaseInstance` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawArraysInstancedBaseInstance) formore information.
""".
-spec draw_arrays_instanced_base_instance(
    Mode :: primitive_type(),
    First :: integer(),
    Count :: integer(),
    InstanceCount :: integer(),
    BaseInstance :: pos_integer()
) -> ok | {error, atom()}.
draw_arrays_instanced_base_instance(Mode, First, Count, InstanceCount, BaseInstance) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawArraysInstancedBaseInstance_raw(NewMode, First, Count, InstanceCount, BaseInstance).

-doc """
Modify the rate at which generic vertex attributes
    advance.

It implements the `glVertexBindingDivisor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexBindingDivisor) formore information.
""".
-spec vertex_binding_divisor(
    Index :: pos_integer(),
    Divisor :: pos_integer()
) -> ok | {error, atom()}.
vertex_binding_divisor(Index, Divisor) ->

    glVertexBindingDivisor_raw(Index, Divisor).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunci` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFunci) formore information.
""".
-spec blend_func(
    Buffer :: pos_integer(),
    SourceFactor :: blending_factor(),
    DestinationFactor :: blending_factor()
) -> ok | {error, atom()}.
blend_func(Buffer, SourceFactor, DestinationFactor) ->
    NewDestinationFactor = case DestinationFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewSourceFactor = case SourceFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,

    glBlendFunci_raw(Buffer, NewSourceFactor, NewDestinationFactor).

-doc """
Creates and initializes a buffer object's data
    store.

It implements the `glBufferData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBufferData) formore information.
""".
-spec buffer_data(
    Target :: buffer_target_a_r_b(),
    Size :: integer(),
    Data :: undefined | binary(),
    Usage :: buffer_usage_a_r_b()
) -> ok | {error, atom()}.
buffer_data(Target, Size, Data, Usage) ->
    NewUsage = case Usage of
        stream_draw -> ?GL_STREAM_DRAW;
        dynamic_read -> ?GL_DYNAMIC_READ;
        static_copy -> ?GL_STATIC_COPY;
        stream_read -> ?GL_STREAM_READ;
        stream_copy -> ?GL_STREAM_COPY;
        static_read -> ?GL_STATIC_READ;
        dynamic_copy -> ?GL_DYNAMIC_COPY;
        static_draw -> ?GL_STATIC_DRAW;
        dynamic_draw -> ?GL_DYNAMIC_DRAW
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        query_buffer -> ?GL_QUERY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER;
        parameter_buffer -> ?GL_PARAMETER_BUFFER
    end,

    glBufferData_raw(NewTarget, Size, Data, NewUsage).

-doc """
Specify a one-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTexSubImage1D) formore information.
""".
-spec compressed_tex_sub_image_1d(
    Target :: texture_target(),
    Level :: integer(),
    Offset :: integer(),
    Size :: integer(),
    Format :: internal_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_sub_image_1d(Target, Level, Offset, Size, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCompressedTexSubImage1D_raw(NewTarget, Level, Offset, Size, NewFormat, ImageSize, ImageData).

-doc """
Returns the source code string from a shader object.

It implements the `glGetShaderSource` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetShaderSource) formore information.
""".
-spec get_shader_source(
    Shader :: shader(),
    StringSize :: pos_integer()
) -> {ok, Source :: binary()} | {error, atom()}.
get_shader_source(Shader, StringSize) ->

    glGetShaderSource_raw(Shader, StringSize).

-doc """
Specify multisample coverage parameters.

It implements the `glSampleCoverage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glSampleCoverage) formore information.
""".
-spec sample_coverage(
    Value :: float(),
    Invert :: boolean()
) -> ok | {error, atom()}.
sample_coverage(Value, Invert) ->

    glSampleCoverage_raw(Value, Invert).

-doc """
Set front and/or back stencil test actions.

It implements the `glStencilOpSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilOpSeparate) formore information.
""".
-spec stencil_op_separate(
    Face :: triangle_face(),
    StencilFail :: stencil_op(),
    DepthPassFail :: stencil_op(),
    DepthPassPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op_separate(Face, StencilFail, DepthPassFail, DepthPassPass) ->
    NewDepthPassPass = case DepthPassPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewDepthPassFail = case DepthPassFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewStencilFail = case StencilFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilOpSeparate_raw(NewFace, NewStencilFail, NewDepthPassFail, NewDepthPassPass).

-doc """
Copy a three-dimensional texture subimage.

It implements the `glCopyTextureSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTextureSubImage3D) formore information.
""".
-spec copy_texture_sub_image_3d(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    X :: integer(),
    Y :: integer(),
    Z :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
copy_texture_sub_image_3d(Texture, Level, OffsetX, OffsetY, OffsetZ, X, Y, Z, Width, Height, Depth) ->

    glCopyTextureSubImage3D_raw(Texture, Level, OffsetX, OffsetY, OffsetZ, X, Y, Z, Width, Height, Depth).

-doc """
Copy all or part of the data store of a buffer object to the data store of another buffer object.

It implements the `glCopyNamedBufferSubData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyNamedBufferSubData) formore information.
""".
-spec copy_named_buffer_sub_data(
    ReadBuffer :: buffer(),
    WriteBuffer :: buffer(),
    ReadOffset :: integer(),
    WriteOffset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
copy_named_buffer_sub_data(ReadBuffer, WriteBuffer, ReadOffset, WriteOffset, Size) ->

    glCopyNamedBufferSubData_raw(ReadBuffer, WriteBuffer, ReadOffset, WriteOffset, Size).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFunc) formore information.
""".
-spec blend_func(
    SourceFactor :: blending_factor(),
    DestinationFactor :: blending_factor()
) -> ok | {error, atom()}.
blend_func(SourceFactor, DestinationFactor) ->
    NewDestinationFactor = case DestinationFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewSourceFactor = case SourceFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,

    glBlendFunc_raw(NewSourceFactor, NewDestinationFactor).

-doc """
Bind stages of a program object to a program pipeline.

It implements the `glUseProgramStages` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glUseProgramStages) formore information.
""".
-spec use_program_stages(
    Pipeline :: program_pipeline(),
    Stages :: use_program_stage_mask(),
    Program :: program()
) -> ok | {error, atom()}.
use_program_stages(Pipeline, Stages, Program) ->
    NewStages = lists:foldl(fun(Field, L) ->
        R = case Field of
            tess_control_shader_bit -> ?GL_TESS_CONTROL_SHADER_BIT;
            all_shader_bits -> ?GL_ALL_SHADER_BITS;
            fragment_shader_bit -> ?GL_FRAGMENT_SHADER_BIT;
            tess_evaluation_shader_bit -> ?GL_TESS_EVALUATION_SHADER_BIT;
            vertex_shader_bit -> ?GL_VERTEX_SHADER_BIT;
            geometry_shader_bit -> ?GL_GEOMETRY_SHADER_BIT;
            compute_shader_bit -> ?GL_COMPUTE_SHADER_BIT
        end,
        L bor R
    end, 16#00, Stages),
    glUseProgramStages_raw(Pipeline, NewStages, Program).

-doc """
Specify implementation-specific hints.

It implements the `glHint` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glHint) formore information.
""".
-spec hint(
    Target :: hint_target(),
    Mode :: hint_mode()
) -> ok | {error, atom()}.
hint(Target, Mode) ->
    NewMode = case Mode of
        nicest -> ?GL_NICEST;
        dont_care -> ?GL_DONT_CARE;
        fastest -> ?GL_FASTEST
    end,
    NewTarget = case Target of
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        program_binary_retrievable_hint -> ?GL_PROGRAM_BINARY_RETRIEVABLE_HINT;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT
    end,

    glHint_raw(NewTarget, NewMode).

-doc """
undefined

It implements the `glVertexAttribLPointer` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribLPointer) formore information.
""".
-spec vertex_attrib_l_pointer() -> ok | {error, atom()}.
vertex_attrib_l_pointer() ->

    glVertexAttribLPointer_raw().

-doc """
Create sampler objects.

It implements the `glCreateSamplers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateSamplers) formore information.
""".
-spec create_samplers(N :: pos_integer()) -> {ok, Samplers :: [sampler()]} | {error, atom()}.
create_samplers(N) ->

    glCreateSamplers_raw(N).

-doc """
foobar

It implements the `glGetBooleanv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetBooleanv) formore information.
""".
-spec get_boolean(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetBooleanv_raw(NewName, N).

-doc """
Start transform feedback operation.

It implements the `glBeginTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginTransformFeedback) formore information.
""".
-spec begin_transform_feedback(PrimitiveMode :: primitive_type()) -> ok | {error, atom()}.
begin_transform_feedback(PrimitiveMode) ->
    NewPrimitiveMode = case PrimitiveMode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glBeginTransformFeedback_raw(NewPrimitiveMode).

-doc """
Check if the rendering context has not been lost due to software or hardware issues.

It implements the `glGetGraphicsResetStatus` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetGraphicsResetStatus) formore information.
""".
-spec get_graphics_reset_status() -> {ok, NoName :: graphics_reset_status()} | {error, atom()}.
get_graphics_reset_status() ->

    glGetGraphicsResetStatus_raw().

-doc """
undefined

It implements the `glPolygonOffsetClamp` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPolygonOffsetClamp) formore information.
""".
-spec polygon_offset_clamp(
    Factor :: float(),
    Units :: float(),
    Clamp :: float()
) -> ok | {error, atom()}.
polygon_offset_clamp(Factor, Units, Clamp) ->

    glPolygonOffsetClamp_raw(Factor, Units, Clamp).

-doc """
Modify the rate at which generic vertex attributes
    advance.

It implements the `glVertexArrayBindingDivisor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayBindingDivisor) formore information.
""".
-spec vertex_array_binding_divisor(
    Array :: vertex_array(),
    BindingIndex :: pos_integer(),
    Divisor :: pos_integer()
) -> ok | {error, atom()}.
vertex_array_binding_divisor(Array, BindingIndex, Divisor) ->

    glVertexArrayBindingDivisor_raw(Array, BindingIndex, Divisor).

-doc """
Set the blend color.

It implements the `glBlendColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendColor) formore information.
""".
-spec blend_color(
    Red :: float(),
    Green :: float(),
    Blue :: float(),
    Alpha :: float()
) -> ok | {error, atom()}.
blend_color(Red, Green, Blue, Alpha) ->

    glBlendColor_raw(Red, Green, Blue, Alpha).

-doc """
Specify storage for a two-dimensional multisample texture.

It implements the `glTexStorage2DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexStorage2DMultisample) formore information.
""".
-spec tex_storage_2d_multisample(
    Target :: texture_target(),
    Samples :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
tex_storage_2d_multisample(Target, Samples, InternalFormat, Width, Height, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexStorage2DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, FixedSampleLocations).

-doc """
Delimit the boundaries of a query object on an indexed target.

It implements the `glEndQueryIndexed` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndQueryIndexed) formore information.
""".
-spec end_query_indexed(
    Target :: query_target(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
end_query_indexed(Target, Index) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        time_elapsed -> ?GL_TIME_ELAPSED;
        vertex_shader_invocations -> ?GL_VERTEX_SHADER_INVOCATIONS;
        vertices_submitted -> ?GL_VERTICES_SUBMITTED;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        samples_passed -> ?GL_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE;
        primitives_submitted -> ?GL_PRIMITIVES_SUBMITTED;
        transform_feedback_overflow -> ?GL_TRANSFORM_FEEDBACK_OVERFLOW
    end,

    glEndQueryIndexed_raw(NewTarget, Index).

-doc """
Determine if a name corresponds to a program pipeline object.

It implements the `glIsProgramPipeline` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsProgramPipeline) formore information.
""".
-spec is_program_pipeline(Piepline :: program_pipeline()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_program_pipeline(Piepline) ->

    glIsProgramPipeline_raw(Piepline).

-doc """
Delimit the boundaries of a query object.

It implements the `glBeginQuery` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginQuery) formore information.
""".
-spec begin_query(
    Target :: query_target(),
    Query :: query()
) -> ok | {error, atom()}.
begin_query(Target, Query) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        time_elapsed -> ?GL_TIME_ELAPSED;
        vertex_shader_invocations -> ?GL_VERTEX_SHADER_INVOCATIONS;
        vertices_submitted -> ?GL_VERTICES_SUBMITTED;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        samples_passed -> ?GL_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE;
        primitives_submitted -> ?GL_PRIMITIVES_SUBMITTED;
        transform_feedback_overflow -> ?GL_TRANSFORM_FEEDBACK_OVERFLOW
    end,

    glBeginQuery_raw(NewTarget, Query).

-doc """
Specify a two-dimensional texture subimage in a compressed format.

It implements the `glCompressedTextureSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTextureSubImage2D) formore information.
""".
-spec compressed_texture_sub_image_2d(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_texture_sub_image_2d(Texture, Level, OffsetX, OffsetY, Width, Height, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glCompressedTextureSubImage2D_raw(Texture, Level, OffsetX, OffsetY, Width, Height, NewFormat, ImageSize, ImageData).

-doc """
Attach a range of a buffer object's data store to a buffer texture object.

It implements the `glTexBufferRange` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexBufferRange) formore information.
""".
-spec tex_buffer_range(
    Target :: texture_target(),
    InternalFormat :: sized_internal_format(),
    Buffer :: buffer(),
    Offset :: integer(),
    Size :: integer()
) -> ok | {error, atom()}.
tex_buffer_range(Target, InternalFormat, Buffer, Offset, Size) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexBufferRange_raw(NewTarget, NewInternalFormat, Buffer, Offset, Size).

-doc """
Release resources consumed by the implementation's shader compiler.

It implements the `glReleaseShaderCompiler` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glReleaseShaderCompiler) formore information.
""".
-spec release_shader_compiler() -> ok | {error, atom()}.
release_shader_compiler() ->

    glReleaseShaderCompiler_raw().

-doc """
undefined

It implements the `glGetFloati_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetFloati_v) formore information.
""".
-spec get_float(
    Target :: get_p_name(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [float()]} | {error, atom()}.
get_float(Target, Index, N) ->
    NewTarget = case Target of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetFloati_v_raw(NewTarget, Index, N).

-doc """
undefined

It implements the `glEndQuery` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndQuery) formore information.
""".
-spec end_query(Target :: query_target()) -> ok | {error, atom()}.
end_query(Target) ->
    NewTarget = case Target of
        primitives_generated -> ?GL_PRIMITIVES_GENERATED;
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        time_elapsed -> ?GL_TIME_ELAPSED;
        vertex_shader_invocations -> ?GL_VERTEX_SHADER_INVOCATIONS;
        vertices_submitted -> ?GL_VERTICES_SUBMITTED;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        samples_passed -> ?GL_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE;
        primitives_submitted -> ?GL_PRIMITIVES_SUBMITTED;
        transform_feedback_overflow -> ?GL_TRANSFORM_FEEDBACK_OVERFLOW
    end,

    glEndQuery_raw(NewTarget).

-doc """
undefined

It implements the `glNamedFramebufferTexture` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glNamedFramebufferTexture) formore information.
""".
-spec named_framebuffer_texture(
    Framebuffer :: frame_buffer(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
named_framebuffer_texture(Framebuffer, Attachment, Texture, Level) ->
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,

    glNamedFramebufferTexture_raw(Framebuffer, NewAttachment, Texture, Level).

-doc """
Delete named sampler objects.

It implements the `glDeleteSamplers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteSamplers) formore information.
""".
-spec delete_samplers(
    N :: integer(),
    Samplers :: [sampler()]
) -> ok | {error, atom()}.
delete_samplers(N, Samplers) ->
    NewSamplers = << <<ID:32/native>> || ID <- Samplers >>,
    glDeleteSamplers_raw(N, NewSamplers).

-doc """
Replaces the source code in a shader object.

It implements the `glShaderSource` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glShaderSource) formore information.
""".
-spec shader_source(
    Shader :: shader(),
    Source :: [string() | binary()]
) -> ok | {error, atom()}.
shader_source(Shader, Source) ->
    SourceNew = lists:map(fun
        (SourceItem) when is_list(SourceItem) -> list_to_binary(SourceItem);
        (SourceItem) when is_binary(SourceItem) -> SourceItem
    end, Source),
    glShaderSource_raw(Shader, SourceNew).

-doc """
Clear buffers to preset values.

It implements the `glClear` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClear) formore information.
""".
-spec clear(Mask :: clear_buffer_mask()) -> ok | {error, atom()}.
clear(Mask) ->
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    glClear_raw(NewMask).

-doc """
Attach a renderbuffer as a logical buffer of a framebuffer object.

It implements the `glFramebufferRenderbuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferRenderbuffer) formore information.
""".
-spec framebuffer_renderbuffer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    RenderbufferTarget :: renderbuffer_target(),
    Renderbuffer :: render_buffer()
) -> ok | {error, atom()}.
framebuffer_renderbuffer(Target, Attachment, RenderbufferTarget, Renderbuffer) ->
    NewRenderbufferTarget = case RenderbufferTarget of
        renderbuffer -> ?GL_RENDERBUFFER
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferRenderbuffer_raw(NewTarget, NewAttachment, NewRenderbufferTarget, Renderbuffer).

-doc """
undefined

It implements the `glVertexArrayAttribBinding` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayAttribBinding) formore information.
""".
-spec vertex_array_attrib_binding(
    Array :: vertex_array(),
    AttribIndex :: pos_integer(),
    BindingIndex :: pos_integer()
) -> ok | {error, atom()}.
vertex_array_attrib_binding(Array, AttribIndex, BindingIndex) ->

    glVertexArrayAttribBinding_raw(Array, AttribIndex, BindingIndex).

-doc """
Copy a one-dimensional texture subimage.

It implements the `glCopyTextureSubImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTextureSubImage1D) formore information.
""".
-spec copy_texture_sub_image_1d(
    Texture :: texture(),
    Level :: integer(),
    Offset :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer()
) -> ok | {error, atom()}.
copy_texture_sub_image_1d(Texture, Level, Offset, X, Y, Width) ->

    glCopyTextureSubImage1D_raw(Texture, Level, Offset, X, Y, Width).

-doc """
Validate a program pipeline object against current GL state.

It implements the `glValidateProgramPipeline` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glValidateProgramPipeline) formore information.
""".
-spec validate_program_pipeline(Pipeline :: program_pipeline()) -> ok | {error, atom()}.
validate_program_pipeline(Pipeline) ->

    glValidateProgramPipeline_raw(Pipeline).

-doc """
Simultaneously specify storage for all levels of a two-dimensional or one-dimensional array texture.

It implements the `glTextureStorage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureStorage2D) formore information.
""".
-spec texture_storage_2d(
    Texture :: texture(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
texture_storage_2d(Texture, Levels, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureStorage2D_raw(Texture, Levels, NewInternalFormat, Width, Height).

-doc """
Specify a one-dimensional texture image.

It implements the `glTexImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage1D) formore information.
""".
-spec tex_image_1d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Border :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
tex_image_1d(Target, Level, InternalFormat, Width, Border, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexImage1D_raw(NewTarget, Level, NewInternalFormat, Width, Border, NewFormat, NewType, Pixels).

-doc """
Invalidate the content of a buffer object's data store.

It implements the `glInvalidateBufferData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glInvalidateBufferData) formore information.
""".
-spec invalidate_buffer_data(Buffer :: buffer()) -> ok | {error, atom()}.
invalidate_buffer_data(Buffer) ->

    glInvalidateBufferData_raw(Buffer).

-doc """
Specifies minimum rate at which sample shading takes place.

It implements the `glMinSampleShading` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glMinSampleShading) formore information.
""".
-spec min_sample_shading(Value :: float()) -> ok | {error, atom()}.
min_sample_shading(Value) ->

    glMinSampleShading_raw(Value).

-doc """
Render multiple instances of primitives using a count derived from a specifed stream of a transform feedback object.

It implements the `glDrawTransformFeedbackStreamInstanced` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawTransformFeedbackStreamInstanced) formore information.
""".
-spec draw_transform_feedback_stream_instanced(
    Mode :: primitive_type(),
    Feedback :: transform_feedback(),
    Stream :: pos_integer(),
    InstanceCount :: integer()
) -> ok | {error, atom()}.
draw_transform_feedback_stream_instanced(Mode, Feedback, Stream, InstanceCount) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawTransformFeedbackStreamInstanced_raw(NewMode, Feedback, Stream, InstanceCount).

-doc """
Delete a sync object.

It implements the `glDeleteSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteSync) formore information.
""".
-spec delete_sync(Sync :: sync()) -> ok | {error, atom()}.
delete_sync(Sync) ->

    glDeleteSync_raw(Sync).

-doc """
Specify the primitive restart index.

It implements the `glPrimitiveRestartIndex` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPrimitiveRestartIndex) formore information.
""".
-spec primitive_restart_index(Index :: pos_integer()) -> ok | {error, atom()}.
primitive_restart_index(Index) ->

    glPrimitiveRestartIndex_raw(Index).

-doc """
Render primitives using a count derived from a transform feedback object.

It implements the `glDrawTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawTransformFeedback) formore information.
""".
-spec draw_transform_feedback(
    Mode :: primitive_type(),
    Feedback :: transform_feedback()
) -> ok | {error, atom()}.
draw_transform_feedback(Mode, Feedback) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawTransformFeedback_raw(NewMode, Feedback).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadnPixels` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glReadnPixels) formore information.
""".
-spec read_n_pixels(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    DataSize :: pos_integer()
) -> {ok, Data :: binary()} | {error, atom()}.
read_n_pixels(X, Y, Width, Height, Format, Type, DataSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glReadnPixels_raw(X, Y, Width, Height, NewFormat, NewType, DataSize).

-doc """
Copy a two-dimensional texture subimage.

It implements the `glCopyTexSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexSubImage2D) formore information.
""".
-spec copy_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCopyTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, X, Y, Width, Height).

-doc """
Set front and/or back function and reference value for stencil testing.

It implements the `glStencilFuncSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilFuncSeparate) formore information.
""".
-spec stencil_func_separate(
    Face :: triangle_face(),
    Function :: stencil_function(),
    Ref :: integer(),
    Mask :: pos_integer()
) -> ok | {error, atom()}.
stencil_func_separate(Face, Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glStencilFuncSeparate_raw(NewFace, NewFunction, Ref, Mask).

-doc """
foobar

It implements the `glGetIntegerv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetIntegerv) formore information.
""".
-spec get_integer(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetIntegerv_raw(NewName, N).

-doc """
Specify a three-dimensional texture subimage.

It implements the `glTextureSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureSubImage3D) formore information.
""".
-spec texture_sub_image_3d(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: binary()
) -> ok | {error, atom()}.
texture_sub_image_3d(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, Type, Pixels) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glTextureSubImage3D_raw(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, NewType, Pixels).

-doc """
Generate vertex array object names.

It implements the `glGenVertexArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenVertexArrays) formore information.
""".
-spec gen_vertex_arrays(N :: pos_integer()) -> {ok, Arrays :: [vertex_array()]} | {error, atom()}.
gen_vertex_arrays(N) ->

    glGenVertexArrays_raw(N).

-doc """
Generate renderbuffer object names.

It implements the `glGenRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenRenderbuffers) formore information.
""".
-spec gen_render_buffers(N :: pos_integer()) -> {ok, Buffers :: [render_buffer()]} | {error, atom()}.
gen_render_buffers(N) ->

    glGenRenderbuffers_raw(N).

-doc """
Specify a one-dimensional texture subimage in a compressed
    format.

It implements the `glCompressedTextureSubImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTextureSubImage1D) formore information.
""".
-spec compressed_texture_sub_image_1d(
    Texture :: texture(),
    Level :: integer(),
    Offset :: integer(),
    Width :: integer(),
    Format :: pixel_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_texture_sub_image_1d(Texture, Level, Offset, Width, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glCompressedTextureSubImage1D_raw(Texture, Level, Offset, Width, NewFormat, ImageSize, ImageData).

-doc """
Bind a buffer to a vertex buffer bind point.

It implements the `glVertexArrayVertexBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayVertexBuffer) formore information.
""".
-spec vertex_array_vertex_buffer(
    Array :: vertex_array(),
    BindingIndex :: pos_integer(),
    Buffer :: buffer(),
    Offset :: integer(),
    Stride :: integer()
) -> ok | {error, atom()}.
vertex_array_vertex_buffer(Array, BindingIndex, Buffer, Offset, Stride) ->

    glVertexArrayVertexBuffer_raw(Array, BindingIndex, Buffer, Offset, Stride).

-doc """
Specify the value used for depth buffer comparisons.

It implements the `glDepthFunc` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthFunc) formore information.
""".
-spec depth_func(Function :: depth_function()) -> ok | {error, atom()}.
depth_func(Function) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    glDepthFunc_raw(NewFunction).

-doc """
Generate framebuffer object names.

It implements the `glGenFramebuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenFramebuffers) formore information.
""".
-spec gen_framebuffers(N :: pos_integer()) -> {ok, Buffers :: [frame_buffer()]} | {error, atom()}.
gen_framebuffers(N) ->

    glGenFramebuffers_raw(N).

-doc """
Modify the rate at which generic vertex attributes advance during instanced rendering.

It implements the `glVertexAttribDivisor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribDivisor) formore information.
""".
-spec vertex_attrib_divisor(
    Index :: pos_integer(),
    Divisor :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_divisor(Index, Divisor) ->

    glVertexAttribDivisor_raw(Index, Divisor).

-doc """
Delete program pipeline objects.

It implements the `glDeleteProgramPipelines` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteProgramPipelines) formore information.
""".
-spec delete_program_pipelines(
    N :: integer(),
    Pipelines :: [program_pipeline()]
) -> ok | {error, atom()}.
delete_program_pipelines(N, Pipelines) ->
    NewPipelines = << <<ID:32/native>> || ID <- Pipelines >>,
    glDeleteProgramPipelines_raw(N, NewPipelines).

-doc """
foobar

It implements the `glGetFloatv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetFloatv) formore information.
""".
-spec get_float(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [float()]} | {error, atom()}.
get_float(Name, N) ->
    NewName = case Name of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetFloatv_raw(NewName, N).

-doc """
Simultaneously specify storage for all levels of a three-dimensional, two-dimensional array or cube-map array texture.

It implements the `glTexStorage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexStorage3D) formore information.
""".
-spec tex_storage_3d(
    Target :: texture_target(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
tex_storage_3d(Target, Levels, InternalFormat, Width, Height, Depth) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexStorage3D_raw(NewTarget, Levels, NewInternalFormat, Width, Height, Depth).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMask` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glColorMask) formore information.
""".
-spec color_mask(
    Red :: boolean(),
    Green :: boolean(),
    Blue :: boolean(),
    Alpha :: boolean()
) -> ok | {error, atom()}.
color_mask(Red, Green, Blue, Alpha) ->

    glColorMask_raw(Red, Green, Blue, Alpha).

-doc """
Invalidate a region of a buffer object's data store.

It implements the `glInvalidateBufferSubData` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glInvalidateBufferSubData) formore information.
""".
-spec invalidate_buffer_sub_data(
    Buffer :: buffer(),
    Offset :: integer(),
    Length :: integer()
) -> ok | {error, atom()}.
invalidate_buffer_sub_data(Buffer, Offset, Length) ->

    glInvalidateBufferSubData_raw(Buffer, Offset, Length).

-doc """
Establish data storage, format, dimensions and sample count of
    a renderbuffer object's image.

It implements the `glRenderbufferStorageMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glRenderbufferStorageMultisample) formore information.
""".
-spec renderbuffer_storage_multisample(
    Target :: renderbuffer_target(),
    Samples :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
renderbuffer_storage_multisample(Target, Samples, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glRenderbufferStorageMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height).

-doc """
Determine if a name corresponds to a texture.

It implements the `glIsTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsTexture) formore information.
""".
-spec is_texture(Texture :: texture()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_texture(Texture) ->

    glIsTexture_raw(Texture).

-doc """
Initialize a texture as a data alias of another texture's data store.

It implements the `glTextureView` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureView) formore information.
""".
-spec texture_view(
    Texture :: texture(),
    Target :: texture_target(),
    OrigTexture :: texture(),
    InternalFormat :: sized_internal_format(),
    MinLevel :: pos_integer(),
    NumLevels :: pos_integer(),
    MinLayer :: pos_integer(),
    NumLayers :: pos_integer()
) -> ok | {error, atom()}.
texture_view(Texture, Target, OrigTexture, InternalFormat, MinLevel, NumLevels, MinLayer, NumLayers) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTextureView_raw(Texture, NewTarget, OrigTexture, NewInternalFormat, MinLevel, NumLevels, MinLayer, NumLayers).

-doc """
Determine if a name corresponds to a framebuffer object.

It implements the `glIsFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsFramebuffer) formore information.
""".
-spec is_framebuffer(Buffer :: frame_buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_framebuffer(Buffer) ->

    glIsFramebuffer_raw(Buffer).

-doc """
Generate sampler object names.

It implements the `glGenSamplers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenSamplers) formore information.
""".
-spec gen_samplers(N :: pos_integer()) -> {ok, Samplers :: [sampler()]} | {error, atom()}.
gen_samplers(N) ->

    glGenSamplers_raw(N).

-doc """
Reserve transform feedback object names.

It implements the `glGenTransformFeedbacks` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenTransformFeedbacks) formore information.
""".
-spec gen_transform_feedbacks(N :: pos_integer()) -> {ok, Feedbacks :: [transform_feedback()]} | {error, atom()}.
gen_transform_feedbacks(N) ->

    glGenTransformFeedbacks_raw(N).

-doc """
undefined

It implements the `glDisableVertexArrayAttrib` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisableVertexArrayAttrib) formore information.
""".
-spec disable_vertex_array_attrib(
    Array :: vertex_array(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
disable_vertex_array_attrib(Array, Index) ->

    glDisableVertexArrayAttrib_raw(Array, Index).

-doc """
Determine if a name corresponds to a sampler object.

It implements the `glIsSampler` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsSampler) formore information.
""".
-spec is_sampler(Sampler :: sampler()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_sampler(Sampler) ->

    glIsSampler_raw(Sampler).

-doc """
Specify a one-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTexImage1D) formore information.
""".
-spec compressed_tex_image_1d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Size :: integer(),
    Border :: integer(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_image_1d(Target, Level, InternalFormat, Size, Border, ImageSize, ImageData) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCompressedTexImage1D_raw(NewTarget, Level, NewInternalFormat, Size, Border, ImageSize, ImageData).

-doc """
Define front- and back-facing polygons.

It implements the `glFrontFace` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFrontFace) formore information.
""".
-spec front_face(Mode :: front_face_direction()) -> ok | {error, atom()}.
front_face(Mode) ->
    NewMode = case Mode of
        ccw -> ?GL_CCW;
        cw -> ?GL_CW
    end,

    glFrontFace_raw(NewMode).

-doc """
Controls the ordering of reads and writes to rendered fragments across drawing commands.

It implements the `glTextureBarrier` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureBarrier) formore information.
""".
-spec texture_barrier() -> ok | {error, atom()}.
texture_barrier() ->

    glTextureBarrier_raw().

-doc """
Specify the organization of vertex arrays.

It implements the `glVertexArrayAttribFormat` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayAttribFormat) formore information.
""".
-spec vertex_array_attrib_format(
    Array :: vertex_array(),
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_type(),
    Normalized :: boolean(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_array_attrib_format(Array, AttribIndex, Size, Type, Normalized, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        double -> ?GL_DOUBLE;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    glVertexArrayAttribFormat_raw(Array, AttribIndex, Size, NewType, Normalized, RelativeOffset).

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquation` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquation) formore information.
""".
-spec blend_equation(Mode :: blend_equation_mode_e_x_t()) -> ok | {error, atom()}.
blend_equation(Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquation_raw(NewMode).

-doc """
Return a string describing the current GL connection.

It implements the `glGetString` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetString) formore information.
""".
-spec get_string(Name :: string_name()) -> {ok, NoName :: string() | binary()} | {error, atom()}.
get_string(Name) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    glGetString_raw(NewName).

-doc """
Block and wait for a sync object to become signaled.

It implements the `glClientWaitSync` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClientWaitSync) formore information.
""".
-spec client_wait_sync(
    Sync :: sync(),
    Flags :: sync_object_mask(),
    Timeout :: pos_integer()
) -> {ok, NoName :: sync_status()} | {error, atom()}.
client_wait_sync(Sync, Flags, Timeout) ->
    NewFlags = lists:foldl(fun(Field, L) ->
        R = case Field of
            sync_flush_commands_bit -> ?GL_SYNC_FLUSH_COMMANDS_BIT
        end,
        L bor R
    end, 16#00, Flags),
    glClientWaitSync_raw(Sync, NewFlags, Timeout).

-doc """
Returns the information log for a shader object.

It implements the `glGetShaderInfoLog` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetShaderInfoLog) formore information.
""".
-spec get_shader_info_log(
    Shader :: shader(),
    StringSize :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_shader_info_log(Shader, StringSize) ->

    glGetShaderInfoLog_raw(Shader, StringSize).

-doc """
Generate query object names.

It implements the `glGenQueries` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenQueries) formore information.
""".
-spec gen_queries(N :: pos_integer()) -> {ok, Queries :: [query()]} | {error, atom()}.
gen_queries(N) ->

    glGenQueries_raw(N).

-doc """
Enable or disable server-side GL capabilities.

It implements the `glEnable` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnable) formore information.
""".
-spec enable(Cap :: enable_cap()) -> ok | {error, atom()}.
enable(Cap) ->
    NewCap = case Cap of
        clip_distance2 -> ?GL_CLIP_DISTANCE2;
        clip_distance5 -> ?GL_CLIP_DISTANCE5;
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        clip_distance7 -> ?GL_CLIP_DISTANCE7;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        clip_distance3 -> ?GL_CLIP_DISTANCE3;
        multisample -> ?GL_MULTISAMPLE;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        texture_cube_map_seamless -> ?GL_TEXTURE_CUBE_MAP_SEAMLESS;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        sample_alpha_to_one -> ?GL_SAMPLE_ALPHA_TO_ONE;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        clip_distance1 -> ?GL_CLIP_DISTANCE1;
        primitive_restart -> ?GL_PRIMITIVE_RESTART;
        cull_face -> ?GL_CULL_FACE;
        depth_clamp -> ?GL_DEPTH_CLAMP;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        sample_shading -> ?GL_SAMPLE_SHADING;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        scissor_test -> ?GL_SCISSOR_TEST;
        line_smooth -> ?GL_LINE_SMOOTH;
        texture_2d -> ?GL_TEXTURE_2D;
        framebuffer_srgb -> ?GL_FRAMEBUFFER_SRGB;
        clip_distance4 -> ?GL_CLIP_DISTANCE4;
        texture_1d -> ?GL_TEXTURE_1D;
        depth_test -> ?GL_DEPTH_TEST;
        clip_distance0 -> ?GL_CLIP_DISTANCE0;
        dither -> ?GL_DITHER;
        clip_distance6 -> ?GL_CLIP_DISTANCE6;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glEnable_raw(NewCap).

-doc """
Determine if a name corresponds to a buffer object.

It implements the `glIsBuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsBuffer) formore information.
""".
-spec is_buffer(Buffer :: buffer()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_buffer(Buffer) ->

    glIsBuffer_raw(Buffer).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparate` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFuncSeparate) formore information.
""".
-spec blend_func_separate(
    SourceRGB :: blending_factor(),
    DestinationRGB :: blending_factor(),
    SourceAlpha :: blending_factor(),
    DestinationAlpha :: blending_factor()
) -> ok | {error, atom()}.
blend_func_separate(SourceRGB, DestinationRGB, SourceAlpha, DestinationAlpha) ->
    NewDestinationAlpha = case DestinationAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewSourceAlpha = case SourceAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewDestinationRGB = case DestinationRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,
    NewSourceRGB = case SourceRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        src1_color -> ?GL_SRC1_COLOR;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        one_minus_src1_alpha -> ?GL_ONE_MINUS_SRC1_ALPHA;
        zero -> ?GL_ZERO;
        one_minus_src1_color -> ?GL_ONE_MINUS_SRC1_COLOR;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR;
        src1_alpha -> ?GL_SRC1_ALPHA
    end,

    glBlendFuncSeparate_raw(NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha).

-doc """
Simultaneously specify storage for all levels of a three-dimensional, two-dimensional array or cube-map array texture.

It implements the `glTextureStorage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureStorage3D) formore information.
""".
-spec texture_storage_3d(
    Texture :: texture(),
    Levels :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
texture_storage_3d(Texture, Levels, InternalFormat, Width, Height, Depth) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glTextureStorage3D_raw(Texture, Levels, NewInternalFormat, Width, Height, Depth).

-doc """
Bind a framebuffer to a framebuffer target.

It implements the `glBindFramebuffer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindFramebuffer) formore information.
""".
-spec bind_framebuffer(
    Target :: framebuffer_target(),
    Buffer :: frame_buffer()
) -> ok | {error, atom()}.
bind_framebuffer(Target, Buffer) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glBindFramebuffer_raw(NewTarget, Buffer).

-doc """
Control clip coordinate to window coordinate behavior.

It implements the `glClipControl` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClipControl) formore information.
""".
-spec clip_control(
    Origin :: clip_control_origin(),
    Depth :: clip_control_depth()
) -> ok | {error, atom()}.
clip_control(Origin, Depth) ->
    NewDepth = case Depth of
        negative_one_to_one -> ?GL_NEGATIVE_ONE_TO_ONE;
        zero_to_one -> ?GL_ZERO_TO_ONE
    end,
    NewOrigin = case Origin of
        upper_left -> ?GL_UPPER_LEFT;
        lower_left -> ?GL_LOWER_LEFT
    end,

    glClipControl_raw(NewOrigin, NewDepth).

-doc """
Specify clear values for the color buffers.

It implements the `glClearColor` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClearColor) formore information.
""".
-spec clear_color(
    Red :: float(),
    Green :: float(),
    Blue :: float(),
    Alpha :: float()
) -> ok | {error, atom()}.
clear_color(Red, Green, Blue, Alpha) ->

    glClearColor_raw(Red, Green, Blue, Alpha).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparatei` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquationSeparatei) formore information.
""".
-spec blend_equation_separate(
    Buffer :: pos_integer(),
    ModeRGB :: blend_equation_mode_e_x_t(),
    ModeAlpha :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation_separate(Buffer, ModeRGB, ModeAlpha) ->
    NewModeAlpha = case ModeAlpha of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,
    NewModeRGB = case ModeRGB of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationSeparatei_raw(Buffer, NewModeRGB, NewModeAlpha).

-doc """
Specify a three-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTexImage3D) formore information.
""".
-spec compressed_tex_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Border :: integer(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_image_3d(Target, Level, InternalFormat, Width, Height, Depth, Border, ImageSize, ImageData) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCompressedTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, ImageSize, ImageData).

-doc """
Delete named query objects.

It implements the `glDeleteQueries` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteQueries) formore information.
""".
-spec delete_queries(
    N :: integer(),
    Queries :: [query()]
) -> ok | {error, atom()}.
delete_queries(N, Queries) ->
    NewQueries = << <<ID:32/native>> || ID <- Queries >>,
    glDeleteQueries_raw(N, NewQueries).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMaski` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glColorMaski) formore information.
""".
-spec color_mask(
    Index :: pos_integer(),
    Red :: boolean(),
    Green :: boolean(),
    Blue :: boolean(),
    Alpha :: boolean()
) -> ok | {error, atom()}.
color_mask(Index, Red, Green, Blue, Alpha) ->

    glColorMaski_raw(Index, Red, Green, Blue, Alpha).

-doc """
Attach a level of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTexture) formore information.
""".
-spec framebuffer_texture(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: integer()
) -> ok | {error, atom()}.
framebuffer_texture(Target, Attachment, Texture, Level) ->
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTexture_raw(NewTarget, NewAttachment, Texture, Level).

-doc """
Delete named textures.

It implements the `glDeleteTextures` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteTextures) formore information.
""".
-spec delete_textures(
    N :: integer(),
    Textures :: [texture()]
) -> ok | {error, atom()}.
delete_textures(N, Textures) ->
    NewTextures = << <<ID:32/native>> || ID <- Textures >>,
    glDeleteTextures_raw(N, NewTextures).

-doc """
Create renderbuffer objects.

It implements the `glCreateRenderbuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateRenderbuffers) formore information.
""".
-spec create_renderbuffers(N :: pos_integer()) -> {ok, Renderbuffers :: [render_buffer()]} | {error, atom()}.
create_renderbuffers(N) ->

    glCreateRenderbuffers_raw(N).

-doc """
Establish data storage, format and dimensions of a
    renderbuffer object's image.

It implements the `glRenderbufferStorage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glRenderbufferStorage) formore information.
""".
-spec render_buffer_storage(
    Target :: renderbuffer_target(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
render_buffer_storage(Target, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    glRenderbufferStorage_raw(NewTarget, NewInternalFormat, Width, Height).

-doc """
Test whether a capability is enabled.

It implements the `glIsEnabled` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsEnabled) formore information.
""".
-spec is_enabled(Capability :: enable_cap()) -> {ok, NoName :: boolean()} | {error, atom()}.
is_enabled(Capability) ->
    NewCapability = case Capability of
        clip_distance2 -> ?GL_CLIP_DISTANCE2;
        clip_distance5 -> ?GL_CLIP_DISTANCE5;
        sample_mask -> ?GL_SAMPLE_MASK;
        vertex_array -> ?GL_VERTEX_ARRAY;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        clip_distance7 -> ?GL_CLIP_DISTANCE7;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        clip_distance3 -> ?GL_CLIP_DISTANCE3;
        multisample -> ?GL_MULTISAMPLE;
        stencil_test -> ?GL_STENCIL_TEST;
        debug_output -> ?GL_DEBUG_OUTPUT;
        texture_cube_map_seamless -> ?GL_TEXTURE_CUBE_MAP_SEAMLESS;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        sample_alpha_to_one -> ?GL_SAMPLE_ALPHA_TO_ONE;
        debug_output_synchronous -> ?GL_DEBUG_OUTPUT_SYNCHRONOUS;
        clip_distance1 -> ?GL_CLIP_DISTANCE1;
        primitive_restart -> ?GL_PRIMITIVE_RESTART;
        cull_face -> ?GL_CULL_FACE;
        depth_clamp -> ?GL_DEPTH_CLAMP;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        sample_shading -> ?GL_SAMPLE_SHADING;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        scissor_test -> ?GL_SCISSOR_TEST;
        line_smooth -> ?GL_LINE_SMOOTH;
        texture_2d -> ?GL_TEXTURE_2D;
        framebuffer_srgb -> ?GL_FRAMEBUFFER_SRGB;
        clip_distance4 -> ?GL_CLIP_DISTANCE4;
        texture_1d -> ?GL_TEXTURE_1D;
        depth_test -> ?GL_DEPTH_TEST;
        clip_distance0 -> ?GL_CLIP_DISTANCE0;
        dither -> ?GL_DITHER;
        clip_distance6 -> ?GL_CLIP_DISTANCE6;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    glIsEnabled_raw(NewCapability).

-doc """
Select a polygon rasterization mode.

It implements the `glPolygonMode` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPolygonMode) formore information.
""".
-spec polygon_mode(
    Face :: triangle_face(),
    Mode :: polygon_mode()
) -> ok | {error, atom()}.
polygon_mode(Face, Mode) ->
    NewMode = case Mode of
        point -> ?GL_POINT;
        fill -> ?GL_FILL;
        line -> ?GL_LINE
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glPolygonMode_raw(NewFace, NewMode).

-doc """
Launch one or more compute work groups.

It implements the `glDispatchCompute` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDispatchCompute) formore information.
""".
-spec dispatch_compute(
    NumGroupsX :: pos_integer(),
    NumGroupsY :: pos_integer(),
    NumGroupsZ :: pos_integer()
) -> ok | {error, atom()}.
dispatch_compute(NumGroupsX, NumGroupsY, NumGroupsZ) ->

    glDispatchCompute_raw(NumGroupsX, NumGroupsY, NumGroupsZ).

-doc """
undefined

It implements the `glVertexArrayAttribLFormat` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayAttribLFormat) formore information.
""".
-spec vertex_array_attrib_l_format(
    Array :: vertex_array(),
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_l_type(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_array_attrib_l_format(Array, AttribIndex, Size, Type, RelativeOffset) ->
    NewType = case Type of
        double -> ?GL_DOUBLE
    end,

    glVertexArrayAttribLFormat_raw(Array, AttribIndex, Size, NewType, RelativeOffset).

-doc """
Specify a three-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTexSubImage3D) formore information.
""".
-spec compressed_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: internal_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCompressedTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, ImageSize, ImageData).

-doc """
Delete named buffer objects.

It implements the `glDeleteBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteBuffers) formore information.
""".
-spec delete_buffers(
    N :: integer(),
    Buffers :: [buffer()]
) -> ok | {error, atom()}.
delete_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    glDeleteBuffers_raw(N, NewBuffers).

-doc """
Generate buffer object names.

It implements the `glGenBuffers` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenBuffers) formore information.
""".
-spec gen_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
gen_buffers(N) ->

    glGenBuffers_raw(N).

-doc """
Select active texture unit.

It implements the `glActiveTexture` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glActiveTexture) formore information.
""".
-spec active_texture(Texture :: texture_unit()) -> ok | {error, atom()}.
active_texture(Texture) ->
    NewTexture = case Texture of
        texture31 -> ?GL_TEXTURE31;
        texture0 -> ?GL_TEXTURE0;
        texture22 -> ?GL_TEXTURE22;
        texture1 -> ?GL_TEXTURE1;
        texture15 -> ?GL_TEXTURE15;
        texture30 -> ?GL_TEXTURE30;
        texture20 -> ?GL_TEXTURE20;
        texture26 -> ?GL_TEXTURE26;
        texture25 -> ?GL_TEXTURE25;
        texture7 -> ?GL_TEXTURE7;
        texture18 -> ?GL_TEXTURE18;
        texture11 -> ?GL_TEXTURE11;
        texture5 -> ?GL_TEXTURE5;
        texture3 -> ?GL_TEXTURE3;
        texture29 -> ?GL_TEXTURE29;
        texture13 -> ?GL_TEXTURE13;
        texture16 -> ?GL_TEXTURE16;
        texture4 -> ?GL_TEXTURE4;
        texture12 -> ?GL_TEXTURE12;
        texture21 -> ?GL_TEXTURE21;
        texture27 -> ?GL_TEXTURE27;
        texture24 -> ?GL_TEXTURE24;
        texture23 -> ?GL_TEXTURE23;
        texture28 -> ?GL_TEXTURE28;
        texture9 -> ?GL_TEXTURE9;
        texture8 -> ?GL_TEXTURE8;
        texture6 -> ?GL_TEXTURE6;
        texture17 -> ?GL_TEXTURE17;
        texture2 -> ?GL_TEXTURE2;
        texture10 -> ?GL_TEXTURE10;
        texture14 -> ?GL_TEXTURE14;
        texture19 -> ?GL_TEXTURE19
    end,

    glActiveTexture_raw(NewTexture).

-doc """
Resume transform feedback operations.

It implements the `glResumeTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glResumeTransformFeedback) formore information.
""".
-spec resume_transform_feedback() -> ok | {error, atom()}.
resume_transform_feedback() ->

    glResumeTransformFeedback_raw().

-doc """
undefined

It implements the `glGetInteger64i_v` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetInteger64i_v) formore information.
""".
-spec get_integer64(
    Target :: get_p_name(),
    Index :: pos_integer(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer64(Target, Index, N) ->
    NewTarget = case Target of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        max_tess_evaluation_shader_storage_blocks -> ?GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        texture_binding_buffer -> ?GL_TEXTURE_BINDING_BUFFER;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        min_map_buffer_alignment -> ?GL_MIN_MAP_BUFFER_ALIGNMENT;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        smooth_point_size_range -> ?GL_SMOOTH_POINT_SIZE_RANGE;
        max_rectangle_texture_size -> ?GL_MAX_RECTANGLE_TEXTURE_SIZE;
        max_geometry_shader_storage_blocks -> ?GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS;
        line_width -> ?GL_LINE_WIDTH;
        vertex_array -> ?GL_VERTEX_ARRAY;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        max_tess_evaluation_atomic_counters -> ?GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        max_framebuffer_layers -> ?GL_MAX_FRAMEBUFFER_LAYERS;
        max_dual_source_draw_buffers -> ?GL_MAX_DUAL_SOURCE_DRAW_BUFFERS;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        doublebuffer -> ?GL_DOUBLEBUFFER;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        program_point_size -> ?GL_PROGRAM_POINT_SIZE;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        primitive_restart_index -> ?GL_PRIMITIVE_RESTART_INDEX;
        timestamp -> ?GL_TIMESTAMP;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        logic_op_mode -> ?GL_LOGIC_OP_MODE;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        polygon_offset_line -> ?GL_POLYGON_OFFSET_LINE;
        polygon_smooth -> ?GL_POLYGON_SMOOTH;
        depth_range -> ?GL_DEPTH_RANGE;
        debug_group_stack_depth -> ?GL_DEBUG_GROUP_STACK_DEPTH;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        point_size_range -> ?GL_POINT_SIZE_RANGE;
        viewport_subpixel_bits -> ?GL_VIEWPORT_SUBPIXEL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_debug_group_stack_depth -> ?GL_MAX_DEBUG_GROUP_STACK_DEPTH;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        layer_provoking_vertex -> ?GL_LAYER_PROVOKING_VERTEX;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        texture_compression_hint -> ?GL_TEXTURE_COMPRESSION_HINT;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_clip_distances -> ?GL_MAX_CLIP_DISTANCES;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        polygon_mode -> ?GL_POLYGON_MODE;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        max_varying_floats -> ?GL_MAX_VARYING_FLOATS;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        texture_binding_1d_array -> ?GL_TEXTURE_BINDING_1D_ARRAY;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_viewports -> ?GL_MAX_VIEWPORTS;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        context_profile_mask -> ?GL_CONTEXT_PROFILE_MASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        max_geometry_uniform_blocks -> ?GL_MAX_GEOMETRY_UNIFORM_BLOCKS;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        stereo -> ?GL_STEREO;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        viewport_bounds_range -> ?GL_VIEWPORT_BOUNDS_RANGE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        point_fade_threshold_size -> ?GL_POINT_FADE_THRESHOLD_SIZE;
        max_geometry_texture_image_units -> ?GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        max_geometry_uniform_components -> ?GL_MAX_GEOMETRY_UNIFORM_COMPONENTS;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        max_tess_control_atomic_counters -> ?GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        polygon_offset_point -> ?GL_POLYGON_OFFSET_POINT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        point_size -> ?GL_POINT_SIZE;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        texture_binding_rectangle -> ?GL_TEXTURE_BINDING_RECTANGLE;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        max_tess_control_shader_storage_blocks -> ?GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        color_logic_op -> ?GL_COLOR_LOGIC_OP;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        max_tess_evaluation_uniform_blocks -> ?GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        line_smooth -> ?GL_LINE_SMOOTH;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        provoking_vertex -> ?GL_PROVOKING_VERTEX;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        texture_binding_2d_multisample_array -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
        stencil_ref -> ?GL_STENCIL_REF;
        polygon_smooth_hint -> ?GL_POLYGON_SMOOTH_HINT;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        texture_1d -> ?GL_TEXTURE_1D;
        texture_binding_1d -> ?GL_TEXTURE_BINDING_1D;
        context_flags -> ?GL_CONTEXT_FLAGS;
        blend_dst -> ?GL_BLEND_DST;
        max_geometry_input_components -> ?GL_MAX_GEOMETRY_INPUT_COMPONENTS;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_tess_control_uniform_blocks -> ?GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS;
        max_texture_buffer_size -> ?GL_MAX_TEXTURE_BUFFER_SIZE;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        blend_src -> ?GL_BLEND_SRC;
        current_program -> ?GL_CURRENT_PROGRAM;
        smooth_line_width_range -> ?GL_SMOOTH_LINE_WIDTH_RANGE;
        smooth_line_width_granularity -> ?GL_SMOOTH_LINE_WIDTH_GRANULARITY;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        draw_buffer -> ?GL_DRAW_BUFFER;
        smooth_point_size_granularity -> ?GL_SMOOTH_POINT_SIZE_GRANULARITY;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_combined_geometry_uniform_components -> ?GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_geometry_atomic_counters -> ?GL_MAX_GEOMETRY_ATOMIC_COUNTERS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        point_size_granularity -> ?GL_POINT_SIZE_GRANULARITY;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        line_width_range -> ?GL_LINE_WIDTH_RANGE;
        line_width_granularity -> ?GL_LINE_WIDTH_GRANULARITY;
        max_geometry_output_components -> ?GL_MAX_GEOMETRY_OUTPUT_COMPONENTS;
        line_smooth_hint -> ?GL_LINE_SMOOTH_HINT;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_label_length -> ?GL_MAX_LABEL_LENGTH;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        viewport_index_provoking_vertex -> ?GL_VIEWPORT_INDEX_PROVOKING_VERTEX;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        texture_buffer_offset_alignment -> ?GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    glGetInteger64i_v_raw(NewTarget, Index, N).

-doc """
Block until all GL execution is complete.

It implements the `glFinish` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFinish) formore information.
""".
-spec finish() -> ok | {error, atom()}.
finish() ->

    glFinish_raw().

-doc """
Copy pixels into a 1D texture image.

It implements the `glCopyTexImage1D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexImage1D) formore information.
""".
-spec copy_tex_image_1d(
    Target :: texture_target(),
    Level :: integer(),
    InternalFormat :: internal_format(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Border :: integer()
) -> ok | {error, atom()}.
copy_tex_image_1d(Target, Level, InternalFormat, X, Y, Width, Border) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glCopyTexImage1D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Border).

-doc """
undefined

It implements the `glEnableVertexArrayAttrib` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnableVertexArrayAttrib) formore information.
""".
-spec enable_vertex_array_attrib(
    Array :: vertex_array(),
    Index :: pos_integer()
) -> ok | {error, atom()}.
enable_vertex_array_attrib(Array, Index) ->

    glEnableVertexArrayAttrib_raw(Array, Index).

-doc """
undefined

It implements the `glEndConditionalRender` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndConditionalRender) formore information.
""".
-spec end_conditional_render() -> ok | {error, atom()}.
end_conditional_render() ->

    glEndConditionalRender_raw().

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage3DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage3DMultisample) formore information.
""".
-spec tex_image_3d_multisample(
    Target :: texture_target(),
    Samples :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
tex_image_3d_multisample(Target, Samples, InternalFormat, Width, Height, Depth, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexImage3DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, Depth, FixedSampleLocations).

-doc """
Specify a three-dimensional texture subimage in a compressed format.

It implements the `glCompressedTextureSubImage3D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompressedTextureSubImage3D) formore information.
""".
-spec compressed_texture_sub_image_3d(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: pixel_format(),
    ImageSize :: integer(),
    ImageData :: binary()
) -> ok | {error, atom()}.
compressed_texture_sub_image_3d(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, ImageSize, ImageData) ->
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glCompressedTextureSubImage3D_raw(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, ImageSize, ImageData).

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquationi` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquationi) formore information.
""".
-spec blend_equation(
    Buffer :: pos_integer(),
    Mode :: blend_equation_mode_e_x_t()
) -> ok | {error, atom()}.
blend_equation(Buffer, Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    glBlendEquationi_raw(Buffer, NewMode).

-doc """
Invalidate a region of a texture image.

It implements the `glInvalidateTexSubImage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glInvalidateTexSubImage) formore information.
""".
-spec invalidate_tex_sub_image(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer()
) -> ok | {error, atom()}.
invalidate_tex_sub_image(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth) ->

    glInvalidateTexSubImage_raw(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth).

-doc """
Retrieve a sub-region of a texture image from a texture
    object.

It implements the `glGetTextureSubImage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTextureSubImage) formore information.
""".
-spec get_texture_sub_image(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    OffsetZ :: integer(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    BufSize :: pos_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
get_texture_sub_image(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, Type, BufSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glGetTextureSubImage_raw(Texture, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, NewType, BufSize).

-doc """
Create program pipeline objects.

It implements the `glCreateProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateProgram) formore information.
""".
-spec create_program() -> {ok, NoName :: program()} | {error, atom()}.
create_program() ->

    glCreateProgram_raw().

-doc """
Render primitives using a count derived from a specifed stream of a transform feedback object.

It implements the `glDrawTransformFeedbackStream` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawTransformFeedbackStream) formore information.
""".
-spec draw_transform_feedback_stream(
    Mode :: primitive_type(),
    Feedback :: transform_feedback(),
    Stream :: pos_integer()
) -> ok | {error, atom()}.
draw_transform_feedback_stream(Mode, Feedback, Stream) ->
    NewMode = case Mode of
        triangles_adjacency -> ?GL_TRIANGLES_ADJACENCY;
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        triangle_strip_adjacency -> ?GL_TRIANGLE_STRIP_ADJACENCY;
        lines -> ?GL_LINES;
        patches -> ?GL_PATCHES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        quads -> ?GL_QUADS;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP;
        lines_adjacency -> ?GL_LINES_ADJACENCY;
        line_strip_adjacency -> ?GL_LINE_STRIP_ADJACENCY
    end,

    glDrawTransformFeedbackStream_raw(NewMode, Feedback, Stream).

-doc """
Generate mipmaps for a specified texture object.

It implements the `glGenerateTextureMipmap` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenerateTextureMipmap) formore information.
""".
-spec generate_texture_mipmap(Texture :: texture()) -> ok | {error, atom()}.
generate_texture_mipmap(Texture) ->

    glGenerateTextureMipmap_raw(Texture).

-doc """
Specify storage for a two-dimensional multisample array texture.

It implements the `glTexStorage3DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexStorage3DMultisample) formore information.
""".
-spec tex_storage_3d_multisample(
    Target :: texture_target(),
    Samples :: integer(),
    InternalFormat :: sized_internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
tex_storage_3d_multisample(Target, Samples, InternalFormat, Width, Height, Depth, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexStorage3DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, Depth, FixedSampleLocations).

-doc """
Attach a single layer of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTextureLayer` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTextureLayer) formore information.
""".
-spec framebuffer_texture_layer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: integer(),
    Layer :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_layer(Target, Attachment, Texture, Level, Layer) ->
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTextureLayer_raw(NewTarget, NewAttachment, Texture, Level, Layer).

-doc """
undefined

It implements the `glFramebufferTexture3D` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTexture3D) formore information.
""".
-spec framebuffer_texture_3d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: integer(),
    Layer :: integer()
) -> ok | {error, atom()}.
framebuffer_texture_3d(Target, Attachment, TextureTarget, Texture, Level, Layer) ->
    NewTextureTarget = case TextureTarget of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    glFramebufferTexture3D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level, Layer).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage2DMultisample` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage2DMultisample) formore information.
""".
-spec tex_image_2d_multisample(
    Target :: texture_target(),
    Samples :: integer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    FixedSampleLocations :: boolean()
) -> ok | {error, atom()}.
tex_image_2d_multisample(Target, Samples, InternalFormat, Width, Height, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        proxy_texture_rectangle -> ?GL_PROXY_TEXTURE_RECTANGLE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        proxy_texture_2d_multisample_array -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY;
        proxy_texture_1d -> ?GL_PROXY_TEXTURE_1D;
        proxy_texture_2d -> ?GL_PROXY_TEXTURE_2D;
        proxy_texture_cube_map_array -> ?GL_PROXY_TEXTURE_CUBE_MAP_ARRAY;
        texture_1d_array -> ?GL_TEXTURE_1D_ARRAY;
        proxy_texture_3d -> ?GL_PROXY_TEXTURE_3D;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        proxy_texture_2d_array -> ?GL_PROXY_TEXTURE_2D_ARRAY;
        texture_rectangle -> ?GL_TEXTURE_RECTANGLE;
        texture_buffer -> ?GL_TEXTURE_BUFFER;
        texture_2d -> ?GL_TEXTURE_2D;
        proxy_texture_cube_map -> ?GL_PROXY_TEXTURE_CUBE_MAP;
        texture_1d -> ?GL_TEXTURE_1D;
        proxy_texture_1d_array -> ?GL_PROXY_TEXTURE_1D_ARRAY;
        texture_2d_multisample_array -> ?GL_TEXTURE_2D_MULTISAMPLE_ARRAY;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE;
        texture_cube_map_array -> ?GL_TEXTURE_CUBE_MAP_ARRAY;
        proxy_texture_2d_multisample -> ?GL_PROXY_TEXTURE_2D_MULTISAMPLE
    end,

    glTexImage2DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, FixedSampleLocations).

-doc """
Launch one or more compute work groups using parameters stored in a buffer.

It implements the `glDispatchComputeIndirect` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDispatchComputeIndirect) formore information.
""".
-spec dispatch_compute_indirect(Indirect :: integer()) -> ok | {error, atom()}.
dispatch_compute_indirect(Indirect) ->

    glDispatchComputeIndirect_raw(Indirect).

-doc """
Specify whether front- or back-facing facets can be culled.

It implements the `glCullFace` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCullFace) formore information.
""".
-spec cull_face(Mode :: triangle_face()) -> ok | {error, atom()}.
cull_face(Mode) ->
    NewMode = case Mode of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    glCullFace_raw(NewMode).

-doc """
Delete vertex array objects.

It implements the `glDeleteVertexArrays` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteVertexArrays) formore information.
""".
-spec delete_vertex_arrays(
    N :: integer(),
    Arrays :: [vertex_array()]
) -> ok | {error, atom()}.
delete_vertex_arrays(N, Arrays) ->
    NewArrays = << <<ID:32/native>> || ID <- Arrays >>,
    glDeleteVertexArrays_raw(N, NewArrays).

-doc """
Change an active shader storage block binding.

It implements the `glShaderStorageBlockBinding` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glShaderStorageBlockBinding) formore information.
""".
-spec shader_storage_block_binding(
    Program :: program(),
    StorageBlockIndex :: pos_integer(),
    StorageBlockBinding :: pos_integer()
) -> ok | {error, atom()}.
shader_storage_block_binding(Program, StorageBlockIndex, StorageBlockBinding) ->

    glShaderStorageBlockBinding_raw(Program, StorageBlockIndex, StorageBlockBinding).

-doc """
undefined

It implements the `glGetProgramiv` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetProgramiv) formore information.
""".
-spec get_program_iv(
    Program :: program(),
    PName :: program_property_a_r_b(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_program_iv(Program, PName, N) ->
    NewPName = case PName of
        transform_feedback_buffer_mode -> ?GL_TRANSFORM_FEEDBACK_BUFFER_MODE;
        active_uniform_blocks -> ?GL_ACTIVE_UNIFORM_BLOCKS;
        active_uniform_max_length -> ?GL_ACTIVE_UNIFORM_MAX_LENGTH;
        active_atomic_counter_buffers -> ?GL_ACTIVE_ATOMIC_COUNTER_BUFFERS;
        geometry_vertices_out -> ?GL_GEOMETRY_VERTICES_OUT;
        compute_work_group_size -> ?GL_COMPUTE_WORK_GROUP_SIZE;
        transform_feedback_varying_max_length -> ?GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH;
        delete_status -> ?GL_DELETE_STATUS;
        active_uniform_block_max_name_length -> ?GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH;
        transform_feedback_varyings -> ?GL_TRANSFORM_FEEDBACK_VARYINGS;
        program_binary_length -> ?GL_PROGRAM_BINARY_LENGTH;
        active_attributes -> ?GL_ACTIVE_ATTRIBUTES;
        active_attribute_max_length -> ?GL_ACTIVE_ATTRIBUTE_MAX_LENGTH;
        active_uniforms -> ?GL_ACTIVE_UNIFORMS;
        validate_status -> ?GL_VALIDATE_STATUS;
        geometry_output_type -> ?GL_GEOMETRY_OUTPUT_TYPE;
        info_log_length -> ?GL_INFO_LOG_LENGTH;
        link_status -> ?GL_LINK_STATUS;
        geometry_input_type -> ?GL_GEOMETRY_INPUT_TYPE;
        attached_shaders -> ?GL_ATTACHED_SHADERS
    end,

    glGetProgramiv_raw(Program, NewPName, N).

-doc """
Installs a program object as part of current rendering state.

It implements the `glUseProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glUseProgram) formore information.
""".
-spec use_program(Program :: program()) -> ok | {error, atom()}.
use_program(Program) ->

    glUseProgram_raw(Program).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadPixels` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glReadPixels) formore information.
""".
-spec read_pixels(
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    DataSize :: pos_integer()
) -> {ok, Data :: binary()} | {error, atom()}.
read_pixels(X, Y, Width, Height, Format, Type, DataSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int_8_8_8_8_rev -> ?GL_UNSIGNED_INT_8_8_8_8_REV;
        unsigned_short_5_6_5_rev -> ?GL_UNSIGNED_SHORT_5_6_5_REV;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_1_5_5_5_rev -> ?GL_UNSIGNED_SHORT_1_5_5_5_REV;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_10_10_10_2 -> ?GL_UNSIGNED_INT_10_10_10_2;
        unsigned_short_4_4_4_4_rev -> ?GL_UNSIGNED_SHORT_4_4_4_4_REV;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_byte_2_3_3_rev -> ?GL_UNSIGNED_BYTE_2_3_3_REV;
        unsigned_int_8_8_8_8 -> ?GL_UNSIGNED_INT_8_8_8_8;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        unsigned_byte_3_3_2 -> ?GL_UNSIGNED_BYTE_3_3_2;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        blue_integer -> ?GL_BLUE_INTEGER;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        bgr -> ?GL_BGR;
        bgra_integer -> ?GL_BGRA_INTEGER;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        bgr_integer -> ?GL_BGR_INTEGER;
        bgra -> ?GL_BGRA;
        green_integer -> ?GL_GREEN_INTEGER;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    glReadPixels_raw(X, Y, Width, Height, NewFormat, NewType, DataSize).

-doc """
Deletes a program object.

It implements the `glDeleteProgram` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteProgram) formore information.
""".
-spec delete_program(Program :: program()) -> ok | {error, atom()}.
delete_program(Program) ->

    glDeleteProgram_raw(Program).

-doc """
Establish data storage, format and dimensions of a
    renderbuffer object's image.

It implements the `glNamedRenderbufferStorage` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glNamedRenderbufferStorage) formore information.
""".
-spec named_renderbuffer_storage(
    Renderbuffer :: render_buffer(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
named_renderbuffer_storage(Renderbuffer, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        depth_component32 -> ?GL_DEPTH_COMPONENT32;
        compressed_signed_rg_rgtc2 -> ?GL_COMPRESSED_SIGNED_RG_RGTC2;
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        compressed_rg_rgtc2 -> ?GL_COMPRESSED_RG_RGTC2;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        compressed_rgb -> ?GL_COMPRESSED_RGB;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        rg16 -> ?GL_RG16;
        rgb4 -> ?GL_RGB4;
        r8i -> ?GL_R8I;
        stencil_index1 -> ?GL_STENCIL_INDEX1;
        rgba2 -> ?GL_RGBA2;
        rgba16_snorm -> ?GL_RGBA16_SNORM;
        rg16_snorm -> ?GL_RG16_SNORM;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        r3_g3_b2 -> ?GL_R3_G3_B2;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        srgb_alpha -> ?GL_SRGB_ALPHA;
        red -> ?GL_RED;
        compressed_rgba -> ?GL_COMPRESSED_RGBA;
        rgba8 -> ?GL_RGBA8;
        r16 -> ?GL_R16;
        rgb32i -> ?GL_RGB32I;
        compressed_rgba_bptc_unorm -> ?GL_COMPRESSED_RGBA_BPTC_UNORM;
        rgb10 -> ?GL_RGB10;
        rgba32f -> ?GL_RGBA32F;
        rgb12 -> ?GL_RGB12;
        rg16f -> ?GL_RG16F;
        compressed_srgb_alpha -> ?GL_COMPRESSED_SRGB_ALPHA;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        stencil_index16 -> ?GL_STENCIL_INDEX16;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        compressed_red_rgtc1 -> ?GL_COMPRESSED_RED_RGTC1;
        rgb16 -> ?GL_RGB16;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        compressed_rgb_bptc_signed_float -> ?GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT;
        r32f -> ?GL_R32F;
        rgb5 -> ?GL_RGB5;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_rgb_bptc_unsigned_float -> ?GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT;
        compressed_srgb_alpha_bptc_unorm -> ?GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        rgba16 -> ?GL_RGBA16;
        compressed_red -> ?GL_COMPRESSED_RED;
        compressed_rg -> ?GL_COMPRESSED_RG;
        stencil_index4 -> ?GL_STENCIL_INDEX4;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rgba12 -> ?GL_RGBA12;
        r16_snorm -> ?GL_R16_SNORM;
        rgb16_snorm -> ?GL_RGB16_SNORM;
        compressed_signed_red_rgtc1 -> ?GL_COMPRESSED_SIGNED_RED_RGTC1;
        compressed_srgb -> ?GL_COMPRESSED_SRGB;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,

    glNamedRenderbufferStorage_raw(Renderbuffer, NewInternalFormat, Width, Height).

-doc """
undefined

It implements the `glVertexAttribLFormat` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribLFormat) formore information.
""".
-spec vertex_attrib_l_format(
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_l_type(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_attrib_l_format(AttribIndex, Size, Type, RelativeOffset) ->
    NewType = case Type of
        double -> ?GL_DOUBLE
    end,

    glVertexAttribLFormat_raw(AttribIndex, Size, NewType, RelativeOffset).

-doc """
Copy a two-dimensional texture subimage.

It implements the `glCopyTextureSubImage2D` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTextureSubImage2D) formore information.
""".
-spec copy_texture_sub_image_2d(
    Texture :: texture(),
    Level :: integer(),
    OffsetX :: integer(),
    OffsetY :: integer(),
    X :: integer(),
    Y :: integer(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_texture_sub_image_2d(Texture, Level, OffsetX, OffsetY, X, Y, Width, Height) ->

    glCopyTextureSubImage2D_raw(Texture, Level, OffsetX, OffsetY, X, Y, Width, Height).

-doc """
undefined

It implements the `glVertexArrayAttribIFormat` function

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexArrayAttribIFormat) formore information.
""".
-spec vertex_array_attrib_i_format(
    Array :: vertex_array(),
    AttribIndex :: pos_integer(),
    Size :: integer(),
    Type :: vertex_attrib_i_type(),
    RelativeOffset :: pos_integer()
) -> ok | {error, atom()}.
vertex_array_attrib_i_format(Array, AttribIndex, Size, Type, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        short -> ?GL_SHORT
    end,

    glVertexArrayAttribIFormat_raw(Array, AttribIndex, Size, NewType, RelativeOffset).

-doc """
Bind a transform feedback object.

It implements the `glBindTransformFeedback` function

```
gl:foobar(abc, xyz).

```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindTransformFeedback) formore information.
""".
-spec bind_transform_feedback(
    Target :: bind_transform_feedback_target(),
    Feedback :: transform_feedback()
) -> ok | {error, atom()}.
bind_transform_feedback(Target, Feedback) ->
    NewTarget = case Target of
        transform_feedback -> ?GL_TRANSFORM_FEEDBACK
    end,

    glBindTransformFeedback_raw(NewTarget, Feedback).


glDisable_raw(_Cap) -> 
    erlang:nif_error(nif_library_not_loaded).

glMemoryBarrierByRegion_raw(_Barriers) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparatei_raw(_Buffer, _SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glQueryCounter_raw(_Query, _Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindRenderbuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexAttribArray_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearStencil_raw(_S) -> 
    erlang:nif_error(nif_library_not_loaded).

glBeginQueryIndexed_raw(_Target, _Index, _Query) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribBinding_raw(_AttribIndex, _BindingIndex) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInfoLog_raw(_Program, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage2D_raw(_Target, _Levels, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramPipelineInfoLog_raw(_Pipeline, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetBooleani_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsEnabledi_raw(_Capability, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateBuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilOp_raw(_Fail, _ZFail, _ZPass) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsRenderbuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderiv_raw(_Shader, _PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage1D_raw(_Target, _Level, _Offset, _Width, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glFlush_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glPauseTransformFeedback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glIsQuery_raw(_Query) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture1D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsTransformFeedback_raw(_Feedback) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadBuffer_raw(_Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateProgramPipelines_raw(_Pipelines) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureSubImage2D_raw(_Texture, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteTransformFeedbacks_raw(_N, _Feedbacks) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateShader_raw(_Type) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindProgramPipeline_raw(_Pipeline) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindImageTexture_raw(_Unit, _Texture, _Level, _Layered, _Layer, _Access, _Format) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribPointer_raw(_Index, _Size, _Type, _Normalized, _Stride, _Pointer) -> 
    erlang:nif_error(nif_library_not_loaded).

glCheckNamedFramebufferStatus_raw(_Framebuffer, _Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64v_raw(_PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureStorage2DMultisample_raw(_Texture, _Samples, _InternalFormat, _Width, _Height, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawArraysInstanced_raw(_Mode, _First, _Count, _InstanceCount) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteFramebuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffset_raw(_Factor, _Units) -> 
    erlang:nif_error(nif_library_not_loaded).

glEndTransformFeedback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glActiveShaderProgram_raw(_Pipeline, _Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilMask_raw(_Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glClampColor_raw(_Target, _Clamp) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyBufferSubData_raw(_ReadTarget, _WriteTarget, _ReadOffset, _WriteOffset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glDisableVertexAttribArray_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateQueries_raw(_Target, _Queries) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearDepth_raw(_Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glLinkProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompileShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glDetachShader_raw(_Program, _Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetDoublev_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glScissorIndexed_raw(_Index, _Left, _Bottom, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyImageSubData_raw(_SrcName, _SrcTarget, _SrcLevel, _SrcX, _SrcY, _SrcZ, _DstName, _DstTarget, _DstLevel, _DstX, _DstY, _DstZ, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glAttachShader_raw(_Program, _Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glTransformFeedbackBufferRange_raw(_Feedback, _Index, _Buffer, _Offset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glTransformFeedbackBufferBase_raw(_Feedback, _Index, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenerateMipmap_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateVertexArrays_raw(_Arrays) -> 
    erlang:nif_error(nif_library_not_loaded).

glCheckFramebufferStatus_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlitNamedFramebuffer_raw(_ReadFramebuffer, _DrawFramebuffer, _SrcX0, _SrcY0, _SrcX1, _SrcY1, _DstX0, _DstY0, _DstX1, _DstY1, _Mask, _Filter) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glDisablei_raw(_Capability, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glFenceSync_raw(_Condition, _Flags) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetDoublei_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glWaitSync_raw(_Sync, _Flags, _Timeout) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenTextures_raw(_Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnablei_raw(_Capability, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glValidateProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindVertexBuffer_raw(_BindingIndex, _Buffer, _Offset, _Stride) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetStringi_raw(_Name, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glMemoryBarrier_raw(_Barriers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetnTexImage_raw(_Target, _Level, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage2D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Height, _Border) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindVertexArray_raw(_Array) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureSubImage1D_raw(_Texture, _Level, _Offset, _Width, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateTransformFeedbacks_raw(_Feedbacks) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthRangeIndexed_raw(_Index, _Near, _Far) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlitFramebuffer_raw(_SrcX0, _SrcY0, _SrcX1, _SrcY1, _DstX0, _DstY0, _DstX1, _DstY1, _Mask, _Filter) -> 
    erlang:nif_error(nif_library_not_loaded).

glNamedRenderbufferStorageMultisample_raw(_Renderbuffer, _Samples, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetCompressedTextureSubImage_raw(_Texture, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilMaskSeparate_raw(_Face, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribFormat_raw(_AttribIndex, _Size, _Type, _Normalized, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureStorage1D_raw(_Texture, _Levels, _InternalFormat, _Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glScissor_raw(_X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetError_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glIsVertexArray_raw(_Array) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateTextures_raw(_Target, _Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glPointSize_raw(_Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindTexture_raw(_Target, _Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteShader_raw(_Shader) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthRange_raw(_Near, _Far) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetIntegeri_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawBuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilFunc_raw(_Function, _Ref, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayElementBuffer_raw(_Array, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenProgramPipelines_raw(_Pipelines) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsSync_raw(_Sync) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage1D_raw(_Target, _Levels, _InternalFormat, _Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexBuffer_raw(_Target, _InternalFormat, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawArrays_raw(_Mode, _First, _Count) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture2D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribIFormat_raw(_AttribIndex, _Size, _Type, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glProvokingVertex_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glLineWidth_raw(_Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthMask_raw(_Flag) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparate_raw(_ModeRGB, _ModeAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureBufferRange_raw(_Texture, _InternalFormat, _Buffer, _Offset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureBuffer_raw(_Texture, _InternalFormat, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glViewport_raw(_X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetTextureImage_raw(_Texture, _Level, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glInvalidateTexImage_raw(_Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glBeginConditionalRender_raw(_Query, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureStorage3DMultisample_raw(_Texture, _Samples, _InternalFormat, _Width, _Height, _Depth, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetTexImage_raw(_Target, _Level, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawTransformFeedbackInstanced_raw(_Mode, _Feedback, _InstanceCount) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteRenderbuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindBuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage1D_raw(_Target, _Level, _Offset, _X, _Y, _Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawArraysInstancedBaseInstance_raw(_Mode, _First, _Count, _InstanceCount, _BaseInstance) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexBindingDivisor_raw(_Index, _Divisor) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFunci_raw(_Buffer, _SourceFactor, _DestinationFactor) -> 
    erlang:nif_error(nif_library_not_loaded).

glBufferData_raw(_Target, _Size, _Data, _Usage) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage1D_raw(_Target, _Level, _Offset, _Size, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderSource_raw(_Shader, _Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glSampleCoverage_raw(_Value, _Invert) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilOpSeparate_raw(_Face, _StencilFail, _DepthPassFail, _DepthPassPass) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTextureSubImage3D_raw(_Texture, _Level, _OffsetX, _OffsetY, _OffsetZ, _X, _Y, _Z, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyNamedBufferSubData_raw(_ReadBuffer, _WriteBuffer, _ReadOffset, _WriteOffset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFunc_raw(_SourceFactor, _DestinationFactor) -> 
    erlang:nif_error(nif_library_not_loaded).

glUseProgramStages_raw(_Pipeline, _Stages, _Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glHint_raw(_Target, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribLPointer_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateSamplers_raw(_Samplers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetBooleanv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glBeginTransformFeedback_raw(_PrimitiveMode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetGraphicsResetStatus_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffsetClamp_raw(_Factor, _Units, _Clamp) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayBindingDivisor_raw(_Array, _BindingIndex, _Divisor) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendColor_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage2DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glEndQueryIndexed_raw(_Target, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsProgramPipeline_raw(_Piepline) -> 
    erlang:nif_error(nif_library_not_loaded).

glBeginQuery_raw(_Target, _Query) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTextureSubImage2D_raw(_Texture, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexBufferRange_raw(_Target, _InternalFormat, _Buffer, _Offset, _Size) -> 
    erlang:nif_error(nif_library_not_loaded).

glReleaseShaderCompiler_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glGetFloati_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glEndQuery_raw(_Target) -> 
    erlang:nif_error(nif_library_not_loaded).

glNamedFramebufferTexture_raw(_Framebuffer, _Attachment, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteSamplers_raw(_N, _Samplers) -> 
    erlang:nif_error(nif_library_not_loaded).

glShaderSource_raw(_Shader, _Source) -> 
    erlang:nif_error(nif_library_not_loaded).

glClear_raw(_Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferRenderbuffer_raw(_Target, _Attachment, _RenderbufferTarget, _Renderbuffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayAttribBinding_raw(_Array, _AttribIndex, _BindingIndex) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTextureSubImage1D_raw(_Texture, _Level, _Offset, _X, _Y, _Width) -> 
    erlang:nif_error(nif_library_not_loaded).

glValidateProgramPipeline_raw(_Pipeline) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureStorage2D_raw(_Texture, _Levels, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage1D_raw(_Target, _Level, _InternalFormat, _Width, _Border, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glInvalidateBufferData_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glMinSampleShading_raw(_Value) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawTransformFeedbackStreamInstanced_raw(_Mode, _Feedback, _Stream, _InstanceCount) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteSync_raw(_Sync) -> 
    erlang:nif_error(nif_library_not_loaded).

glPrimitiveRestartIndex_raw(_Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawTransformFeedback_raw(_Mode, _Feedback) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadnPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glStencilFuncSeparate_raw(_Face, _Function, _Ref, _Mask) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetIntegerv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureSubImage3D_raw(_Texture, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenVertexArrays_raw(_Arrays) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenRenderbuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTextureSubImage1D_raw(_Texture, _Level, _Offset, _Width, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayVertexBuffer_raw(_Array, _BindingIndex, _Buffer, _Offset, _Stride) -> 
    erlang:nif_error(nif_library_not_loaded).

glDepthFunc_raw(_Function) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenFramebuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribDivisor_raw(_Index, _Divisor) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgramPipelines_raw(_N, _Pipelines) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetFloatv_raw(_Name, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage3D_raw(_Target, _Levels, _InternalFormat, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glColorMask_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glInvalidateBufferSubData_raw(_Buffer, _Offset, _Length) -> 
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorageMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsTexture_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureView_raw(_Texture, _Target, _OrigTexture, _InternalFormat, _MinLevel, _NumLevels, _MinLayer, _NumLayers) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsFramebuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenSamplers_raw(_Samplers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenTransformFeedbacks_raw(_Feedbacks) -> 
    erlang:nif_error(nif_library_not_loaded).

glDisableVertexArrayAttrib_raw(_Array, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsSampler_raw(_Sampler) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage1D_raw(_Target, _Level, _InternalFormat, _Size, _Border, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glFrontFace_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureBarrier_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayAttribFormat_raw(_Array, _AttribIndex, _Size, _Type, _Normalized, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquation_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetString_raw(_Name) -> 
    erlang:nif_error(nif_library_not_loaded).

glClientWaitSync_raw(_Sync, _Flags, _Timeout) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetShaderInfoLog_raw(_Shader, _InfoLog) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenQueries_raw(_Queries) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnable_raw(_Cap) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsBuffer_raw(_Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparate_raw(_SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glTextureStorage3D_raw(_Texture, _Levels, _InternalFormat, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindFramebuffer_raw(_Target, _Buffer) -> 
    erlang:nif_error(nif_library_not_loaded).

glClipControl_raw(_Origin, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glClearColor_raw(_Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparatei_raw(_Buffer, _ModeRGB, _ModeAlpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteQueries_raw(_N, _Queries) -> 
    erlang:nif_error(nif_library_not_loaded).

glColorMaski_raw(_Index, _Red, _Green, _Blue, _Alpha) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture_raw(_Target, _Attachment, _Texture, _Level) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteTextures_raw(_N, _Textures) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateRenderbuffers_raw(_Renderbuffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorage_raw(_Target, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glIsEnabled_raw(_Capability) -> 
    erlang:nif_error(nif_library_not_loaded).

glPolygonMode_raw(_Face, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glDispatchCompute_raw(_NumGroupsX, _NumGroupsY, _NumGroupsZ) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayAttribLFormat_raw(_Array, _AttribIndex, _Size, _Type, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteBuffers_raw(_N, _Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenBuffers_raw(_Buffers) -> 
    erlang:nif_error(nif_library_not_loaded).

glActiveTexture_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glResumeTransformFeedback_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64i_v_raw(_Target, _Index, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glFinish_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage1D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Border) -> 
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexArrayAttrib_raw(_Array, _Index) -> 
    erlang:nif_error(nif_library_not_loaded).

glEndConditionalRender_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage3DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _Depth, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glCompressedTextureSubImage3D_raw(_Texture, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _ImageSize, _ImageData) -> 
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationi_raw(_Buffer, _Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glInvalidateTexSubImage_raw(_Texture, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetTextureSubImage_raw(_Texture, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _Type, _Pixels) -> 
    erlang:nif_error(nif_library_not_loaded).

glCreateProgram_raw() -> 
    erlang:nif_error(nif_library_not_loaded).

glDrawTransformFeedbackStream_raw(_Mode, _Feedback, _Stream) -> 
    erlang:nif_error(nif_library_not_loaded).

glGenerateTextureMipmap_raw(_Texture) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexStorage3DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _Depth, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTextureLayer_raw(_Target, _Attachment, _Texture, _Level, _Layer) -> 
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture3D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level, _Layer) -> 
    erlang:nif_error(nif_library_not_loaded).

glTexImage2DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _FixedSampleLocations) -> 
    erlang:nif_error(nif_library_not_loaded).

glDispatchComputeIndirect_raw(_Indirect) -> 
    erlang:nif_error(nif_library_not_loaded).

glCullFace_raw(_Mode) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteVertexArrays_raw(_N, _Arrays) -> 
    erlang:nif_error(nif_library_not_loaded).

glShaderStorageBlockBinding_raw(_Program, _StorageBlockIndex, _StorageBlockBinding) -> 
    erlang:nif_error(nif_library_not_loaded).

glGetProgramiv_raw(_Program, _PName, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glUseProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glReadPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Data) -> 
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgram_raw(_Program) -> 
    erlang:nif_error(nif_library_not_loaded).

glNamedRenderbufferStorage_raw(_Renderbuffer, _InternalFormat, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribLFormat_raw(_AttribIndex, _Size, _Type, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glCopyTextureSubImage2D_raw(_Texture, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) -> 
    erlang:nif_error(nif_library_not_loaded).

glVertexArrayAttribIFormat_raw(_Array, _AttribIndex, _Size, _Type, _RelativeOffset) -> 
    erlang:nif_error(nif_library_not_loaded).

glBindTransformFeedback_raw(_Target, _Feedback) -> 
    erlang:nif_error(nif_library_not_loaded).

