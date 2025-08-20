// This file is generated. Do not edit!

#include <string.h>
#include <stdio.h>
#include <pthread.h>
#if defined(_WIN32)
    #include <windows.h>
#else
    #include <dlfcn.h>
#endif
#include <erl_nif.h>
#include <EGL/egl.h>
#include <glad/glad.h>

static ERL_NIF_TERM beam_atom_max_uniform_buffer_bindings;
static ERL_NIF_TERM beam_atom_less;
static ERL_NIF_TERM beam_atom_max_compute_uniform_components;
static ERL_NIF_TERM beam_atom_rgb565;
static ERL_NIF_TERM beam_atom_query_no_wait_inverted;
static ERL_NIF_TERM beam_atom_rg32ui;
static ERL_NIF_TERM beam_atom_patches;
static ERL_NIF_TERM beam_atom_transform_feedback_varying_max_length;
static ERL_NIF_TERM beam_atom_unsigned_int;
static ERL_NIF_TERM beam_atom_texture_swizzle_rgba;
static ERL_NIF_TERM beam_atom_stencil_back_func;
static ERL_NIF_TERM beam_atom_color_attachment30;
static ERL_NIF_TERM beam_atom_shader_compiler;
static ERL_NIF_TERM beam_atom_texture4;
static ERL_NIF_TERM beam_atom_version;
static ERL_NIF_TERM beam_atom_unsigned_int_8_8_8_8;
static ERL_NIF_TERM beam_atom_renderbuffer_binding;
static ERL_NIF_TERM beam_atom_triangle_strip;
static ERL_NIF_TERM beam_atom_stencil_buffer_bit;
static ERL_NIF_TERM beam_atom_max_geometry_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_buffer_binding;
static ERL_NIF_TERM beam_atom_max_tess_evaluation_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_stencil_back_value_mask;
static ERL_NIF_TERM beam_atom_active_uniforms;
static ERL_NIF_TERM beam_atom_texture_binding_2d;
static ERL_NIF_TERM beam_atom_pack_skip_rows;
static ERL_NIF_TERM beam_atom_max_texture_size;
static ERL_NIF_TERM beam_atom_query_wait_inverted;
static ERL_NIF_TERM beam_atom_texture_buffer_offset_alignment;
static ERL_NIF_TERM beam_atom_max_compute_work_group_size;
static ERL_NIF_TERM beam_atom_depth_component24;
static ERL_NIF_TERM beam_atom_texture_binding_2d_array;
static ERL_NIF_TERM beam_atom_rgba8;
static ERL_NIF_TERM beam_atom_max_tess_control_uniform_blocks;
static ERL_NIF_TERM beam_atom_max_label_length;
static ERL_NIF_TERM beam_atom_uniform_buffer_offset_alignment;
static ERL_NIF_TERM beam_atom_max;
static ERL_NIF_TERM beam_atom_array_buffer;
static ERL_NIF_TERM beam_atom_rgb16;
static ERL_NIF_TERM beam_atom_proxy_texture_2d_array;
static ERL_NIF_TERM beam_atom_line_strip;
static ERL_NIF_TERM beam_atom_any_samples_passed_conservative;
static ERL_NIF_TERM beam_atom_max_clip_distances;
static ERL_NIF_TERM beam_atom_depth24_stencil8;
static ERL_NIF_TERM beam_atom_invalid_operation;
static ERL_NIF_TERM beam_atom_max_varying_floats;
static ERL_NIF_TERM beam_atom_stencil_back_pass_depth_pass;
static ERL_NIF_TERM beam_atom_or_inverted;
static ERL_NIF_TERM beam_atom_rgba2;
static ERL_NIF_TERM beam_atom_draw_indirect_buffer;
static ERL_NIF_TERM beam_atom_blend_dst;
static ERL_NIF_TERM beam_atom_stream_draw;
static ERL_NIF_TERM beam_atom_rgba12;
static ERL_NIF_TERM beam_atom_always;
static ERL_NIF_TERM beam_atom_transform_feedback_primitives_written;
static ERL_NIF_TERM beam_atom_compressed_rgb8_punchthrough_alpha1_etc2;
static ERL_NIF_TERM beam_atom_dynamic_copy;
static ERL_NIF_TERM beam_atom_compressed_rg11_eac;
static ERL_NIF_TERM beam_atom_none;
static ERL_NIF_TERM beam_atom_texture_cube_map_negative_z;
static ERL_NIF_TERM beam_atom_polygon_offset_line;
static ERL_NIF_TERM beam_atom_framebuffer;
static ERL_NIF_TERM beam_atom_subpixel_bits;
static ERL_NIF_TERM beam_atom_r11f_g11f_b10f;
static ERL_NIF_TERM beam_atom_active_uniform_block_max_name_length;
static ERL_NIF_TERM beam_atom_left;
static ERL_NIF_TERM beam_atom_blend_color;
static ERL_NIF_TERM beam_atom_rg16i;
static ERL_NIF_TERM beam_atom_unpack_image_height;
static ERL_NIF_TERM beam_atom_element_array_buffer_binding;
static ERL_NIF_TERM beam_atom_query_no_wait;
static ERL_NIF_TERM beam_atom_proxy_texture_2d;
static ERL_NIF_TERM beam_atom_draw_framebuffer;
static ERL_NIF_TERM beam_atom_color_writemask;
static ERL_NIF_TERM beam_atom_viewport;
static ERL_NIF_TERM beam_atom_vendor;
static ERL_NIF_TERM beam_atom_incr_wrap;
static ERL_NIF_TERM beam_atom_num_extensions;
static ERL_NIF_TERM beam_atom_line_smooth_hint;
static ERL_NIF_TERM beam_atom_blend_src;
static ERL_NIF_TERM beam_atom_cull_face;
static ERL_NIF_TERM beam_atom_color_attachment4;
static ERL_NIF_TERM beam_atom_compressed_srgb8_alpha8_etc2_eac;
static ERL_NIF_TERM beam_atom_rgb16f;
static ERL_NIF_TERM beam_atom_texture_buffer;
static ERL_NIF_TERM beam_atom_texture_compare_mode;
static ERL_NIF_TERM beam_atom_pixel_pack_buffer_binding;
static ERL_NIF_TERM beam_atom_rgba32ui;
static ERL_NIF_TERM beam_atom_static_copy;
static ERL_NIF_TERM beam_atom_unpack_row_length;
static ERL_NIF_TERM beam_atom_texture_alpha_size;
static ERL_NIF_TERM beam_atom_rgba;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_enabled;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_offset_alignment;
static ERL_NIF_TERM beam_atom_bgr_integer;
static ERL_NIF_TERM beam_atom_xor_;
static ERL_NIF_TERM beam_atom_and_reverse;
static ERL_NIF_TERM beam_atom_alpha;
static ERL_NIF_TERM beam_atom_unpack_swap_bytes;
static ERL_NIF_TERM beam_atom_sample_coverage_value;
static ERL_NIF_TERM beam_atom_texture_2d_multisample;
static ERL_NIF_TERM beam_atom_max_fragment_uniform_blocks;
static ERL_NIF_TERM beam_atom_sample_shading;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_integer;
static ERL_NIF_TERM beam_atom_r16i;
static ERL_NIF_TERM beam_atom_max_vertex_attribs;
static ERL_NIF_TERM beam_atom_line_loop;
static ERL_NIF_TERM beam_atom_max_tess_control_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_int;
static ERL_NIF_TERM beam_atom_program_binary_formats;
static ERL_NIF_TERM beam_atom_color_attachment5;
static ERL_NIF_TERM beam_atom_max_array_texture_layers;
static ERL_NIF_TERM beam_atom_texture0;
static ERL_NIF_TERM beam_atom_max_geometry_texture_image_units;
static ERL_NIF_TERM beam_atom_doublebuffer;
static ERL_NIF_TERM beam_atom_logic_op_mode;
static ERL_NIF_TERM beam_atom_compressed_red;
static ERL_NIF_TERM beam_atom_smooth_point_size_granularity;
static ERL_NIF_TERM beam_atom_clip_distance7;
static ERL_NIF_TERM beam_atom_color_attachment23;
static ERL_NIF_TERM beam_atom_src1_alpha;
static ERL_NIF_TERM beam_atom_stack_underflow;
static ERL_NIF_TERM beam_atom_dither;
static ERL_NIF_TERM beam_atom_invert;
static ERL_NIF_TERM beam_atom_depth_func;
static ERL_NIF_TERM beam_atom_vertex_array_binding;
static ERL_NIF_TERM beam_atom_linear;
static ERL_NIF_TERM beam_atom_rg32f;
static ERL_NIF_TERM beam_atom_rgb8;
static ERL_NIF_TERM beam_atom_texture_internal_format;
static ERL_NIF_TERM beam_atom_r8_snorm;
static ERL_NIF_TERM beam_atom_context_flags;
static ERL_NIF_TERM beam_atom_polygon_mode;
static ERL_NIF_TERM beam_atom_uniform_buffer_binding;
static ERL_NIF_TERM beam_atom_dont_care;
static ERL_NIF_TERM beam_atom_proxy_texture_3d;
static ERL_NIF_TERM beam_atom_compute_work_group_size;
static ERL_NIF_TERM beam_atom_proxy_texture_1d;
static ERL_NIF_TERM beam_atom_compressed_rgb8_etc2;
static ERL_NIF_TERM beam_atom_viewport_bounds_range;
static ERL_NIF_TERM beam_atom_stencil_pass_depth_fail;
static ERL_NIF_TERM beam_atom_texture19;
static ERL_NIF_TERM beam_atom_polygon_smooth;
static ERL_NIF_TERM beam_atom_unsigned_byte_3_3_2;
static ERL_NIF_TERM beam_atom_stencil_index;
static ERL_NIF_TERM beam_atom_blue_integer;
static ERL_NIF_TERM beam_atom_color_attachment22;
static ERL_NIF_TERM beam_atom_green_integer;
static ERL_NIF_TERM beam_atom_blend_dst_rgb;
static ERL_NIF_TERM beam_atom_triangles;
static ERL_NIF_TERM beam_atom_attached_shaders;
static ERL_NIF_TERM beam_atom_fragment_shader;
static ERL_NIF_TERM beam_atom_ccw;
static ERL_NIF_TERM beam_atom_rgb32i;
static ERL_NIF_TERM beam_atom_shading_language_version;
static ERL_NIF_TERM beam_atom_query_by_region_wait;
static ERL_NIF_TERM beam_atom_draw_framebuffer_binding;
static ERL_NIF_TERM beam_atom_pack_alignment;
static ERL_NIF_TERM beam_atom_max_combined_uniform_blocks;
static ERL_NIF_TERM beam_atom_color_attachment6;
static ERL_NIF_TERM beam_atom_point_size_granularity;
static ERL_NIF_TERM beam_atom_primitives_submitted;
static ERL_NIF_TERM beam_atom_texture_base_level;
static ERL_NIF_TERM beam_atom_texture_cube_map_positive_x;
static ERL_NIF_TERM beam_atom_gequal;
static ERL_NIF_TERM beam_atom_zero;
static ERL_NIF_TERM beam_atom_stream_read;
static ERL_NIF_TERM beam_atom_max_uniform_block_size;
static ERL_NIF_TERM beam_atom_depth_component32f;
static ERL_NIF_TERM beam_atom_color_attachment11;
static ERL_NIF_TERM beam_atom_max_tess_control_atomic_counters;
static ERL_NIF_TERM beam_atom_samples;
static ERL_NIF_TERM beam_atom_byte;
static ERL_NIF_TERM beam_atom_lequal;
static ERL_NIF_TERM beam_atom_right;
static ERL_NIF_TERM beam_atom_rgba16ui;
static ERL_NIF_TERM beam_atom_texture_1d;
static ERL_NIF_TERM beam_atom_compressed_rgba_bptc_unorm;
static ERL_NIF_TERM beam_atom_primitives_generated;
static ERL_NIF_TERM beam_atom_rgb10_a2ui;
static ERL_NIF_TERM beam_atom_compressed_rgb;
static ERL_NIF_TERM beam_atom_texture_1d_array;
static ERL_NIF_TERM beam_atom_src1_color;
static ERL_NIF_TERM beam_atom_texture31;
static ERL_NIF_TERM beam_atom_max_fragment_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_max_cube_map_texture_size;
static ERL_NIF_TERM beam_atom_num_shader_binary_formats;
static ERL_NIF_TERM beam_atom_smooth_line_width_granularity;
static ERL_NIF_TERM beam_atom_rgb16i;
static ERL_NIF_TERM beam_atom_rgb12;
static ERL_NIF_TERM beam_atom_line_width_range;
static ERL_NIF_TERM beam_atom_implementation_color_read_type;
static ERL_NIF_TERM beam_atom_max_texture_lod_bias;
static ERL_NIF_TERM beam_atom_max_combined_texture_image_units;
static ERL_NIF_TERM beam_atom_layer_provoking_vertex;
static ERL_NIF_TERM beam_atom_rgba32f;
static ERL_NIF_TERM beam_atom_stereo;
static ERL_NIF_TERM beam_atom_r16f;
static ERL_NIF_TERM beam_atom_static_draw;
static ERL_NIF_TERM beam_atom_max_framebuffer_samples;
static ERL_NIF_TERM beam_atom_rgba16i;
static ERL_NIF_TERM beam_atom_texture_cube_map_negative_y;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_binding;
static ERL_NIF_TERM beam_atom_read_framebuffer;
static ERL_NIF_TERM beam_atom_or_;
static ERL_NIF_TERM beam_atom_compressed_rgb_bptc_unsigned_float;
static ERL_NIF_TERM beam_atom_copy;
static ERL_NIF_TERM beam_atom_rg;
static ERL_NIF_TERM beam_atom_quads;
static ERL_NIF_TERM beam_atom_max_compute_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_clip_distance0;
static ERL_NIF_TERM beam_atom_compressed_r11_eac;
static ERL_NIF_TERM beam_atom_any_samples_passed;
static ERL_NIF_TERM beam_atom_max_compute_texture_image_units;
static ERL_NIF_TERM beam_atom_scissor_test;
static ERL_NIF_TERM beam_atom_validate_status;
static ERL_NIF_TERM beam_atom_color_attachment1;
static ERL_NIF_TERM beam_atom_texture29;
static ERL_NIF_TERM beam_atom_texture24;
static ERL_NIF_TERM beam_atom_max_rectangle_texture_size;
static ERL_NIF_TERM beam_atom_line;
static ERL_NIF_TERM beam_atom_dynamic_read;
static ERL_NIF_TERM beam_atom_color_attachment18;
static ERL_NIF_TERM beam_atom_depth_stencil_texture_mode;
static ERL_NIF_TERM beam_atom_red;
static ERL_NIF_TERM beam_atom_color_attachment2;
static ERL_NIF_TERM beam_atom_back;
static ERL_NIF_TERM beam_atom_texture_max_level;
static ERL_NIF_TERM beam_atom_one_minus_dst_alpha;
static ERL_NIF_TERM beam_atom_proxy_texture_1d_array;
static ERL_NIF_TERM beam_atom_compressed_rgba8_etc2_eac;
static ERL_NIF_TERM beam_atom_sample_coverage;
static ERL_NIF_TERM beam_atom_red_integer;
static ERL_NIF_TERM beam_atom_current_program;
static ERL_NIF_TERM beam_atom_float_32_unsigned_int_24_8_rev;
static ERL_NIF_TERM beam_atom_texture26;
static ERL_NIF_TERM beam_atom_rgb32f;
static ERL_NIF_TERM beam_atom_pack_skip_images;
static ERL_NIF_TERM beam_atom_texture_wrap_t;
static ERL_NIF_TERM beam_atom_r8;
static ERL_NIF_TERM beam_atom_samples_passed;
static ERL_NIF_TERM beam_atom_sample_alpha_to_coverage;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_type;
static ERL_NIF_TERM beam_atom_compressed_texture_formats;
static ERL_NIF_TERM beam_atom_compressed_srgb8_etc2;
static ERL_NIF_TERM beam_atom_func_reverse_subtract;
static ERL_NIF_TERM beam_atom_texture16;
static ERL_NIF_TERM beam_atom_max_vertex_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_rgb32ui;
static ERL_NIF_TERM beam_atom_max_vertex_texture_image_units;
static ERL_NIF_TERM beam_atom_bgra_integer;
static ERL_NIF_TERM beam_atom_tess_evaluation_shader;
static ERL_NIF_TERM beam_atom_max_compute_atomic_counter_buffers;
static ERL_NIF_TERM beam_atom_float;
static ERL_NIF_TERM beam_atom_framebuffer_srgb;
static ERL_NIF_TERM beam_atom_depth_range;
static ERL_NIF_TERM beam_atom_depth_clear_value;
static ERL_NIF_TERM beam_atom_equal;
static ERL_NIF_TERM beam_atom_parameter_buffer;
static ERL_NIF_TERM beam_atom_texture22;
static ERL_NIF_TERM beam_atom_clip_distance6;
static ERL_NIF_TERM beam_atom_texture8;
static ERL_NIF_TERM beam_atom_texture10;
static ERL_NIF_TERM beam_atom_true;
static ERL_NIF_TERM beam_atom_rgba_integer;
static ERL_NIF_TERM beam_atom_texture_compare_func;
static ERL_NIF_TERM beam_atom_info_log_length;
static ERL_NIF_TERM beam_atom_invalid_framebuffer_operation;
static ERL_NIF_TERM beam_atom_max_tess_evaluation_atomic_counters;
static ERL_NIF_TERM beam_atom_query_buffer;
static ERL_NIF_TERM beam_atom_rgba8i;
static ERL_NIF_TERM beam_atom_static_read;
static ERL_NIF_TERM beam_atom_query_by_region_no_wait;
static ERL_NIF_TERM beam_atom_front_right;
static ERL_NIF_TERM beam_atom_rg32i;
static ERL_NIF_TERM beam_atom_unsigned_short_4_4_4_4;
static ERL_NIF_TERM beam_atom_blend_dst_alpha;
static ERL_NIF_TERM beam_atom_color_attachment14;
static ERL_NIF_TERM beam_atom_texture27;
static ERL_NIF_TERM beam_atom_rgb16_snorm;
static ERL_NIF_TERM beam_atom_max_combined_atomic_counters;
static ERL_NIF_TERM beam_atom_stencil_index4;
static ERL_NIF_TERM beam_atom_min_map_buffer_alignment;
static ERL_NIF_TERM beam_atom_pack_image_height;
static ERL_NIF_TERM beam_atom_texture28;
static ERL_NIF_TERM beam_atom_query_wait;
static ERL_NIF_TERM beam_atom_time_elapsed;
static ERL_NIF_TERM beam_atom_max_vertex_attrib_bindings;
static ERL_NIF_TERM beam_atom_max_varying_vectors;
static ERL_NIF_TERM beam_atom_stencil_writemask;
static ERL_NIF_TERM beam_atom_rgb16ui;
static ERL_NIF_TERM beam_atom_sample_mask;
static ERL_NIF_TERM beam_atom_compressed_rg_rgtc2;
static ERL_NIF_TERM beam_atom_rgb10_a2;
static ERL_NIF_TERM beam_atom_texture14;
static ERL_NIF_TERM beam_atom_keep;
static ERL_NIF_TERM beam_atom_max_framebuffer_height;
static ERL_NIF_TERM beam_atom_constant_alpha;
static ERL_NIF_TERM beam_atom_texture_cube_map_array;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_size;
static ERL_NIF_TERM beam_atom_fragment_shader_derivative_hint;
static ERL_NIF_TERM beam_atom_texture_border_color;
static ERL_NIF_TERM beam_atom_active_uniform_max_length;
static ERL_NIF_TERM beam_atom_clamp_read_color;
static ERL_NIF_TERM beam_atom_equiv;
static ERL_NIF_TERM beam_atom_uniform_buffer;
static ERL_NIF_TERM beam_atom_max_integer_samples;
static ERL_NIF_TERM beam_atom_r3_g3_b2;
static ERL_NIF_TERM beam_atom_geometry_input_type;
static ERL_NIF_TERM beam_atom_int_2_10_10_10_rev;
static ERL_NIF_TERM beam_atom_texture_swizzle_b;
static ERL_NIF_TERM beam_atom_geometry_shader;
static ERL_NIF_TERM beam_atom_blend_src_alpha;
static ERL_NIF_TERM beam_atom_dynamic_draw;
static ERL_NIF_TERM beam_atom_rgb_integer;
static ERL_NIF_TERM beam_atom_max_combined_compute_uniform_components;
static ERL_NIF_TERM beam_atom_texture5;
static ERL_NIF_TERM beam_atom_vertex_attrib_binding;
static ERL_NIF_TERM beam_atom_current_vertex_attrib;
static ERL_NIF_TERM beam_atom_line_width;
static ERL_NIF_TERM beam_atom_texture_binding_1d;
static ERL_NIF_TERM beam_atom_texture_binding_2d_multisample;
static ERL_NIF_TERM beam_atom_vertex_array;
static ERL_NIF_TERM beam_atom_stencil_back_ref;
static ERL_NIF_TERM beam_atom_rgb8ui;
static ERL_NIF_TERM beam_atom_max_texture_buffer_size;
static ERL_NIF_TERM beam_atom_texture_blue_size;
static ERL_NIF_TERM beam_atom_incr;
static ERL_NIF_TERM beam_atom_color_attachment8;
static ERL_NIF_TERM beam_atom_dst_alpha;
static ERL_NIF_TERM beam_atom_notequal;
static ERL_NIF_TERM beam_atom_r32i;
static ERL_NIF_TERM beam_atom_rgba8ui;
static ERL_NIF_TERM beam_atom_texture25;
static ERL_NIF_TERM beam_atom_active_atomic_counter_buffers;
static ERL_NIF_TERM beam_atom_stencil_ref;
static ERL_NIF_TERM beam_atom_one_minus_src_color;
static ERL_NIF_TERM beam_atom_max_framebuffer_width;
static ERL_NIF_TERM beam_atom_r8ui;
static ERL_NIF_TERM beam_atom_srgb;
static ERL_NIF_TERM beam_atom_max_vertex_atomic_counters;
static ERL_NIF_TERM beam_atom_unpack_alignment;
static ERL_NIF_TERM beam_atom_stencil_fail;
static ERL_NIF_TERM beam_atom_max_element_index;
static ERL_NIF_TERM beam_atom_texture20;
static ERL_NIF_TERM beam_atom_nearest;
static ERL_NIF_TERM beam_atom_max_combined_vertex_uniform_components;
static ERL_NIF_TERM beam_atom_sampler_binding;
static ERL_NIF_TERM beam_atom_renderer;
static ERL_NIF_TERM beam_atom_max_color_attachments;
static ERL_NIF_TERM beam_atom_pixel_pack_buffer;
static ERL_NIF_TERM beam_atom_texture_max_anisotropy;
static ERL_NIF_TERM beam_atom_max_fragment_uniform_vectors;
static ERL_NIF_TERM beam_atom_texture_2d_array;
static ERL_NIF_TERM beam_atom_proxy_texture_cube_map;
static ERL_NIF_TERM beam_atom_max_geometry_atomic_counters;
static ERL_NIF_TERM beam_atom_func_add;
static ERL_NIF_TERM beam_atom_depth_test;
static ERL_NIF_TERM beam_atom_point_fade_threshold_size;
static ERL_NIF_TERM beam_atom_renderbuffer;
static ERL_NIF_TERM beam_atom_copy_inverted;
static ERL_NIF_TERM beam_atom_or_reverse;
static ERL_NIF_TERM beam_atom_color_attachment3;
static ERL_NIF_TERM beam_atom_rgb10;
static ERL_NIF_TERM beam_atom_max_combined_geometry_uniform_components;
static ERL_NIF_TERM beam_atom_texture6;
static ERL_NIF_TERM beam_atom_texture_cube_map_seamless;
static ERL_NIF_TERM beam_atom_srgb8;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_size;
static ERL_NIF_TERM beam_atom_shader_storage_buffer;
static ERL_NIF_TERM beam_atom_compile_status;
static ERL_NIF_TERM beam_atom_link_status;
static ERL_NIF_TERM beam_atom_transform_feedback_varyings;
static ERL_NIF_TERM beam_atom_draw_buffer;
static ERL_NIF_TERM beam_atom_max_tess_evaluation_uniform_blocks;
static ERL_NIF_TERM beam_atom_texture_cube_map_negative_x;
static ERL_NIF_TERM beam_atom_color_attachment25;
static ERL_NIF_TERM beam_atom_texture12;
static ERL_NIF_TERM beam_atom_nand;
static ERL_NIF_TERM beam_atom_compressed_srgb8_punchthrough_alpha1_etc2;
static ERL_NIF_TERM beam_atom_rg_integer;
static ERL_NIF_TERM beam_atom_blend;
static ERL_NIF_TERM beam_atom_max_shader_storage_buffer_bindings;
static ERL_NIF_TERM beam_atom_color_attachment12;
static ERL_NIF_TERM beam_atom_max_3d_texture_size;
static ERL_NIF_TERM beam_atom_color_attachment7;
static ERL_NIF_TERM beam_atom_unsigned_int_8_8_8_8_rev;
static ERL_NIF_TERM beam_atom_max_vertex_attrib_relative_offset;
static ERL_NIF_TERM beam_atom_texture21;
static ERL_NIF_TERM beam_atom_stencil_func;
static ERL_NIF_TERM beam_atom_decr;
static ERL_NIF_TERM beam_atom_multisample;
static ERL_NIF_TERM beam_atom_clip_distance4;
static ERL_NIF_TERM beam_atom_srgb8_alpha8;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer;
static ERL_NIF_TERM beam_atom_max_uniform_locations;
static ERL_NIF_TERM beam_atom_max_viewport_dims;
static ERL_NIF_TERM beam_atom_line_smooth;
static ERL_NIF_TERM beam_atom_color_attachment10;
static ERL_NIF_TERM beam_atom_sample_buffers;
static ERL_NIF_TERM beam_atom_rg8ui;
static ERL_NIF_TERM beam_atom_r16ui;
static ERL_NIF_TERM beam_atom_max_viewports;
static ERL_NIF_TERM beam_atom_invalid_value;
static ERL_NIF_TERM beam_atom_max_elements_indices;
static ERL_NIF_TERM beam_atom_shader_binary_formats;
static ERL_NIF_TERM beam_atom_stencil_back_fail;
static ERL_NIF_TERM beam_atom_front;
static ERL_NIF_TERM beam_atom_max_texture_image_units;
static ERL_NIF_TERM beam_atom_double;
static ERL_NIF_TERM beam_atom_r8i;
static ERL_NIF_TERM beam_atom_cw;
static ERL_NIF_TERM beam_atom_rgba8_snorm;
static ERL_NIF_TERM beam_atom_color_attachment26;
static ERL_NIF_TERM beam_atom_bgra;
static ERL_NIF_TERM beam_atom_srgb_alpha;
static ERL_NIF_TERM beam_atom_one_minus_constant_alpha;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_normalized;
static ERL_NIF_TERM beam_atom_no_error;
static ERL_NIF_TERM beam_atom_max_color_texture_samples;
static ERL_NIF_TERM beam_atom_geometry_vertices_out;
static ERL_NIF_TERM beam_atom_program_pipeline_binding;
static ERL_NIF_TERM beam_atom_texture17;
static ERL_NIF_TERM beam_atom_color_attachment16;
static ERL_NIF_TERM beam_atom_fastest;
static ERL_NIF_TERM beam_atom_and_inverted;
static ERL_NIF_TERM beam_atom_max_compute_uniform_blocks;
static ERL_NIF_TERM beam_atom_active_texture;
static ERL_NIF_TERM beam_atom_num_compressed_texture_formats;
static ERL_NIF_TERM beam_atom_query_by_region_wait_inverted;
static ERL_NIF_TERM beam_atom_max_compute_work_group_count;
static ERL_NIF_TERM beam_atom_r16_snorm;
static ERL_NIF_TERM beam_atom_max_vertex_uniform_components;
static ERL_NIF_TERM beam_atom_max_combined_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_compute_shader;
static ERL_NIF_TERM beam_atom_texture_width;
static ERL_NIF_TERM beam_atom_texture_binding_rectangle;
static ERL_NIF_TERM beam_atom_provoking_vertex;
static ERL_NIF_TERM beam_atom_proxy_texture_2d_multisample;
static ERL_NIF_TERM beam_atom_one_minus_src1_color;
static ERL_NIF_TERM beam_atom_depth_writemask;
static ERL_NIF_TERM beam_atom_cull_face_mode;
static ERL_NIF_TERM beam_atom_stencil_back_pass_depth_fail;
static ERL_NIF_TERM beam_atom_uniform_buffer_size;
static ERL_NIF_TERM beam_atom_rgba4;
static ERL_NIF_TERM beam_atom_max_geometry_uniform_blocks;
static ERL_NIF_TERM beam_atom_texture18;
static ERL_NIF_TERM beam_atom_one_minus_src_alpha;
static ERL_NIF_TERM beam_atom_constant_color;
static ERL_NIF_TERM beam_atom_min_program_texel_offset;
static ERL_NIF_TERM beam_atom_texture_cube_map_positive_z;
static ERL_NIF_TERM beam_atom_src_alpha_saturate;
static ERL_NIF_TERM beam_atom_compressed_srgb_alpha_bptc_unorm;
static ERL_NIF_TERM beam_atom_triangle_strip_adjacency;
static ERL_NIF_TERM beam_atom_texture_compression_hint;
static ERL_NIF_TERM beam_atom_texture_red_size;
static ERL_NIF_TERM beam_atom_unsigned_short_5_6_5_rev;
static ERL_NIF_TERM beam_atom_color_attachment19;
static ERL_NIF_TERM beam_atom_texture_cube_map_positive_y;
static ERL_NIF_TERM beam_atom_max_elements_vertices;
static ERL_NIF_TERM beam_atom_rgb5_a1;
static ERL_NIF_TERM beam_atom_point;
static ERL_NIF_TERM beam_atom_invalid_enum;
static ERL_NIF_TERM beam_atom_texture_swizzle_a;
static ERL_NIF_TERM beam_atom_dispatch_indirect_buffer_binding;
static ERL_NIF_TERM beam_atom_stream_copy;
static ERL_NIF_TERM beam_atom_texture_green_size;
static ERL_NIF_TERM beam_atom_polygon_offset_factor;
static ERL_NIF_TERM beam_atom_depth_component32;
static ERL_NIF_TERM beam_atom_tess_control_shader;
static ERL_NIF_TERM beam_atom_stencil_index16;
static ERL_NIF_TERM beam_atom_program_binary_length;
static ERL_NIF_TERM beam_atom_active_uniform_blocks;
static ERL_NIF_TERM beam_atom_rgb8_snorm;
static ERL_NIF_TERM beam_atom_texture_binding_3d;
static ERL_NIF_TERM beam_atom_color_attachment13;
static ERL_NIF_TERM beam_atom_texture_2d;
static ERL_NIF_TERM beam_atom_texture_wrap_s;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_long;
static ERL_NIF_TERM beam_atom_primitive_restart_index;
static ERL_NIF_TERM beam_atom_blue;
static ERL_NIF_TERM beam_atom_unsigned_short_4_4_4_4_rev;
static ERL_NIF_TERM beam_atom_program_binary_retrievable_hint;
static ERL_NIF_TERM beam_atom_point_size;
static ERL_NIF_TERM beam_atom_color_attachment21;
static ERL_NIF_TERM beam_atom_color_attachment27;
static ERL_NIF_TERM beam_atom_dst_color;
static ERL_NIF_TERM beam_atom_r32f;
static ERL_NIF_TERM beam_atom_max_fragment_uniform_components;
static ERL_NIF_TERM beam_atom_color_attachment15;
static ERL_NIF_TERM beam_atom_max_compute_work_group_invocations;
static ERL_NIF_TERM beam_atom_vertex_shader_invocations;
static ERL_NIF_TERM beam_atom_texture_min_lod;
static ERL_NIF_TERM beam_atom_fill;
static ERL_NIF_TERM beam_atom_polygon_offset_point;
static ERL_NIF_TERM beam_atom_stencil_index8;
static ERL_NIF_TERM beam_atom_max_program_texel_offset;
static ERL_NIF_TERM beam_atom_greater;
static ERL_NIF_TERM beam_atom_rasterizer_discard;
static ERL_NIF_TERM beam_atom_pack_lsb_first;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_divisor;
static ERL_NIF_TERM beam_atom_debug_output_synchronous;
static ERL_NIF_TERM beam_atom_half_float;
static ERL_NIF_TERM beam_atom_one_minus_constant_color;
static ERL_NIF_TERM beam_atom_blend_equation_rgb;
static ERL_NIF_TERM beam_atom_unsigned_short_5_5_5_1;
static ERL_NIF_TERM beam_atom_active_attributes;
static ERL_NIF_TERM beam_atom_smooth_line_width_range;
static ERL_NIF_TERM beam_atom_color_attachment31;
static ERL_NIF_TERM beam_atom_stencil_pass_depth_pass;
static ERL_NIF_TERM beam_atom_implementation_color_read_format;
static ERL_NIF_TERM beam_atom_rg16f;
static ERL_NIF_TERM beam_atom_shader_type;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_mode;
static ERL_NIF_TERM beam_atom_texture9;
static ERL_NIF_TERM beam_atom_unsigned_int_2_10_10_10_rev;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_size;
static ERL_NIF_TERM beam_atom_clip_distance3;
static ERL_NIF_TERM beam_atom_max_geometry_uniform_components;
static ERL_NIF_TERM beam_atom_nor;
static ERL_NIF_TERM beam_atom_rg16ui;
static ERL_NIF_TERM beam_atom_sample_coverage_invert;
static ERL_NIF_TERM beam_atom_depth_component;
static ERL_NIF_TERM beam_atom_copy_write_buffer;
static ERL_NIF_TERM beam_atom_lines_adjacency;
static ERL_NIF_TERM beam_atom_max_compute_atomic_counters;
static ERL_NIF_TERM beam_atom_blend_src_rgb;
static ERL_NIF_TERM beam_atom_max_debug_group_stack_depth;
static ERL_NIF_TERM beam_atom_texture_swizzle_r;
static ERL_NIF_TERM beam_atom_stencil_clear_value;
static ERL_NIF_TERM beam_atom_front_left;
static ERL_NIF_TERM beam_atom_clip_distance5;
static ERL_NIF_TERM beam_atom_rgb5;
static ERL_NIF_TERM beam_atom_clear;
static ERL_NIF_TERM beam_atom_stencil_value_mask;
static ERL_NIF_TERM beam_atom_unsigned_byte;
static ERL_NIF_TERM beam_atom_rg16;
static ERL_NIF_TERM beam_atom_compressed_signed_rg_rgtc2;
static ERL_NIF_TERM beam_atom_texture_3d;
static ERL_NIF_TERM beam_atom_texture_swizzle_g;
static ERL_NIF_TERM beam_atom_shader_source_length;
static ERL_NIF_TERM beam_atom_max_combined_fragment_uniform_components;
static ERL_NIF_TERM beam_atom_element_array_buffer;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_start;
static ERL_NIF_TERM beam_atom_unpack_skip_pixels;
static ERL_NIF_TERM beam_atom_points;
static ERL_NIF_TERM beam_atom_vertex_attrib_relative_offset;
static ERL_NIF_TERM beam_atom_debug_output;
static ERL_NIF_TERM beam_atom_texture_mag_filter;
static ERL_NIF_TERM beam_atom_primitive_restart_fixed_index;
static ERL_NIF_TERM beam_atom_fixed_only;
static ERL_NIF_TERM beam_atom_texture23;
static ERL_NIF_TERM beam_atom_max_vertex_uniform_vectors;
static ERL_NIF_TERM beam_atom_color_logic_op;
static ERL_NIF_TERM beam_atom_aliased_line_width_range;
static ERL_NIF_TERM beam_atom_noop;
static ERL_NIF_TERM beam_atom_depth32f_stencil8;
static ERL_NIF_TERM beam_atom_texture7;
static ERL_NIF_TERM beam_atom_point_size_range;
static ERL_NIF_TERM beam_atom_texture_binding_buffer;
static ERL_NIF_TERM beam_atom_max_geometry_output_components;
static ERL_NIF_TERM beam_atom_viewport_index_provoking_vertex;
static ERL_NIF_TERM beam_atom_rgba16f;
static ERL_NIF_TERM beam_atom_rg8;
static ERL_NIF_TERM beam_atom_compressed_rg;
static ERL_NIF_TERM beam_atom_sample_alpha_to_one;
static ERL_NIF_TERM beam_atom_rgba16;
static ERL_NIF_TERM beam_atom_unpack_skip_images;
static ERL_NIF_TERM beam_atom_extensions;
static ERL_NIF_TERM beam_atom_rgb8i;
static ERL_NIF_TERM beam_atom_vertex_binding_stride;
static ERL_NIF_TERM beam_atom_texture_binding_1d_array;
static ERL_NIF_TERM beam_atom_depth_stencil;
static ERL_NIF_TERM beam_atom_timestamp;
static ERL_NIF_TERM beam_atom_texture_binding_cube_map;
static ERL_NIF_TERM beam_atom_color_attachment20;
static ERL_NIF_TERM beam_atom_compressed_red_rgtc1;
static ERL_NIF_TERM beam_atom_max_varying_components;
static ERL_NIF_TERM beam_atom_texture_2d_multisample_array;
static ERL_NIF_TERM beam_atom_depth_stencil_attachment;
static ERL_NIF_TERM beam_atom_texture_height;
static ERL_NIF_TERM beam_atom_src_alpha;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_start;
static ERL_NIF_TERM beam_atom_texture_max_lod;
static ERL_NIF_TERM beam_atom_green;
static ERL_NIF_TERM beam_atom_compressed_signed_r11_eac;
static ERL_NIF_TERM beam_atom_texture30;
static ERL_NIF_TERM beam_atom_rgb4;
static ERL_NIF_TERM beam_atom_unsigned_short_1_5_5_5_rev;
static ERL_NIF_TERM beam_atom_unsigned_int_10_10_10_2;
static ERL_NIF_TERM beam_atom_rg8_snorm;
static ERL_NIF_TERM beam_atom_rgba32i;
static ERL_NIF_TERM beam_atom_max_depth_texture_samples;
static ERL_NIF_TERM beam_atom_color_attachment29;
static ERL_NIF_TERM beam_atom_texture2;
static ERL_NIF_TERM beam_atom_rgb9_e5;
static ERL_NIF_TERM beam_atom_color_buffer_bit;
static ERL_NIF_TERM beam_atom_pixel_unpack_buffer;
static ERL_NIF_TERM beam_atom_texture_lod_bias;
static ERL_NIF_TERM beam_atom_rg8i;
static ERL_NIF_TERM beam_atom_max_framebuffer_layers;
static ERL_NIF_TERM beam_atom_atomic_counter_buffer;
static ERL_NIF_TERM beam_atom_max_fragment_atomic_counters;
static ERL_NIF_TERM beam_atom_short;
static ERL_NIF_TERM beam_atom_clip_distance1;
static ERL_NIF_TERM beam_atom_set;
static ERL_NIF_TERM beam_atom_max_renderbuffer_size;
static ERL_NIF_TERM beam_atom_viewport_subpixel_bits;
static ERL_NIF_TERM beam_atom_unsigned_int_10f_11f_11f_rev;
static ERL_NIF_TERM beam_atom_vertices_submitted;
static ERL_NIF_TERM beam_atom_scissor_box;
static ERL_NIF_TERM beam_atom_unsigned_short_5_6_5;
static ERL_NIF_TERM beam_atom_debug_group_stack_depth;
static ERL_NIF_TERM beam_atom_delete_status;
static ERL_NIF_TERM beam_atom_minor_version;
static ERL_NIF_TERM beam_atom_max_draw_buffers;
static ERL_NIF_TERM beam_atom_compressed_signed_red_rgtc1;
static ERL_NIF_TERM beam_atom_proxy_texture_rectangle;
static ERL_NIF_TERM beam_atom_r16;
static ERL_NIF_TERM beam_atom_back_left;
static ERL_NIF_TERM beam_atom_false;
static ERL_NIF_TERM beam_atom_stack_overflow;
static ERL_NIF_TERM beam_atom_primitive_restart;
static ERL_NIF_TERM beam_atom_lines;
static ERL_NIF_TERM beam_atom_proxy_texture_cube_map_array;
static ERL_NIF_TERM beam_atom_proxy_texture_2d_multisample_array;
static ERL_NIF_TERM beam_atom_max_fragment_input_components;
static ERL_NIF_TERM beam_atom_unpack_lsb_first;
static ERL_NIF_TERM beam_atom_triangles_adjacency;
static ERL_NIF_TERM beam_atom_max_dual_source_draw_buffers;
static ERL_NIF_TERM beam_atom_unsigned_short;
static ERL_NIF_TERM beam_atom_color_attachment0;
static ERL_NIF_TERM beam_atom_color_clear_value;
static ERL_NIF_TERM beam_atom_rgb;
static ERL_NIF_TERM beam_atom_dispatch_indirect_buffer;
static ERL_NIF_TERM beam_atom_geometry_output_type;
static ERL_NIF_TERM beam_atom_max_vertex_output_components;
static ERL_NIF_TERM beam_atom_texture1;
static ERL_NIF_TERM beam_atom_read_framebuffer_binding;
static ERL_NIF_TERM beam_atom_src_color;
static ERL_NIF_TERM beam_atom_query_by_region_no_wait_inverted;
static ERL_NIF_TERM beam_atom_texture_wrap_r;
static ERL_NIF_TERM beam_atom_max_sample_mask_words;
static ERL_NIF_TERM beam_atom_min;
static ERL_NIF_TERM beam_atom_transform_feedback_overflow;
static ERL_NIF_TERM beam_atom_num_program_binary_formats;
static ERL_NIF_TERM beam_atom_polygon_offset_units;
static ERL_NIF_TERM beam_atom_array_buffer_binding;
static ERL_NIF_TERM beam_atom_stencil_back_writemask;
static ERL_NIF_TERM beam_atom_unsigned_int_5_9_9_9_rev;
static ERL_NIF_TERM beam_atom_compressed_srgb;
static ERL_NIF_TERM beam_atom_compressed_rgba;
static ERL_NIF_TERM beam_atom_decr_wrap;
static ERL_NIF_TERM beam_atom_pack_row_length;
static ERL_NIF_TERM beam_atom_pixel_unpack_buffer_binding;
static ERL_NIF_TERM beam_atom_front_and_back;
static ERL_NIF_TERM beam_atom_bgr;
static ERL_NIF_TERM beam_atom_max_server_wait_timeout;
static ERL_NIF_TERM beam_atom_polygon_offset_fill;
static ERL_NIF_TERM beam_atom_depth_buffer_bit;
static ERL_NIF_TERM beam_atom_color_attachment9;
static ERL_NIF_TERM beam_atom_depth_clamp;
static ERL_NIF_TERM beam_atom_color_attachment17;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_binding;
static ERL_NIF_TERM beam_atom_smooth_point_size_range;
static ERL_NIF_TERM beam_atom_color_attachment28;
static ERL_NIF_TERM beam_atom_compressed_srgb_alpha;
static ERL_NIF_TERM beam_atom_fixed;
static ERL_NIF_TERM beam_atom_compressed_signed_rg11_eac;
static ERL_NIF_TERM beam_atom_pack_skip_pixels;
static ERL_NIF_TERM beam_atom_rg16_snorm;
static ERL_NIF_TERM beam_atom_one_minus_src1_alpha;
static ERL_NIF_TERM beam_atom_program_point_size;
static ERL_NIF_TERM beam_atom_active_attribute_max_length;
static ERL_NIF_TERM beam_atom_vertex_binding_divisor;
static ERL_NIF_TERM beam_atom_read_buffer;
static ERL_NIF_TERM beam_atom_line_strip_adjacency;
static ERL_NIF_TERM beam_atom_texture3;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_stride;
static ERL_NIF_TERM beam_atom_max_vertex_uniform_blocks;
static ERL_NIF_TERM beam_atom_vertex_shader;
static ERL_NIF_TERM beam_atom_never;
static ERL_NIF_TERM beam_atom_stencil_test;
static ERL_NIF_TERM beam_atom_unsigned_byte_2_3_3_rev;
static ERL_NIF_TERM beam_atom_unpack_skip_rows;
static ERL_NIF_TERM beam_atom_texture_rectangle;
static ERL_NIF_TERM beam_atom_major_version;
static ERL_NIF_TERM beam_atom_copy_read_buffer;
static ERL_NIF_TERM beam_atom_max_geometry_input_components;
static ERL_NIF_TERM beam_atom_texture_binding_2d_multisample_array;
static ERL_NIF_TERM beam_atom_depth_component16;
static ERL_NIF_TERM beam_atom_texture_cube_map;
static ERL_NIF_TERM beam_atom_replace;
static ERL_NIF_TERM beam_atom_stencil_index1;
static ERL_NIF_TERM beam_atom_back_right;
static ERL_NIF_TERM beam_atom_texture15;
static ERL_NIF_TERM beam_atom_stencil_attachment;
static ERL_NIF_TERM beam_atom_blend_equation_alpha;
static ERL_NIF_TERM beam_atom_line_width_granularity;
static ERL_NIF_TERM beam_atom_nicest;
static ERL_NIF_TERM beam_atom_func_subtract;
static ERL_NIF_TERM beam_atom_texture13;
static ERL_NIF_TERM beam_atom_blend_equation;
static ERL_NIF_TERM beam_atom_unsigned_int_24_8;
static ERL_NIF_TERM beam_atom_one_minus_dst_color;
static ERL_NIF_TERM beam_atom_depth_attachment;
static ERL_NIF_TERM beam_atom_out_of_memory;
static ERL_NIF_TERM beam_atom_triangle_fan;
static ERL_NIF_TERM beam_atom_one;
static ERL_NIF_TERM beam_atom_clip_distance2;
static ERL_NIF_TERM beam_atom_vertex_binding_offset;
static ERL_NIF_TERM beam_atom_compressed_rgb_bptc_signed_float;
static ERL_NIF_TERM beam_atom_rgba16_snorm;
static ERL_NIF_TERM beam_atom_and_;
static ERL_NIF_TERM beam_atom_pack_swap_bytes;
static ERL_NIF_TERM beam_atom_r32ui;
static ERL_NIF_TERM beam_atom_context_profile_mask;
static ERL_NIF_TERM beam_atom_front_face;
static ERL_NIF_TERM beam_atom_texture_min_filter;
static ERL_NIF_TERM beam_atom_uniform_buffer_start;
static ERL_NIF_TERM beam_atom_texture11;
static ERL_NIF_TERM beam_atom_color_attachment24;
static ERL_NIF_TERM beam_atom_polygon_smooth_hint;
static void* egl_nif_lib_handle = NULL;
typedef ERL_NIF_TERM (*execute_command_fn)(
    ERL_NIF_TERM (*function)(ErlNifEnv*, int, const ERL_NIF_TERM[]),
    ErlNifEnv*,
    int,
    ERL_NIF_TERM* []
);
execute_command_fn egl_nif_execute_command = NULL;

static int nif_module_load(ErlNifEnv *env, void **priv_data, ERL_NIF_TERM arg)
{
    (void)priv_data;

    char beam_egl_nif_path[1024];
    if (!enif_get_string(env, arg, beam_egl_nif_path, sizeof(beam_egl_nif_path), ERL_NIF_LATIN1)) {
        fprintf(stderr, "failed to read EGL binding library path from argument\n");
        return -1;
    }

#if defined(_WIN32)
    HINSTANCE egl_nif_lib_handle = LoadLibrary(beam_egl_nif_path);
    if (!egl_nif_lib_handle) {
        printf("failed to load beam-egl.dll: %s\n", GetLastError());
        return -1;
    }

    egl_nif_execute_command = (execute_command_fn)GetProcAddress(egl_nif_lib_handle, "egl_execute_command");
    if (!egl_nif_execute_command) {
        printf("failed to load symbol egl_execute_command: %s\n", GetLastError());
        FreeLibrary(egl_nif_lib_handle);
        return -1;
    }
#else
    egl_nif_lib_handle = dlopen(beam_egl_nif_path, RTLD_NOW);
    if (!egl_nif_lib_handle) {
        fprintf(stderr, "failed to load beam-egl.so: %s\n", dlerror());
        return -1;
    }

    egl_nif_execute_command = dlsym(egl_nif_lib_handle, "egl_execute_command");
    if (!egl_nif_execute_command) {
        fprintf(stderr, "failed to load symbol egl_execute_command: %s\n", dlerror());
        dlclose(egl_nif_lib_handle);
        return -1;
    }
#endif

    beam_atom_max_uniform_buffer_bindings = enif_make_atom(env, "max_uniform_buffer_bindings");
    beam_atom_less = enif_make_atom(env, "less");
    beam_atom_max_compute_uniform_components = enif_make_atom(env, "max_compute_uniform_components");
    beam_atom_rgb565 = enif_make_atom(env, "rgb565");
    beam_atom_query_no_wait_inverted = enif_make_atom(env, "query_no_wait_inverted");
    beam_atom_rg32ui = enif_make_atom(env, "rg32ui");
    beam_atom_patches = enif_make_atom(env, "patches");
    beam_atom_transform_feedback_varying_max_length = enif_make_atom(env, "transform_feedback_varying_max_length");
    beam_atom_unsigned_int = enif_make_atom(env, "unsigned_int");
    beam_atom_texture_swizzle_rgba = enif_make_atom(env, "texture_swizzle_rgba");
    beam_atom_stencil_back_func = enif_make_atom(env, "stencil_back_func");
    beam_atom_color_attachment30 = enif_make_atom(env, "color_attachment30");
    beam_atom_shader_compiler = enif_make_atom(env, "shader_compiler");
    beam_atom_texture4 = enif_make_atom(env, "texture4");
    beam_atom_version = enif_make_atom(env, "version");
    beam_atom_unsigned_int_8_8_8_8 = enif_make_atom(env, "unsigned_int_8_8_8_8");
    beam_atom_renderbuffer_binding = enif_make_atom(env, "renderbuffer_binding");
    beam_atom_triangle_strip = enif_make_atom(env, "triangle_strip");
    beam_atom_stencil_buffer_bit = enif_make_atom(env, "stencil_buffer_bit");
    beam_atom_max_geometry_shader_storage_blocks = enif_make_atom(env, "max_geometry_shader_storage_blocks");
    beam_atom_vertex_attrib_array_buffer_binding = enif_make_atom(env, "vertex_attrib_array_buffer_binding");
    beam_atom_max_tess_evaluation_shader_storage_blocks = enif_make_atom(env, "max_tess_evaluation_shader_storage_blocks");
    beam_atom_stencil_back_value_mask = enif_make_atom(env, "stencil_back_value_mask");
    beam_atom_active_uniforms = enif_make_atom(env, "active_uniforms");
    beam_atom_texture_binding_2d = enif_make_atom(env, "texture_binding_2d");
    beam_atom_pack_skip_rows = enif_make_atom(env, "pack_skip_rows");
    beam_atom_max_texture_size = enif_make_atom(env, "max_texture_size");
    beam_atom_query_wait_inverted = enif_make_atom(env, "query_wait_inverted");
    beam_atom_texture_buffer_offset_alignment = enif_make_atom(env, "texture_buffer_offset_alignment");
    beam_atom_max_compute_work_group_size = enif_make_atom(env, "max_compute_work_group_size");
    beam_atom_depth_component24 = enif_make_atom(env, "depth_component24");
    beam_atom_texture_binding_2d_array = enif_make_atom(env, "texture_binding_2d_array");
    beam_atom_rgba8 = enif_make_atom(env, "rgba8");
    beam_atom_max_tess_control_uniform_blocks = enif_make_atom(env, "max_tess_control_uniform_blocks");
    beam_atom_max_label_length = enif_make_atom(env, "max_label_length");
    beam_atom_uniform_buffer_offset_alignment = enif_make_atom(env, "uniform_buffer_offset_alignment");
    beam_atom_max = enif_make_atom(env, "max");
    beam_atom_array_buffer = enif_make_atom(env, "array_buffer");
    beam_atom_rgb16 = enif_make_atom(env, "rgb16");
    beam_atom_proxy_texture_2d_array = enif_make_atom(env, "proxy_texture_2d_array");
    beam_atom_line_strip = enif_make_atom(env, "line_strip");
    beam_atom_any_samples_passed_conservative = enif_make_atom(env, "any_samples_passed_conservative");
    beam_atom_max_clip_distances = enif_make_atom(env, "max_clip_distances");
    beam_atom_depth24_stencil8 = enif_make_atom(env, "depth24_stencil8");
    beam_atom_invalid_operation = enif_make_atom(env, "invalid_operation");
    beam_atom_max_varying_floats = enif_make_atom(env, "max_varying_floats");
    beam_atom_stencil_back_pass_depth_pass = enif_make_atom(env, "stencil_back_pass_depth_pass");
    beam_atom_or_inverted = enif_make_atom(env, "or_inverted");
    beam_atom_rgba2 = enif_make_atom(env, "rgba2");
    beam_atom_draw_indirect_buffer = enif_make_atom(env, "draw_indirect_buffer");
    beam_atom_blend_dst = enif_make_atom(env, "blend_dst");
    beam_atom_stream_draw = enif_make_atom(env, "stream_draw");
    beam_atom_rgba12 = enif_make_atom(env, "rgba12");
    beam_atom_always = enif_make_atom(env, "always");
    beam_atom_transform_feedback_primitives_written = enif_make_atom(env, "transform_feedback_primitives_written");
    beam_atom_compressed_rgb8_punchthrough_alpha1_etc2 = enif_make_atom(env, "compressed_rgb8_punchthrough_alpha1_etc2");
    beam_atom_dynamic_copy = enif_make_atom(env, "dynamic_copy");
    beam_atom_compressed_rg11_eac = enif_make_atom(env, "compressed_rg11_eac");
    beam_atom_none = enif_make_atom(env, "none");
    beam_atom_texture_cube_map_negative_z = enif_make_atom(env, "texture_cube_map_negative_z");
    beam_atom_polygon_offset_line = enif_make_atom(env, "polygon_offset_line");
    beam_atom_framebuffer = enif_make_atom(env, "framebuffer");
    beam_atom_subpixel_bits = enif_make_atom(env, "subpixel_bits");
    beam_atom_r11f_g11f_b10f = enif_make_atom(env, "r11f_g11f_b10f");
    beam_atom_active_uniform_block_max_name_length = enif_make_atom(env, "active_uniform_block_max_name_length");
    beam_atom_left = enif_make_atom(env, "left");
    beam_atom_blend_color = enif_make_atom(env, "blend_color");
    beam_atom_rg16i = enif_make_atom(env, "rg16i");
    beam_atom_unpack_image_height = enif_make_atom(env, "unpack_image_height");
    beam_atom_element_array_buffer_binding = enif_make_atom(env, "element_array_buffer_binding");
    beam_atom_query_no_wait = enif_make_atom(env, "query_no_wait");
    beam_atom_proxy_texture_2d = enif_make_atom(env, "proxy_texture_2d");
    beam_atom_draw_framebuffer = enif_make_atom(env, "draw_framebuffer");
    beam_atom_color_writemask = enif_make_atom(env, "color_writemask");
    beam_atom_viewport = enif_make_atom(env, "viewport");
    beam_atom_vendor = enif_make_atom(env, "vendor");
    beam_atom_incr_wrap = enif_make_atom(env, "incr_wrap");
    beam_atom_num_extensions = enif_make_atom(env, "num_extensions");
    beam_atom_line_smooth_hint = enif_make_atom(env, "line_smooth_hint");
    beam_atom_blend_src = enif_make_atom(env, "blend_src");
    beam_atom_cull_face = enif_make_atom(env, "cull_face");
    beam_atom_color_attachment4 = enif_make_atom(env, "color_attachment4");
    beam_atom_compressed_srgb8_alpha8_etc2_eac = enif_make_atom(env, "compressed_srgb8_alpha8_etc2_eac");
    beam_atom_rgb16f = enif_make_atom(env, "rgb16f");
    beam_atom_texture_buffer = enif_make_atom(env, "texture_buffer");
    beam_atom_texture_compare_mode = enif_make_atom(env, "texture_compare_mode");
    beam_atom_pixel_pack_buffer_binding = enif_make_atom(env, "pixel_pack_buffer_binding");
    beam_atom_rgba32ui = enif_make_atom(env, "rgba32ui");
    beam_atom_static_copy = enif_make_atom(env, "static_copy");
    beam_atom_unpack_row_length = enif_make_atom(env, "unpack_row_length");
    beam_atom_texture_alpha_size = enif_make_atom(env, "texture_alpha_size");
    beam_atom_rgba = enif_make_atom(env, "rgba");
    beam_atom_vertex_attrib_array_enabled = enif_make_atom(env, "vertex_attrib_array_enabled");
    beam_atom_shader_storage_buffer_offset_alignment = enif_make_atom(env, "shader_storage_buffer_offset_alignment");
    beam_atom_bgr_integer = enif_make_atom(env, "bgr_integer");
    beam_atom_xor_ = enif_make_atom(env, "xor_");
    beam_atom_and_reverse = enif_make_atom(env, "and_reverse");
    beam_atom_alpha = enif_make_atom(env, "alpha");
    beam_atom_unpack_swap_bytes = enif_make_atom(env, "unpack_swap_bytes");
    beam_atom_sample_coverage_value = enif_make_atom(env, "sample_coverage_value");
    beam_atom_texture_2d_multisample = enif_make_atom(env, "texture_2d_multisample");
    beam_atom_max_fragment_uniform_blocks = enif_make_atom(env, "max_fragment_uniform_blocks");
    beam_atom_sample_shading = enif_make_atom(env, "sample_shading");
    beam_atom_vertex_attrib_array_integer = enif_make_atom(env, "vertex_attrib_array_integer");
    beam_atom_r16i = enif_make_atom(env, "r16i");
    beam_atom_max_vertex_attribs = enif_make_atom(env, "max_vertex_attribs");
    beam_atom_line_loop = enif_make_atom(env, "line_loop");
    beam_atom_max_tess_control_shader_storage_blocks = enif_make_atom(env, "max_tess_control_shader_storage_blocks");
    beam_atom_int = enif_make_atom(env, "int");
    beam_atom_program_binary_formats = enif_make_atom(env, "program_binary_formats");
    beam_atom_color_attachment5 = enif_make_atom(env, "color_attachment5");
    beam_atom_max_array_texture_layers = enif_make_atom(env, "max_array_texture_layers");
    beam_atom_texture0 = enif_make_atom(env, "texture0");
    beam_atom_max_geometry_texture_image_units = enif_make_atom(env, "max_geometry_texture_image_units");
    beam_atom_doublebuffer = enif_make_atom(env, "doublebuffer");
    beam_atom_logic_op_mode = enif_make_atom(env, "logic_op_mode");
    beam_atom_compressed_red = enif_make_atom(env, "compressed_red");
    beam_atom_smooth_point_size_granularity = enif_make_atom(env, "smooth_point_size_granularity");
    beam_atom_clip_distance7 = enif_make_atom(env, "clip_distance7");
    beam_atom_color_attachment23 = enif_make_atom(env, "color_attachment23");
    beam_atom_src1_alpha = enif_make_atom(env, "src1_alpha");
    beam_atom_stack_underflow = enif_make_atom(env, "stack_underflow");
    beam_atom_dither = enif_make_atom(env, "dither");
    beam_atom_invert = enif_make_atom(env, "invert");
    beam_atom_depth_func = enif_make_atom(env, "depth_func");
    beam_atom_vertex_array_binding = enif_make_atom(env, "vertex_array_binding");
    beam_atom_linear = enif_make_atom(env, "linear");
    beam_atom_rg32f = enif_make_atom(env, "rg32f");
    beam_atom_rgb8 = enif_make_atom(env, "rgb8");
    beam_atom_texture_internal_format = enif_make_atom(env, "texture_internal_format");
    beam_atom_r8_snorm = enif_make_atom(env, "r8_snorm");
    beam_atom_context_flags = enif_make_atom(env, "context_flags");
    beam_atom_polygon_mode = enif_make_atom(env, "polygon_mode");
    beam_atom_uniform_buffer_binding = enif_make_atom(env, "uniform_buffer_binding");
    beam_atom_dont_care = enif_make_atom(env, "dont_care");
    beam_atom_proxy_texture_3d = enif_make_atom(env, "proxy_texture_3d");
    beam_atom_compute_work_group_size = enif_make_atom(env, "compute_work_group_size");
    beam_atom_proxy_texture_1d = enif_make_atom(env, "proxy_texture_1d");
    beam_atom_compressed_rgb8_etc2 = enif_make_atom(env, "compressed_rgb8_etc2");
    beam_atom_viewport_bounds_range = enif_make_atom(env, "viewport_bounds_range");
    beam_atom_stencil_pass_depth_fail = enif_make_atom(env, "stencil_pass_depth_fail");
    beam_atom_texture19 = enif_make_atom(env, "texture19");
    beam_atom_polygon_smooth = enif_make_atom(env, "polygon_smooth");
    beam_atom_unsigned_byte_3_3_2 = enif_make_atom(env, "unsigned_byte_3_3_2");
    beam_atom_stencil_index = enif_make_atom(env, "stencil_index");
    beam_atom_blue_integer = enif_make_atom(env, "blue_integer");
    beam_atom_color_attachment22 = enif_make_atom(env, "color_attachment22");
    beam_atom_green_integer = enif_make_atom(env, "green_integer");
    beam_atom_blend_dst_rgb = enif_make_atom(env, "blend_dst_rgb");
    beam_atom_triangles = enif_make_atom(env, "triangles");
    beam_atom_attached_shaders = enif_make_atom(env, "attached_shaders");
    beam_atom_fragment_shader = enif_make_atom(env, "fragment_shader");
    beam_atom_ccw = enif_make_atom(env, "ccw");
    beam_atom_rgb32i = enif_make_atom(env, "rgb32i");
    beam_atom_shading_language_version = enif_make_atom(env, "shading_language_version");
    beam_atom_query_by_region_wait = enif_make_atom(env, "query_by_region_wait");
    beam_atom_draw_framebuffer_binding = enif_make_atom(env, "draw_framebuffer_binding");
    beam_atom_pack_alignment = enif_make_atom(env, "pack_alignment");
    beam_atom_max_combined_uniform_blocks = enif_make_atom(env, "max_combined_uniform_blocks");
    beam_atom_color_attachment6 = enif_make_atom(env, "color_attachment6");
    beam_atom_point_size_granularity = enif_make_atom(env, "point_size_granularity");
    beam_atom_primitives_submitted = enif_make_atom(env, "primitives_submitted");
    beam_atom_texture_base_level = enif_make_atom(env, "texture_base_level");
    beam_atom_texture_cube_map_positive_x = enif_make_atom(env, "texture_cube_map_positive_x");
    beam_atom_gequal = enif_make_atom(env, "gequal");
    beam_atom_zero = enif_make_atom(env, "zero");
    beam_atom_stream_read = enif_make_atom(env, "stream_read");
    beam_atom_max_uniform_block_size = enif_make_atom(env, "max_uniform_block_size");
    beam_atom_depth_component32f = enif_make_atom(env, "depth_component32f");
    beam_atom_color_attachment11 = enif_make_atom(env, "color_attachment11");
    beam_atom_max_tess_control_atomic_counters = enif_make_atom(env, "max_tess_control_atomic_counters");
    beam_atom_samples = enif_make_atom(env, "samples");
    beam_atom_byte = enif_make_atom(env, "byte");
    beam_atom_lequal = enif_make_atom(env, "lequal");
    beam_atom_right = enif_make_atom(env, "right");
    beam_atom_rgba16ui = enif_make_atom(env, "rgba16ui");
    beam_atom_texture_1d = enif_make_atom(env, "texture_1d");
    beam_atom_compressed_rgba_bptc_unorm = enif_make_atom(env, "compressed_rgba_bptc_unorm");
    beam_atom_primitives_generated = enif_make_atom(env, "primitives_generated");
    beam_atom_rgb10_a2ui = enif_make_atom(env, "rgb10_a2ui");
    beam_atom_compressed_rgb = enif_make_atom(env, "compressed_rgb");
    beam_atom_texture_1d_array = enif_make_atom(env, "texture_1d_array");
    beam_atom_src1_color = enif_make_atom(env, "src1_color");
    beam_atom_texture31 = enif_make_atom(env, "texture31");
    beam_atom_max_fragment_shader_storage_blocks = enif_make_atom(env, "max_fragment_shader_storage_blocks");
    beam_atom_max_cube_map_texture_size = enif_make_atom(env, "max_cube_map_texture_size");
    beam_atom_num_shader_binary_formats = enif_make_atom(env, "num_shader_binary_formats");
    beam_atom_smooth_line_width_granularity = enif_make_atom(env, "smooth_line_width_granularity");
    beam_atom_rgb16i = enif_make_atom(env, "rgb16i");
    beam_atom_rgb12 = enif_make_atom(env, "rgb12");
    beam_atom_line_width_range = enif_make_atom(env, "line_width_range");
    beam_atom_implementation_color_read_type = enif_make_atom(env, "implementation_color_read_type");
    beam_atom_max_texture_lod_bias = enif_make_atom(env, "max_texture_lod_bias");
    beam_atom_max_combined_texture_image_units = enif_make_atom(env, "max_combined_texture_image_units");
    beam_atom_layer_provoking_vertex = enif_make_atom(env, "layer_provoking_vertex");
    beam_atom_rgba32f = enif_make_atom(env, "rgba32f");
    beam_atom_stereo = enif_make_atom(env, "stereo");
    beam_atom_r16f = enif_make_atom(env, "r16f");
    beam_atom_static_draw = enif_make_atom(env, "static_draw");
    beam_atom_max_framebuffer_samples = enif_make_atom(env, "max_framebuffer_samples");
    beam_atom_rgba16i = enif_make_atom(env, "rgba16i");
    beam_atom_texture_cube_map_negative_y = enif_make_atom(env, "texture_cube_map_negative_y");
    beam_atom_shader_storage_buffer_binding = enif_make_atom(env, "shader_storage_buffer_binding");
    beam_atom_read_framebuffer = enif_make_atom(env, "read_framebuffer");
    beam_atom_or_ = enif_make_atom(env, "or_");
    beam_atom_compressed_rgb_bptc_unsigned_float = enif_make_atom(env, "compressed_rgb_bptc_unsigned_float");
    beam_atom_copy = enif_make_atom(env, "copy");
    beam_atom_rg = enif_make_atom(env, "rg");
    beam_atom_quads = enif_make_atom(env, "quads");
    beam_atom_max_compute_shader_storage_blocks = enif_make_atom(env, "max_compute_shader_storage_blocks");
    beam_atom_clip_distance0 = enif_make_atom(env, "clip_distance0");
    beam_atom_compressed_r11_eac = enif_make_atom(env, "compressed_r11_eac");
    beam_atom_any_samples_passed = enif_make_atom(env, "any_samples_passed");
    beam_atom_max_compute_texture_image_units = enif_make_atom(env, "max_compute_texture_image_units");
    beam_atom_scissor_test = enif_make_atom(env, "scissor_test");
    beam_atom_validate_status = enif_make_atom(env, "validate_status");
    beam_atom_color_attachment1 = enif_make_atom(env, "color_attachment1");
    beam_atom_texture29 = enif_make_atom(env, "texture29");
    beam_atom_texture24 = enif_make_atom(env, "texture24");
    beam_atom_max_rectangle_texture_size = enif_make_atom(env, "max_rectangle_texture_size");
    beam_atom_line = enif_make_atom(env, "line");
    beam_atom_dynamic_read = enif_make_atom(env, "dynamic_read");
    beam_atom_color_attachment18 = enif_make_atom(env, "color_attachment18");
    beam_atom_depth_stencil_texture_mode = enif_make_atom(env, "depth_stencil_texture_mode");
    beam_atom_red = enif_make_atom(env, "red");
    beam_atom_color_attachment2 = enif_make_atom(env, "color_attachment2");
    beam_atom_back = enif_make_atom(env, "back");
    beam_atom_texture_max_level = enif_make_atom(env, "texture_max_level");
    beam_atom_one_minus_dst_alpha = enif_make_atom(env, "one_minus_dst_alpha");
    beam_atom_proxy_texture_1d_array = enif_make_atom(env, "proxy_texture_1d_array");
    beam_atom_compressed_rgba8_etc2_eac = enif_make_atom(env, "compressed_rgba8_etc2_eac");
    beam_atom_sample_coverage = enif_make_atom(env, "sample_coverage");
    beam_atom_red_integer = enif_make_atom(env, "red_integer");
    beam_atom_current_program = enif_make_atom(env, "current_program");
    beam_atom_float_32_unsigned_int_24_8_rev = enif_make_atom(env, "float_32_unsigned_int_24_8_rev");
    beam_atom_texture26 = enif_make_atom(env, "texture26");
    beam_atom_rgb32f = enif_make_atom(env, "rgb32f");
    beam_atom_pack_skip_images = enif_make_atom(env, "pack_skip_images");
    beam_atom_texture_wrap_t = enif_make_atom(env, "texture_wrap_t");
    beam_atom_r8 = enif_make_atom(env, "r8");
    beam_atom_samples_passed = enif_make_atom(env, "samples_passed");
    beam_atom_sample_alpha_to_coverage = enif_make_atom(env, "sample_alpha_to_coverage");
    beam_atom_vertex_attrib_array_type = enif_make_atom(env, "vertex_attrib_array_type");
    beam_atom_compressed_texture_formats = enif_make_atom(env, "compressed_texture_formats");
    beam_atom_compressed_srgb8_etc2 = enif_make_atom(env, "compressed_srgb8_etc2");
    beam_atom_func_reverse_subtract = enif_make_atom(env, "func_reverse_subtract");
    beam_atom_texture16 = enif_make_atom(env, "texture16");
    beam_atom_max_vertex_shader_storage_blocks = enif_make_atom(env, "max_vertex_shader_storage_blocks");
    beam_atom_rgb32ui = enif_make_atom(env, "rgb32ui");
    beam_atom_max_vertex_texture_image_units = enif_make_atom(env, "max_vertex_texture_image_units");
    beam_atom_bgra_integer = enif_make_atom(env, "bgra_integer");
    beam_atom_tess_evaluation_shader = enif_make_atom(env, "tess_evaluation_shader");
    beam_atom_max_compute_atomic_counter_buffers = enif_make_atom(env, "max_compute_atomic_counter_buffers");
    beam_atom_float = enif_make_atom(env, "float");
    beam_atom_framebuffer_srgb = enif_make_atom(env, "framebuffer_srgb");
    beam_atom_depth_range = enif_make_atom(env, "depth_range");
    beam_atom_depth_clear_value = enif_make_atom(env, "depth_clear_value");
    beam_atom_equal = enif_make_atom(env, "equal");
    beam_atom_parameter_buffer = enif_make_atom(env, "parameter_buffer");
    beam_atom_texture22 = enif_make_atom(env, "texture22");
    beam_atom_clip_distance6 = enif_make_atom(env, "clip_distance6");
    beam_atom_texture8 = enif_make_atom(env, "texture8");
    beam_atom_texture10 = enif_make_atom(env, "texture10");
    beam_atom_true = enif_make_atom(env, "true");
    beam_atom_rgba_integer = enif_make_atom(env, "rgba_integer");
    beam_atom_texture_compare_func = enif_make_atom(env, "texture_compare_func");
    beam_atom_info_log_length = enif_make_atom(env, "info_log_length");
    beam_atom_invalid_framebuffer_operation = enif_make_atom(env, "invalid_framebuffer_operation");
    beam_atom_max_tess_evaluation_atomic_counters = enif_make_atom(env, "max_tess_evaluation_atomic_counters");
    beam_atom_query_buffer = enif_make_atom(env, "query_buffer");
    beam_atom_rgba8i = enif_make_atom(env, "rgba8i");
    beam_atom_static_read = enif_make_atom(env, "static_read");
    beam_atom_query_by_region_no_wait = enif_make_atom(env, "query_by_region_no_wait");
    beam_atom_front_right = enif_make_atom(env, "front_right");
    beam_atom_rg32i = enif_make_atom(env, "rg32i");
    beam_atom_unsigned_short_4_4_4_4 = enif_make_atom(env, "unsigned_short_4_4_4_4");
    beam_atom_blend_dst_alpha = enif_make_atom(env, "blend_dst_alpha");
    beam_atom_color_attachment14 = enif_make_atom(env, "color_attachment14");
    beam_atom_texture27 = enif_make_atom(env, "texture27");
    beam_atom_rgb16_snorm = enif_make_atom(env, "rgb16_snorm");
    beam_atom_max_combined_atomic_counters = enif_make_atom(env, "max_combined_atomic_counters");
    beam_atom_stencil_index4 = enif_make_atom(env, "stencil_index4");
    beam_atom_min_map_buffer_alignment = enif_make_atom(env, "min_map_buffer_alignment");
    beam_atom_pack_image_height = enif_make_atom(env, "pack_image_height");
    beam_atom_texture28 = enif_make_atom(env, "texture28");
    beam_atom_query_wait = enif_make_atom(env, "query_wait");
    beam_atom_time_elapsed = enif_make_atom(env, "time_elapsed");
    beam_atom_max_vertex_attrib_bindings = enif_make_atom(env, "max_vertex_attrib_bindings");
    beam_atom_max_varying_vectors = enif_make_atom(env, "max_varying_vectors");
    beam_atom_stencil_writemask = enif_make_atom(env, "stencil_writemask");
    beam_atom_rgb16ui = enif_make_atom(env, "rgb16ui");
    beam_atom_sample_mask = enif_make_atom(env, "sample_mask");
    beam_atom_compressed_rg_rgtc2 = enif_make_atom(env, "compressed_rg_rgtc2");
    beam_atom_rgb10_a2 = enif_make_atom(env, "rgb10_a2");
    beam_atom_texture14 = enif_make_atom(env, "texture14");
    beam_atom_keep = enif_make_atom(env, "keep");
    beam_atom_max_framebuffer_height = enif_make_atom(env, "max_framebuffer_height");
    beam_atom_constant_alpha = enif_make_atom(env, "constant_alpha");
    beam_atom_texture_cube_map_array = enif_make_atom(env, "texture_cube_map_array");
    beam_atom_shader_storage_buffer_size = enif_make_atom(env, "shader_storage_buffer_size");
    beam_atom_fragment_shader_derivative_hint = enif_make_atom(env, "fragment_shader_derivative_hint");
    beam_atom_texture_border_color = enif_make_atom(env, "texture_border_color");
    beam_atom_active_uniform_max_length = enif_make_atom(env, "active_uniform_max_length");
    beam_atom_clamp_read_color = enif_make_atom(env, "clamp_read_color");
    beam_atom_equiv = enif_make_atom(env, "equiv");
    beam_atom_uniform_buffer = enif_make_atom(env, "uniform_buffer");
    beam_atom_max_integer_samples = enif_make_atom(env, "max_integer_samples");
    beam_atom_r3_g3_b2 = enif_make_atom(env, "r3_g3_b2");
    beam_atom_geometry_input_type = enif_make_atom(env, "geometry_input_type");
    beam_atom_int_2_10_10_10_rev = enif_make_atom(env, "int_2_10_10_10_rev");
    beam_atom_texture_swizzle_b = enif_make_atom(env, "texture_swizzle_b");
    beam_atom_geometry_shader = enif_make_atom(env, "geometry_shader");
    beam_atom_blend_src_alpha = enif_make_atom(env, "blend_src_alpha");
    beam_atom_dynamic_draw = enif_make_atom(env, "dynamic_draw");
    beam_atom_rgb_integer = enif_make_atom(env, "rgb_integer");
    beam_atom_max_combined_compute_uniform_components = enif_make_atom(env, "max_combined_compute_uniform_components");
    beam_atom_texture5 = enif_make_atom(env, "texture5");
    beam_atom_vertex_attrib_binding = enif_make_atom(env, "vertex_attrib_binding");
    beam_atom_current_vertex_attrib = enif_make_atom(env, "current_vertex_attrib");
    beam_atom_line_width = enif_make_atom(env, "line_width");
    beam_atom_texture_binding_1d = enif_make_atom(env, "texture_binding_1d");
    beam_atom_texture_binding_2d_multisample = enif_make_atom(env, "texture_binding_2d_multisample");
    beam_atom_vertex_array = enif_make_atom(env, "vertex_array");
    beam_atom_stencil_back_ref = enif_make_atom(env, "stencil_back_ref");
    beam_atom_rgb8ui = enif_make_atom(env, "rgb8ui");
    beam_atom_max_texture_buffer_size = enif_make_atom(env, "max_texture_buffer_size");
    beam_atom_texture_blue_size = enif_make_atom(env, "texture_blue_size");
    beam_atom_incr = enif_make_atom(env, "incr");
    beam_atom_color_attachment8 = enif_make_atom(env, "color_attachment8");
    beam_atom_dst_alpha = enif_make_atom(env, "dst_alpha");
    beam_atom_notequal = enif_make_atom(env, "notequal");
    beam_atom_r32i = enif_make_atom(env, "r32i");
    beam_atom_rgba8ui = enif_make_atom(env, "rgba8ui");
    beam_atom_texture25 = enif_make_atom(env, "texture25");
    beam_atom_active_atomic_counter_buffers = enif_make_atom(env, "active_atomic_counter_buffers");
    beam_atom_stencil_ref = enif_make_atom(env, "stencil_ref");
    beam_atom_one_minus_src_color = enif_make_atom(env, "one_minus_src_color");
    beam_atom_max_framebuffer_width = enif_make_atom(env, "max_framebuffer_width");
    beam_atom_r8ui = enif_make_atom(env, "r8ui");
    beam_atom_srgb = enif_make_atom(env, "srgb");
    beam_atom_max_vertex_atomic_counters = enif_make_atom(env, "max_vertex_atomic_counters");
    beam_atom_unpack_alignment = enif_make_atom(env, "unpack_alignment");
    beam_atom_stencil_fail = enif_make_atom(env, "stencil_fail");
    beam_atom_max_element_index = enif_make_atom(env, "max_element_index");
    beam_atom_texture20 = enif_make_atom(env, "texture20");
    beam_atom_nearest = enif_make_atom(env, "nearest");
    beam_atom_max_combined_vertex_uniform_components = enif_make_atom(env, "max_combined_vertex_uniform_components");
    beam_atom_sampler_binding = enif_make_atom(env, "sampler_binding");
    beam_atom_renderer = enif_make_atom(env, "renderer");
    beam_atom_max_color_attachments = enif_make_atom(env, "max_color_attachments");
    beam_atom_pixel_pack_buffer = enif_make_atom(env, "pixel_pack_buffer");
    beam_atom_texture_max_anisotropy = enif_make_atom(env, "texture_max_anisotropy");
    beam_atom_max_fragment_uniform_vectors = enif_make_atom(env, "max_fragment_uniform_vectors");
    beam_atom_texture_2d_array = enif_make_atom(env, "texture_2d_array");
    beam_atom_proxy_texture_cube_map = enif_make_atom(env, "proxy_texture_cube_map");
    beam_atom_max_geometry_atomic_counters = enif_make_atom(env, "max_geometry_atomic_counters");
    beam_atom_func_add = enif_make_atom(env, "func_add");
    beam_atom_depth_test = enif_make_atom(env, "depth_test");
    beam_atom_point_fade_threshold_size = enif_make_atom(env, "point_fade_threshold_size");
    beam_atom_renderbuffer = enif_make_atom(env, "renderbuffer");
    beam_atom_copy_inverted = enif_make_atom(env, "copy_inverted");
    beam_atom_or_reverse = enif_make_atom(env, "or_reverse");
    beam_atom_color_attachment3 = enif_make_atom(env, "color_attachment3");
    beam_atom_rgb10 = enif_make_atom(env, "rgb10");
    beam_atom_max_combined_geometry_uniform_components = enif_make_atom(env, "max_combined_geometry_uniform_components");
    beam_atom_texture6 = enif_make_atom(env, "texture6");
    beam_atom_texture_cube_map_seamless = enif_make_atom(env, "texture_cube_map_seamless");
    beam_atom_srgb8 = enif_make_atom(env, "srgb8");
    beam_atom_vertex_attrib_array_size = enif_make_atom(env, "vertex_attrib_array_size");
    beam_atom_shader_storage_buffer = enif_make_atom(env, "shader_storage_buffer");
    beam_atom_compile_status = enif_make_atom(env, "compile_status");
    beam_atom_link_status = enif_make_atom(env, "link_status");
    beam_atom_transform_feedback_varyings = enif_make_atom(env, "transform_feedback_varyings");
    beam_atom_draw_buffer = enif_make_atom(env, "draw_buffer");
    beam_atom_max_tess_evaluation_uniform_blocks = enif_make_atom(env, "max_tess_evaluation_uniform_blocks");
    beam_atom_texture_cube_map_negative_x = enif_make_atom(env, "texture_cube_map_negative_x");
    beam_atom_color_attachment25 = enif_make_atom(env, "color_attachment25");
    beam_atom_texture12 = enif_make_atom(env, "texture12");
    beam_atom_nand = enif_make_atom(env, "nand");
    beam_atom_compressed_srgb8_punchthrough_alpha1_etc2 = enif_make_atom(env, "compressed_srgb8_punchthrough_alpha1_etc2");
    beam_atom_rg_integer = enif_make_atom(env, "rg_integer");
    beam_atom_blend = enif_make_atom(env, "blend");
    beam_atom_max_shader_storage_buffer_bindings = enif_make_atom(env, "max_shader_storage_buffer_bindings");
    beam_atom_color_attachment12 = enif_make_atom(env, "color_attachment12");
    beam_atom_max_3d_texture_size = enif_make_atom(env, "max_3d_texture_size");
    beam_atom_color_attachment7 = enif_make_atom(env, "color_attachment7");
    beam_atom_unsigned_int_8_8_8_8_rev = enif_make_atom(env, "unsigned_int_8_8_8_8_rev");
    beam_atom_max_vertex_attrib_relative_offset = enif_make_atom(env, "max_vertex_attrib_relative_offset");
    beam_atom_texture21 = enif_make_atom(env, "texture21");
    beam_atom_stencil_func = enif_make_atom(env, "stencil_func");
    beam_atom_decr = enif_make_atom(env, "decr");
    beam_atom_multisample = enif_make_atom(env, "multisample");
    beam_atom_clip_distance4 = enif_make_atom(env, "clip_distance4");
    beam_atom_srgb8_alpha8 = enif_make_atom(env, "srgb8_alpha8");
    beam_atom_transform_feedback_buffer = enif_make_atom(env, "transform_feedback_buffer");
    beam_atom_max_uniform_locations = enif_make_atom(env, "max_uniform_locations");
    beam_atom_max_viewport_dims = enif_make_atom(env, "max_viewport_dims");
    beam_atom_line_smooth = enif_make_atom(env, "line_smooth");
    beam_atom_color_attachment10 = enif_make_atom(env, "color_attachment10");
    beam_atom_sample_buffers = enif_make_atom(env, "sample_buffers");
    beam_atom_rg8ui = enif_make_atom(env, "rg8ui");
    beam_atom_r16ui = enif_make_atom(env, "r16ui");
    beam_atom_max_viewports = enif_make_atom(env, "max_viewports");
    beam_atom_invalid_value = enif_make_atom(env, "invalid_value");
    beam_atom_max_elements_indices = enif_make_atom(env, "max_elements_indices");
    beam_atom_shader_binary_formats = enif_make_atom(env, "shader_binary_formats");
    beam_atom_stencil_back_fail = enif_make_atom(env, "stencil_back_fail");
    beam_atom_front = enif_make_atom(env, "front");
    beam_atom_max_texture_image_units = enif_make_atom(env, "max_texture_image_units");
    beam_atom_double = enif_make_atom(env, "double");
    beam_atom_r8i = enif_make_atom(env, "r8i");
    beam_atom_cw = enif_make_atom(env, "cw");
    beam_atom_rgba8_snorm = enif_make_atom(env, "rgba8_snorm");
    beam_atom_color_attachment26 = enif_make_atom(env, "color_attachment26");
    beam_atom_bgra = enif_make_atom(env, "bgra");
    beam_atom_srgb_alpha = enif_make_atom(env, "srgb_alpha");
    beam_atom_one_minus_constant_alpha = enif_make_atom(env, "one_minus_constant_alpha");
    beam_atom_vertex_attrib_array_normalized = enif_make_atom(env, "vertex_attrib_array_normalized");
    beam_atom_no_error = enif_make_atom(env, "no_error");
    beam_atom_max_color_texture_samples = enif_make_atom(env, "max_color_texture_samples");
    beam_atom_geometry_vertices_out = enif_make_atom(env, "geometry_vertices_out");
    beam_atom_program_pipeline_binding = enif_make_atom(env, "program_pipeline_binding");
    beam_atom_texture17 = enif_make_atom(env, "texture17");
    beam_atom_color_attachment16 = enif_make_atom(env, "color_attachment16");
    beam_atom_fastest = enif_make_atom(env, "fastest");
    beam_atom_and_inverted = enif_make_atom(env, "and_inverted");
    beam_atom_max_compute_uniform_blocks = enif_make_atom(env, "max_compute_uniform_blocks");
    beam_atom_active_texture = enif_make_atom(env, "active_texture");
    beam_atom_num_compressed_texture_formats = enif_make_atom(env, "num_compressed_texture_formats");
    beam_atom_query_by_region_wait_inverted = enif_make_atom(env, "query_by_region_wait_inverted");
    beam_atom_max_compute_work_group_count = enif_make_atom(env, "max_compute_work_group_count");
    beam_atom_r16_snorm = enif_make_atom(env, "r16_snorm");
    beam_atom_max_vertex_uniform_components = enif_make_atom(env, "max_vertex_uniform_components");
    beam_atom_max_combined_shader_storage_blocks = enif_make_atom(env, "max_combined_shader_storage_blocks");
    beam_atom_compute_shader = enif_make_atom(env, "compute_shader");
    beam_atom_texture_width = enif_make_atom(env, "texture_width");
    beam_atom_texture_binding_rectangle = enif_make_atom(env, "texture_binding_rectangle");
    beam_atom_provoking_vertex = enif_make_atom(env, "provoking_vertex");
    beam_atom_proxy_texture_2d_multisample = enif_make_atom(env, "proxy_texture_2d_multisample");
    beam_atom_one_minus_src1_color = enif_make_atom(env, "one_minus_src1_color");
    beam_atom_depth_writemask = enif_make_atom(env, "depth_writemask");
    beam_atom_cull_face_mode = enif_make_atom(env, "cull_face_mode");
    beam_atom_stencil_back_pass_depth_fail = enif_make_atom(env, "stencil_back_pass_depth_fail");
    beam_atom_uniform_buffer_size = enif_make_atom(env, "uniform_buffer_size");
    beam_atom_rgba4 = enif_make_atom(env, "rgba4");
    beam_atom_max_geometry_uniform_blocks = enif_make_atom(env, "max_geometry_uniform_blocks");
    beam_atom_texture18 = enif_make_atom(env, "texture18");
    beam_atom_one_minus_src_alpha = enif_make_atom(env, "one_minus_src_alpha");
    beam_atom_constant_color = enif_make_atom(env, "constant_color");
    beam_atom_min_program_texel_offset = enif_make_atom(env, "min_program_texel_offset");
    beam_atom_texture_cube_map_positive_z = enif_make_atom(env, "texture_cube_map_positive_z");
    beam_atom_src_alpha_saturate = enif_make_atom(env, "src_alpha_saturate");
    beam_atom_compressed_srgb_alpha_bptc_unorm = enif_make_atom(env, "compressed_srgb_alpha_bptc_unorm");
    beam_atom_triangle_strip_adjacency = enif_make_atom(env, "triangle_strip_adjacency");
    beam_atom_texture_compression_hint = enif_make_atom(env, "texture_compression_hint");
    beam_atom_texture_red_size = enif_make_atom(env, "texture_red_size");
    beam_atom_unsigned_short_5_6_5_rev = enif_make_atom(env, "unsigned_short_5_6_5_rev");
    beam_atom_color_attachment19 = enif_make_atom(env, "color_attachment19");
    beam_atom_texture_cube_map_positive_y = enif_make_atom(env, "texture_cube_map_positive_y");
    beam_atom_max_elements_vertices = enif_make_atom(env, "max_elements_vertices");
    beam_atom_rgb5_a1 = enif_make_atom(env, "rgb5_a1");
    beam_atom_point = enif_make_atom(env, "point");
    beam_atom_invalid_enum = enif_make_atom(env, "invalid_enum");
    beam_atom_texture_swizzle_a = enif_make_atom(env, "texture_swizzle_a");
    beam_atom_dispatch_indirect_buffer_binding = enif_make_atom(env, "dispatch_indirect_buffer_binding");
    beam_atom_stream_copy = enif_make_atom(env, "stream_copy");
    beam_atom_texture_green_size = enif_make_atom(env, "texture_green_size");
    beam_atom_polygon_offset_factor = enif_make_atom(env, "polygon_offset_factor");
    beam_atom_depth_component32 = enif_make_atom(env, "depth_component32");
    beam_atom_tess_control_shader = enif_make_atom(env, "tess_control_shader");
    beam_atom_stencil_index16 = enif_make_atom(env, "stencil_index16");
    beam_atom_program_binary_length = enif_make_atom(env, "program_binary_length");
    beam_atom_active_uniform_blocks = enif_make_atom(env, "active_uniform_blocks");
    beam_atom_rgb8_snorm = enif_make_atom(env, "rgb8_snorm");
    beam_atom_texture_binding_3d = enif_make_atom(env, "texture_binding_3d");
    beam_atom_color_attachment13 = enif_make_atom(env, "color_attachment13");
    beam_atom_texture_2d = enif_make_atom(env, "texture_2d");
    beam_atom_texture_wrap_s = enif_make_atom(env, "texture_wrap_s");
    beam_atom_vertex_attrib_array_long = enif_make_atom(env, "vertex_attrib_array_long");
    beam_atom_primitive_restart_index = enif_make_atom(env, "primitive_restart_index");
    beam_atom_blue = enif_make_atom(env, "blue");
    beam_atom_unsigned_short_4_4_4_4_rev = enif_make_atom(env, "unsigned_short_4_4_4_4_rev");
    beam_atom_program_binary_retrievable_hint = enif_make_atom(env, "program_binary_retrievable_hint");
    beam_atom_point_size = enif_make_atom(env, "point_size");
    beam_atom_color_attachment21 = enif_make_atom(env, "color_attachment21");
    beam_atom_color_attachment27 = enif_make_atom(env, "color_attachment27");
    beam_atom_dst_color = enif_make_atom(env, "dst_color");
    beam_atom_r32f = enif_make_atom(env, "r32f");
    beam_atom_max_fragment_uniform_components = enif_make_atom(env, "max_fragment_uniform_components");
    beam_atom_color_attachment15 = enif_make_atom(env, "color_attachment15");
    beam_atom_max_compute_work_group_invocations = enif_make_atom(env, "max_compute_work_group_invocations");
    beam_atom_vertex_shader_invocations = enif_make_atom(env, "vertex_shader_invocations");
    beam_atom_texture_min_lod = enif_make_atom(env, "texture_min_lod");
    beam_atom_fill = enif_make_atom(env, "fill");
    beam_atom_polygon_offset_point = enif_make_atom(env, "polygon_offset_point");
    beam_atom_stencil_index8 = enif_make_atom(env, "stencil_index8");
    beam_atom_max_program_texel_offset = enif_make_atom(env, "max_program_texel_offset");
    beam_atom_greater = enif_make_atom(env, "greater");
    beam_atom_rasterizer_discard = enif_make_atom(env, "rasterizer_discard");
    beam_atom_pack_lsb_first = enif_make_atom(env, "pack_lsb_first");
    beam_atom_vertex_attrib_array_divisor = enif_make_atom(env, "vertex_attrib_array_divisor");
    beam_atom_debug_output_synchronous = enif_make_atom(env, "debug_output_synchronous");
    beam_atom_half_float = enif_make_atom(env, "half_float");
    beam_atom_one_minus_constant_color = enif_make_atom(env, "one_minus_constant_color");
    beam_atom_blend_equation_rgb = enif_make_atom(env, "blend_equation_rgb");
    beam_atom_unsigned_short_5_5_5_1 = enif_make_atom(env, "unsigned_short_5_5_5_1");
    beam_atom_active_attributes = enif_make_atom(env, "active_attributes");
    beam_atom_smooth_line_width_range = enif_make_atom(env, "smooth_line_width_range");
    beam_atom_color_attachment31 = enif_make_atom(env, "color_attachment31");
    beam_atom_stencil_pass_depth_pass = enif_make_atom(env, "stencil_pass_depth_pass");
    beam_atom_implementation_color_read_format = enif_make_atom(env, "implementation_color_read_format");
    beam_atom_rg16f = enif_make_atom(env, "rg16f");
    beam_atom_shader_type = enif_make_atom(env, "shader_type");
    beam_atom_transform_feedback_buffer_mode = enif_make_atom(env, "transform_feedback_buffer_mode");
    beam_atom_texture9 = enif_make_atom(env, "texture9");
    beam_atom_unsigned_int_2_10_10_10_rev = enif_make_atom(env, "unsigned_int_2_10_10_10_rev");
    beam_atom_transform_feedback_buffer_size = enif_make_atom(env, "transform_feedback_buffer_size");
    beam_atom_clip_distance3 = enif_make_atom(env, "clip_distance3");
    beam_atom_max_geometry_uniform_components = enif_make_atom(env, "max_geometry_uniform_components");
    beam_atom_nor = enif_make_atom(env, "nor");
    beam_atom_rg16ui = enif_make_atom(env, "rg16ui");
    beam_atom_sample_coverage_invert = enif_make_atom(env, "sample_coverage_invert");
    beam_atom_depth_component = enif_make_atom(env, "depth_component");
    beam_atom_copy_write_buffer = enif_make_atom(env, "copy_write_buffer");
    beam_atom_lines_adjacency = enif_make_atom(env, "lines_adjacency");
    beam_atom_max_compute_atomic_counters = enif_make_atom(env, "max_compute_atomic_counters");
    beam_atom_blend_src_rgb = enif_make_atom(env, "blend_src_rgb");
    beam_atom_max_debug_group_stack_depth = enif_make_atom(env, "max_debug_group_stack_depth");
    beam_atom_texture_swizzle_r = enif_make_atom(env, "texture_swizzle_r");
    beam_atom_stencil_clear_value = enif_make_atom(env, "stencil_clear_value");
    beam_atom_front_left = enif_make_atom(env, "front_left");
    beam_atom_clip_distance5 = enif_make_atom(env, "clip_distance5");
    beam_atom_rgb5 = enif_make_atom(env, "rgb5");
    beam_atom_clear = enif_make_atom(env, "clear");
    beam_atom_stencil_value_mask = enif_make_atom(env, "stencil_value_mask");
    beam_atom_unsigned_byte = enif_make_atom(env, "unsigned_byte");
    beam_atom_rg16 = enif_make_atom(env, "rg16");
    beam_atom_compressed_signed_rg_rgtc2 = enif_make_atom(env, "compressed_signed_rg_rgtc2");
    beam_atom_texture_3d = enif_make_atom(env, "texture_3d");
    beam_atom_texture_swizzle_g = enif_make_atom(env, "texture_swizzle_g");
    beam_atom_shader_source_length = enif_make_atom(env, "shader_source_length");
    beam_atom_max_combined_fragment_uniform_components = enif_make_atom(env, "max_combined_fragment_uniform_components");
    beam_atom_element_array_buffer = enif_make_atom(env, "element_array_buffer");
    beam_atom_shader_storage_buffer_start = enif_make_atom(env, "shader_storage_buffer_start");
    beam_atom_unpack_skip_pixels = enif_make_atom(env, "unpack_skip_pixels");
    beam_atom_points = enif_make_atom(env, "points");
    beam_atom_vertex_attrib_relative_offset = enif_make_atom(env, "vertex_attrib_relative_offset");
    beam_atom_debug_output = enif_make_atom(env, "debug_output");
    beam_atom_texture_mag_filter = enif_make_atom(env, "texture_mag_filter");
    beam_atom_primitive_restart_fixed_index = enif_make_atom(env, "primitive_restart_fixed_index");
    beam_atom_fixed_only = enif_make_atom(env, "fixed_only");
    beam_atom_texture23 = enif_make_atom(env, "texture23");
    beam_atom_max_vertex_uniform_vectors = enif_make_atom(env, "max_vertex_uniform_vectors");
    beam_atom_color_logic_op = enif_make_atom(env, "color_logic_op");
    beam_atom_aliased_line_width_range = enif_make_atom(env, "aliased_line_width_range");
    beam_atom_noop = enif_make_atom(env, "noop");
    beam_atom_depth32f_stencil8 = enif_make_atom(env, "depth32f_stencil8");
    beam_atom_texture7 = enif_make_atom(env, "texture7");
    beam_atom_point_size_range = enif_make_atom(env, "point_size_range");
    beam_atom_texture_binding_buffer = enif_make_atom(env, "texture_binding_buffer");
    beam_atom_max_geometry_output_components = enif_make_atom(env, "max_geometry_output_components");
    beam_atom_viewport_index_provoking_vertex = enif_make_atom(env, "viewport_index_provoking_vertex");
    beam_atom_rgba16f = enif_make_atom(env, "rgba16f");
    beam_atom_rg8 = enif_make_atom(env, "rg8");
    beam_atom_compressed_rg = enif_make_atom(env, "compressed_rg");
    beam_atom_sample_alpha_to_one = enif_make_atom(env, "sample_alpha_to_one");
    beam_atom_rgba16 = enif_make_atom(env, "rgba16");
    beam_atom_unpack_skip_images = enif_make_atom(env, "unpack_skip_images");
    beam_atom_extensions = enif_make_atom(env, "extensions");
    beam_atom_rgb8i = enif_make_atom(env, "rgb8i");
    beam_atom_vertex_binding_stride = enif_make_atom(env, "vertex_binding_stride");
    beam_atom_texture_binding_1d_array = enif_make_atom(env, "texture_binding_1d_array");
    beam_atom_depth_stencil = enif_make_atom(env, "depth_stencil");
    beam_atom_timestamp = enif_make_atom(env, "timestamp");
    beam_atom_texture_binding_cube_map = enif_make_atom(env, "texture_binding_cube_map");
    beam_atom_color_attachment20 = enif_make_atom(env, "color_attachment20");
    beam_atom_compressed_red_rgtc1 = enif_make_atom(env, "compressed_red_rgtc1");
    beam_atom_max_varying_components = enif_make_atom(env, "max_varying_components");
    beam_atom_texture_2d_multisample_array = enif_make_atom(env, "texture_2d_multisample_array");
    beam_atom_depth_stencil_attachment = enif_make_atom(env, "depth_stencil_attachment");
    beam_atom_texture_height = enif_make_atom(env, "texture_height");
    beam_atom_src_alpha = enif_make_atom(env, "src_alpha");
    beam_atom_transform_feedback_buffer_start = enif_make_atom(env, "transform_feedback_buffer_start");
    beam_atom_texture_max_lod = enif_make_atom(env, "texture_max_lod");
    beam_atom_green = enif_make_atom(env, "green");
    beam_atom_compressed_signed_r11_eac = enif_make_atom(env, "compressed_signed_r11_eac");
    beam_atom_texture30 = enif_make_atom(env, "texture30");
    beam_atom_rgb4 = enif_make_atom(env, "rgb4");
    beam_atom_unsigned_short_1_5_5_5_rev = enif_make_atom(env, "unsigned_short_1_5_5_5_rev");
    beam_atom_unsigned_int_10_10_10_2 = enif_make_atom(env, "unsigned_int_10_10_10_2");
    beam_atom_rg8_snorm = enif_make_atom(env, "rg8_snorm");
    beam_atom_rgba32i = enif_make_atom(env, "rgba32i");
    beam_atom_max_depth_texture_samples = enif_make_atom(env, "max_depth_texture_samples");
    beam_atom_color_attachment29 = enif_make_atom(env, "color_attachment29");
    beam_atom_texture2 = enif_make_atom(env, "texture2");
    beam_atom_rgb9_e5 = enif_make_atom(env, "rgb9_e5");
    beam_atom_color_buffer_bit = enif_make_atom(env, "color_buffer_bit");
    beam_atom_pixel_unpack_buffer = enif_make_atom(env, "pixel_unpack_buffer");
    beam_atom_texture_lod_bias = enif_make_atom(env, "texture_lod_bias");
    beam_atom_rg8i = enif_make_atom(env, "rg8i");
    beam_atom_max_framebuffer_layers = enif_make_atom(env, "max_framebuffer_layers");
    beam_atom_atomic_counter_buffer = enif_make_atom(env, "atomic_counter_buffer");
    beam_atom_max_fragment_atomic_counters = enif_make_atom(env, "max_fragment_atomic_counters");
    beam_atom_short = enif_make_atom(env, "short");
    beam_atom_clip_distance1 = enif_make_atom(env, "clip_distance1");
    beam_atom_set = enif_make_atom(env, "set");
    beam_atom_max_renderbuffer_size = enif_make_atom(env, "max_renderbuffer_size");
    beam_atom_viewport_subpixel_bits = enif_make_atom(env, "viewport_subpixel_bits");
    beam_atom_unsigned_int_10f_11f_11f_rev = enif_make_atom(env, "unsigned_int_10f_11f_11f_rev");
    beam_atom_vertices_submitted = enif_make_atom(env, "vertices_submitted");
    beam_atom_scissor_box = enif_make_atom(env, "scissor_box");
    beam_atom_unsigned_short_5_6_5 = enif_make_atom(env, "unsigned_short_5_6_5");
    beam_atom_debug_group_stack_depth = enif_make_atom(env, "debug_group_stack_depth");
    beam_atom_delete_status = enif_make_atom(env, "delete_status");
    beam_atom_minor_version = enif_make_atom(env, "minor_version");
    beam_atom_max_draw_buffers = enif_make_atom(env, "max_draw_buffers");
    beam_atom_compressed_signed_red_rgtc1 = enif_make_atom(env, "compressed_signed_red_rgtc1");
    beam_atom_proxy_texture_rectangle = enif_make_atom(env, "proxy_texture_rectangle");
    beam_atom_r16 = enif_make_atom(env, "r16");
    beam_atom_back_left = enif_make_atom(env, "back_left");
    beam_atom_false = enif_make_atom(env, "false");
    beam_atom_stack_overflow = enif_make_atom(env, "stack_overflow");
    beam_atom_primitive_restart = enif_make_atom(env, "primitive_restart");
    beam_atom_lines = enif_make_atom(env, "lines");
    beam_atom_proxy_texture_cube_map_array = enif_make_atom(env, "proxy_texture_cube_map_array");
    beam_atom_proxy_texture_2d_multisample_array = enif_make_atom(env, "proxy_texture_2d_multisample_array");
    beam_atom_max_fragment_input_components = enif_make_atom(env, "max_fragment_input_components");
    beam_atom_unpack_lsb_first = enif_make_atom(env, "unpack_lsb_first");
    beam_atom_triangles_adjacency = enif_make_atom(env, "triangles_adjacency");
    beam_atom_max_dual_source_draw_buffers = enif_make_atom(env, "max_dual_source_draw_buffers");
    beam_atom_unsigned_short = enif_make_atom(env, "unsigned_short");
    beam_atom_color_attachment0 = enif_make_atom(env, "color_attachment0");
    beam_atom_color_clear_value = enif_make_atom(env, "color_clear_value");
    beam_atom_rgb = enif_make_atom(env, "rgb");
    beam_atom_dispatch_indirect_buffer = enif_make_atom(env, "dispatch_indirect_buffer");
    beam_atom_geometry_output_type = enif_make_atom(env, "geometry_output_type");
    beam_atom_max_vertex_output_components = enif_make_atom(env, "max_vertex_output_components");
    beam_atom_texture1 = enif_make_atom(env, "texture1");
    beam_atom_read_framebuffer_binding = enif_make_atom(env, "read_framebuffer_binding");
    beam_atom_src_color = enif_make_atom(env, "src_color");
    beam_atom_query_by_region_no_wait_inverted = enif_make_atom(env, "query_by_region_no_wait_inverted");
    beam_atom_texture_wrap_r = enif_make_atom(env, "texture_wrap_r");
    beam_atom_max_sample_mask_words = enif_make_atom(env, "max_sample_mask_words");
    beam_atom_min = enif_make_atom(env, "min");
    beam_atom_transform_feedback_overflow = enif_make_atom(env, "transform_feedback_overflow");
    beam_atom_num_program_binary_formats = enif_make_atom(env, "num_program_binary_formats");
    beam_atom_polygon_offset_units = enif_make_atom(env, "polygon_offset_units");
    beam_atom_array_buffer_binding = enif_make_atom(env, "array_buffer_binding");
    beam_atom_stencil_back_writemask = enif_make_atom(env, "stencil_back_writemask");
    beam_atom_unsigned_int_5_9_9_9_rev = enif_make_atom(env, "unsigned_int_5_9_9_9_rev");
    beam_atom_compressed_srgb = enif_make_atom(env, "compressed_srgb");
    beam_atom_compressed_rgba = enif_make_atom(env, "compressed_rgba");
    beam_atom_decr_wrap = enif_make_atom(env, "decr_wrap");
    beam_atom_pack_row_length = enif_make_atom(env, "pack_row_length");
    beam_atom_pixel_unpack_buffer_binding = enif_make_atom(env, "pixel_unpack_buffer_binding");
    beam_atom_front_and_back = enif_make_atom(env, "front_and_back");
    beam_atom_bgr = enif_make_atom(env, "bgr");
    beam_atom_max_server_wait_timeout = enif_make_atom(env, "max_server_wait_timeout");
    beam_atom_polygon_offset_fill = enif_make_atom(env, "polygon_offset_fill");
    beam_atom_depth_buffer_bit = enif_make_atom(env, "depth_buffer_bit");
    beam_atom_color_attachment9 = enif_make_atom(env, "color_attachment9");
    beam_atom_depth_clamp = enif_make_atom(env, "depth_clamp");
    beam_atom_color_attachment17 = enif_make_atom(env, "color_attachment17");
    beam_atom_transform_feedback_buffer_binding = enif_make_atom(env, "transform_feedback_buffer_binding");
    beam_atom_smooth_point_size_range = enif_make_atom(env, "smooth_point_size_range");
    beam_atom_color_attachment28 = enif_make_atom(env, "color_attachment28");
    beam_atom_compressed_srgb_alpha = enif_make_atom(env, "compressed_srgb_alpha");
    beam_atom_fixed = enif_make_atom(env, "fixed");
    beam_atom_compressed_signed_rg11_eac = enif_make_atom(env, "compressed_signed_rg11_eac");
    beam_atom_pack_skip_pixels = enif_make_atom(env, "pack_skip_pixels");
    beam_atom_rg16_snorm = enif_make_atom(env, "rg16_snorm");
    beam_atom_one_minus_src1_alpha = enif_make_atom(env, "one_minus_src1_alpha");
    beam_atom_program_point_size = enif_make_atom(env, "program_point_size");
    beam_atom_active_attribute_max_length = enif_make_atom(env, "active_attribute_max_length");
    beam_atom_vertex_binding_divisor = enif_make_atom(env, "vertex_binding_divisor");
    beam_atom_read_buffer = enif_make_atom(env, "read_buffer");
    beam_atom_line_strip_adjacency = enif_make_atom(env, "line_strip_adjacency");
    beam_atom_texture3 = enif_make_atom(env, "texture3");
    beam_atom_vertex_attrib_array_stride = enif_make_atom(env, "vertex_attrib_array_stride");
    beam_atom_max_vertex_uniform_blocks = enif_make_atom(env, "max_vertex_uniform_blocks");
    beam_atom_vertex_shader = enif_make_atom(env, "vertex_shader");
    beam_atom_never = enif_make_atom(env, "never");
    beam_atom_stencil_test = enif_make_atom(env, "stencil_test");
    beam_atom_unsigned_byte_2_3_3_rev = enif_make_atom(env, "unsigned_byte_2_3_3_rev");
    beam_atom_unpack_skip_rows = enif_make_atom(env, "unpack_skip_rows");
    beam_atom_texture_rectangle = enif_make_atom(env, "texture_rectangle");
    beam_atom_major_version = enif_make_atom(env, "major_version");
    beam_atom_copy_read_buffer = enif_make_atom(env, "copy_read_buffer");
    beam_atom_max_geometry_input_components = enif_make_atom(env, "max_geometry_input_components");
    beam_atom_texture_binding_2d_multisample_array = enif_make_atom(env, "texture_binding_2d_multisample_array");
    beam_atom_depth_component16 = enif_make_atom(env, "depth_component16");
    beam_atom_texture_cube_map = enif_make_atom(env, "texture_cube_map");
    beam_atom_replace = enif_make_atom(env, "replace");
    beam_atom_stencil_index1 = enif_make_atom(env, "stencil_index1");
    beam_atom_back_right = enif_make_atom(env, "back_right");
    beam_atom_texture15 = enif_make_atom(env, "texture15");
    beam_atom_stencil_attachment = enif_make_atom(env, "stencil_attachment");
    beam_atom_blend_equation_alpha = enif_make_atom(env, "blend_equation_alpha");
    beam_atom_line_width_granularity = enif_make_atom(env, "line_width_granularity");
    beam_atom_nicest = enif_make_atom(env, "nicest");
    beam_atom_func_subtract = enif_make_atom(env, "func_subtract");
    beam_atom_texture13 = enif_make_atom(env, "texture13");
    beam_atom_blend_equation = enif_make_atom(env, "blend_equation");
    beam_atom_unsigned_int_24_8 = enif_make_atom(env, "unsigned_int_24_8");
    beam_atom_one_minus_dst_color = enif_make_atom(env, "one_minus_dst_color");
    beam_atom_depth_attachment = enif_make_atom(env, "depth_attachment");
    beam_atom_out_of_memory = enif_make_atom(env, "out_of_memory");
    beam_atom_triangle_fan = enif_make_atom(env, "triangle_fan");
    beam_atom_one = enif_make_atom(env, "one");
    beam_atom_clip_distance2 = enif_make_atom(env, "clip_distance2");
    beam_atom_vertex_binding_offset = enif_make_atom(env, "vertex_binding_offset");
    beam_atom_compressed_rgb_bptc_signed_float = enif_make_atom(env, "compressed_rgb_bptc_signed_float");
    beam_atom_rgba16_snorm = enif_make_atom(env, "rgba16_snorm");
    beam_atom_and_ = enif_make_atom(env, "and_");
    beam_atom_pack_swap_bytes = enif_make_atom(env, "pack_swap_bytes");
    beam_atom_r32ui = enif_make_atom(env, "r32ui");
    beam_atom_context_profile_mask = enif_make_atom(env, "context_profile_mask");
    beam_atom_front_face = enif_make_atom(env, "front_face");
    beam_atom_texture_min_filter = enif_make_atom(env, "texture_min_filter");
    beam_atom_uniform_buffer_start = enif_make_atom(env, "uniform_buffer_start");
    beam_atom_texture11 = enif_make_atom(env, "texture11");
    beam_atom_color_attachment24 = enif_make_atom(env, "color_attachment24");
    beam_atom_polygon_smooth_hint = enif_make_atom(env, "polygon_smooth_hint");
    return 0;
}

static void nif_module_unload(ErlNifEnv* caller_env, void* priv_data)
{
    (void)caller_env;
    (void)priv_data;
}
ERL_NIF_TERM custom_enif_make_bool(ErlNifEnv* env, GLboolean val) {
    return enif_make_atom(env, val == GL_TRUE ? "true" : "false");
}
int custom_enif_get_bool(ErlNifEnv* env, ERL_NIF_TERM term, GLboolean* bp) {
    if (enif_is_identical(term, enif_make_atom(env, "true"))) {
        *bp = GL_TRUE;
        return 1;
    } else if (enif_is_identical(term, enif_make_atom(env, "false"))) {
        *bp = GL_FALSE;
        return 1;
    } else {
        return 0;
    }
}

static ERL_NIF_TERM nif_gladLoadGl_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;
    (void)argv;

    if (!gladLoadGL()) {
        return enif_make_atom(env, "not_ok");
    } else {
        return enif_make_atom(env, "ok");
    }
}

static ERL_NIF_TERM nif_gladLoadGl(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_gladLoadGl_command, env, argc, (ERL_NIF_TERM *)argv);
}
static ERL_NIF_TERM nif_glDisable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glDisable(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDisable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisable_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;
    GLenum arg_7;
    unsigned int arg_7_tmp;
    if (!enif_get_uint(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLenum)arg_7_tmp;
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendFuncSeparatei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;
    GLenum arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLenum)arg_4_tmp;

    glBlendFuncSeparatei(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendFuncSeparatei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFuncSeparatei_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glEnableVertexAttribArray(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnableVertexAttribArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearStencil_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;

    glClearStencil(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearStencil(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearStencil_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribBinding_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexAttribBinding(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribBinding(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribBinding_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    GLsizei arg_1_length = 0;

    glGetProgramInfoLog(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramInfoLog_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramPipelineInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    GLsizei arg_1_length = 0;

    glGetProgramPipelineInfoLog(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramPipelineInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramPipelineInfoLog_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBooleani_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLboolean* arg_2 = enif_alloc(sizeof(GLboolean) * arg_2_n);

    glGetBooleani_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, custom_enif_make_bool(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleani_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleani_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsEnabledi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    GLboolean ret = glIsEnabledi(arg_0, arg_1);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsEnabledi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsEnabledi_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateBuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateBuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilOp_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;

    glStencilOp(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilOp(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOp_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsRenderbuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsRenderbuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLenum arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLenum)arg_4_tmp;
    GLenum arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLenum)arg_5_tmp;
    ErlNifBinary arg_6;
    if (!enif_inspect_binary(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glTexSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFlush_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glFlush();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFlush(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFlush_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsQuery(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsQuery_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTransformFeedback(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glReadBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glReadBuffer(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glReadBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;

    glUniform1d(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glUniform1f(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;

    glUniform1i(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glUniform1ui(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;
    GLdouble arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLdouble)arg_2_tmp;

    glUniform2d(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glUniform2f(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glUniform2i(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glUniform2ui(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;
    GLdouble arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLdouble)arg_2_tmp;
    GLdouble arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLdouble)arg_3_tmp;

    glUniform3d(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glUniform3f(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;

    glUniform3i(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glUniform3ui(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;
    GLdouble arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLdouble)arg_2_tmp;
    GLdouble arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLdouble)arg_3_tmp;
    GLdouble arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLdouble)arg_4_tmp;

    glUniform4d(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;
    GLfloat arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLfloat)arg_4_tmp;

    glUniform4f(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glUniform4i(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glUniform4ui(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTransformFeedbacks(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTransformFeedbacks_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    GLuint ret = glCreateShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformdv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLdouble* arg_2 = enif_alloc(sizeof(GLdouble) * arg_2_n);

    glGetUniformdv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformdv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformdv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetUniformfv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetUniformiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLuint* arg_2 = enif_alloc(sizeof(GLuint) * arg_2_n);

    glGetUniformuiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribPointer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    unsigned int arg_5;
    if (!enif_get_uint(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }


    glVertexAttribPointer(arg_0, arg_1, arg_2, arg_3, arg_4, (GLvoid*)arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribPointer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribPointer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTextureParameterIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glTextureParameterIiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTextureParameterIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureParameterIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTextureParameterIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glTextureParameterIuiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTextureParameterIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureParameterIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetInteger64v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLint64* arg_1 = enif_alloc(sizeof(GLint64) * arg_1_n);

    glGetInteger64v(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetSamplerParameterIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetSamplerParameterIiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetSamplerParameterIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetSamplerParameterIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetSamplerParameterIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLuint* arg_2 = enif_alloc(sizeof(GLuint) * arg_2_n);

    glGetSamplerParameterIuiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetSamplerParameterIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetSamplerParameterIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawArraysInstanced_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glDrawArraysInstanced(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawArraysInstanced(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArraysInstanced_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLintptr arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLintptr)arg_1_tmp;
    GLsizeiptr arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizeiptr)arg_2_tmp;
    const void* arg_3 = NULL;
    ErlNifBinary arg_3_bin;
    if (enif_is_identical(argv[3], enif_make_atom(env, "undefined"))) {
        arg_3 = NULL;
    }
    else if (enif_inspect_binary(env, argv[3], &arg_3_bin)) {
        arg_3 = arg_3_bin.data;
    }
    else {
        return enif_make_badarg(env);
    }

    glBufferSubData(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBufferSubData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteFramebuffers(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteFramebuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPolygonOffset_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glPolygonOffset(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPolygonOffset(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonOffset_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEndTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glEndTransformFeedback();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEndTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glStencilMask(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMask_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClampColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glClampColor(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClampColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClampColor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLintptr arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLintptr)arg_2_tmp;
    GLintptr arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLintptr)arg_3_tmp;
    GLsizeiptr arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizeiptr)arg_4_tmp;

    glCopyBufferSubData(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyBufferSubData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDisableVertexAttribArray(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisableVertexAttribArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLuint* arg_1 = enif_alloc(sizeof(GLuint) * arg_1_n);

    glCreateQueries(arg_0, arg_1_n, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_uint(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glCreateQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateQueries_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearDepth_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLdouble arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLdouble)arg_0_tmp;

    glClearDepth(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearDepth(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearDepth_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glLinkProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glLinkProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glLinkProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLinkProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCompileShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glCompileShader(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCompileShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompileShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDetachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDetachShader(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDetachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDetachShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetDoublev_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLdouble* arg_1 = enif_alloc(sizeof(GLdouble) * arg_1_n);

    glGetDoublev(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_double(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetDoublev(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetDoublev_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetSamplerParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetSamplerParameterfv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetSamplerParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetSamplerParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetSamplerParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetSamplerParameteriv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetSamplerParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetSamplerParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glAttachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glAttachShader(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glAttachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glAttachShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexParameterIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetTexParameterIiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTexParameterIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexParameterIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexParameterIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLuint* arg_2 = enif_alloc(sizeof(GLuint) * arg_2_n);

    glGetTexParameterIuiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTexParameterIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexParameterIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenerateMipmap_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glGenerateMipmap(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glGenerateMipmap(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenerateMipmap_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateVertexArrays(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateVertexArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTextureParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetTextureParameterfv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTextureParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTextureParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTextureParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetTextureParameteriv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTextureParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTextureParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgram(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDisablei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDisablei(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDisablei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisablei_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetDoublei_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLdouble* arg_2 = enif_alloc(sizeof(GLdouble) * arg_2_n);

    glGetDoublei_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetDoublei_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetDoublei_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTextures(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTextures_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEnablei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glEnablei(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEnablei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnablei_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenRenderbuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenRenderbuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glValidateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glValidateProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glValidateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindVertexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLintptr arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLintptr)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glBindVertexBuffer(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindVertexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindVertexBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLint arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLint)arg_7_tmp;

    glCopyTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindVertexArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glBindVertexArray(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindVertexArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindVertexArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI1i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;

    glVertexAttribI1i(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI1i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI1i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI1iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_1_array = enif_alloc(sizeof(GLint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLint)arg_1_val;
    }

    glVertexAttribI1iv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI1iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI1iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI1ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexAttribI1ui(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI1ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI1ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI1uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_1_array = enif_alloc(sizeof(GLuint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLuint)arg_1_val;
    }

    glVertexAttribI1uiv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI1uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI1uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI2i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glVertexAttribI2i(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI2i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI2i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI2iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_1_array = enif_alloc(sizeof(GLint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLint)arg_1_val;
    }

    glVertexAttribI2iv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI2iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI2iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI2ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glVertexAttribI2ui(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI2ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI2ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI2uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_1_array = enif_alloc(sizeof(GLuint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLuint)arg_1_val;
    }

    glVertexAttribI2uiv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI2uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI2uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI3i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;

    glVertexAttribI3i(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI3i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI3i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI3iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_1_array = enif_alloc(sizeof(GLint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLint)arg_1_val;
    }

    glVertexAttribI3iv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI3iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI3iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI3ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glVertexAttribI3ui(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI3ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI3ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI3uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_1_array = enif_alloc(sizeof(GLuint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLuint)arg_1_val;
    }

    glVertexAttribI3uiv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI3uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI3uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4bv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLbyte* arg_1_array = enif_alloc(sizeof(GLbyte) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLbyte)arg_1_val;
    }

    glVertexAttribI4bv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4bv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4bv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glVertexAttribI4i(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_1_array = enif_alloc(sizeof(GLint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLint)arg_1_val;
    }

    glVertexAttribI4iv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4sv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLshort* arg_1_array = enif_alloc(sizeof(GLshort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLshort)arg_1_val;
    }

    glVertexAttribI4sv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4sv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4sv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4ubv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLubyte* arg_1_array = enif_alloc(sizeof(GLubyte) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLubyte)arg_1_val;
    }

    glVertexAttribI4ubv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4ubv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4ubv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexAttribI4ui(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_1_array = enif_alloc(sizeof(GLuint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLuint)arg_1_val;
    }

    glVertexAttribI4uiv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4usv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLushort* arg_1_array = enif_alloc(sizeof(GLushort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLushort)arg_1_val;
    }

    glVertexAttribI4usv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4usv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4usv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlitFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLint arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLint)arg_7_tmp;
    GLbitfield arg_8;
    unsigned int arg_8_tmp;
    if (!enif_get_uint(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLbitfield)arg_8_tmp;
    GLenum arg_9;
    unsigned int arg_9_tmp;
    if (!enif_get_uint(env, argv[9], &arg_9_tmp)) {
        return enif_make_badarg(env);
    }
    arg_9 = (GLenum)arg_9_tmp;

    glBlitFramebuffer(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlitFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlitFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilMaskSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glStencilMaskSeparate(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilMaskSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMaskSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexAttribFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glScissor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glScissor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glScissor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glScissor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;
    GLenum arg_7;
    unsigned int arg_7_tmp;
    if (!enif_get_uint(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLenum)arg_7_tmp;
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetError_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    GLenum ret = glGetError();

    ERL_NIF_TERM ret_0;
    switch (ret) {
        case GL_STACK_OVERFLOW: ret_0 = beam_atom_stack_overflow; break;
        case GL_INVALID_VALUE: ret_0 = beam_atom_invalid_value; break;
        case GL_NO_ERROR: ret_0 = beam_atom_no_error; break;
        case GL_OUT_OF_MEMORY: ret_0 = beam_atom_out_of_memory; break;
        case GL_INVALID_OPERATION: ret_0 = beam_atom_invalid_operation; break;
        case GL_INVALID_FRAMEBUFFER_OPERATION: ret_0 = beam_atom_invalid_framebuffer_operation; break;
        case GL_STACK_UNDERFLOW: ret_0 = beam_atom_stack_underflow; break;
        case GL_INVALID_ENUM: ret_0 = beam_atom_invalid_enum; break;
        default: ret_0 = enif_make_atom(env, "unknown"); break;
    }
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetError(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetError_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsVertexArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsVertexArray(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsVertexArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsVertexArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLuint* arg_1 = enif_alloc(sizeof(GLuint) * arg_1_n);

    glCreateTextures(arg_0, arg_1_n, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_uint(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glCreateTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateTextures_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPointSize_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glPointSize(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPointSize(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPointSize_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTexture(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteShader(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDepthRange_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLdouble arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLdouble)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;

    glDepthRange(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDepthRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthRange_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_2_array = enif_alloc(sizeof(GLdouble) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLdouble)arg_2_val;
    }

    glUniform1dv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform1fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform1iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform1uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_2_array = enif_alloc(sizeof(GLdouble) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLdouble)arg_2_val;
    }

    glUniform2dv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform2fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform2iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform2uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_2_array = enif_alloc(sizeof(GLdouble) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLdouble)arg_2_val;
    }

    glUniform3dv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform3fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform3iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform3uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_2_array = enif_alloc(sizeof(GLdouble) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLdouble)arg_2_val;
    }

    glUniform4dv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform4fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform4iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform4uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameterf_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glSamplerParameterf(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameterf(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameterf_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glSamplerParameterfv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glSamplerParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glSamplerParameteriv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegeri_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetIntegeri_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegeri_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegeri_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glDrawBuffer(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glStencilFunc(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFunc_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenProgramPipelines(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenProgramPipelines_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glTexBuffer(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;

    glDrawArrays(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribIFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glVertexAttribIFormat(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribIFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribIFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glLineWidth_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glLineWidth(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glLineWidth(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLineWidth_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDepthMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glDepthMask(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDepthMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthMask_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;
    GLsizei arg_8;
    int arg_8_tmp;
    if (!enif_get_int(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLsizei)arg_8_tmp;

    glCopyTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glViewport_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glViewport(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glViewport(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glViewport_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLenum arg_7;
    unsigned int arg_7_tmp;
    if (!enif_get_uint(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLenum)arg_7_tmp;
    GLenum arg_8;
    unsigned int arg_8_tmp;
    if (!enif_get_uint(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLenum)arg_8_tmp;
    ErlNifBinary arg_9;
    if (!enif_inspect_binary(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }

    glTexImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBeginConditionalRender_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glBeginConditionalRender(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBeginConditionalRender(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginConditionalRender_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;
    unsigned int arg_4_size;
    enif_get_uint(env, argv[4], &arg_4_size);
    ERL_NIF_TERM arg_4;
    unsigned char* arg_4_data = enif_make_new_binary(env, arg_4_size, &arg_4);

    glGetTexImage(arg_0, arg_1, arg_2, arg_3, arg_4_data);

    return enif_make_tuple(env, 1,
        arg_4
    );
}

static ERL_NIF_TERM nif_glGetTexImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexImage_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindBuffer(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;

    glCopyTexSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexBindingDivisor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexBindingDivisor(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexBindingDivisor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexBindingDivisor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendFunci_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;

    glBlendFunci(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendFunci(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFunci_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindTextureUnit_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTextureUnit(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindTextureUnit(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTextureUnit_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBufferData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizeiptr arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizeiptr)arg_1_tmp;
    const void* arg_2 = NULL;
    ErlNifBinary arg_2_bin;
    if (enif_is_identical(argv[2], enif_make_atom(env, "undefined"))) {
        arg_2 = NULL;
    }
    else if (enif_inspect_binary(env, argv[2], &arg_2_bin)) {
        arg_2 = arg_2_bin.data;
    }
    else {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;

    glBufferData(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBufferData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBufferData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSampleCoverage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glSampleCoverage(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSampleCoverage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSampleCoverage_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilOpSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;

    glStencilOpSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilOpSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOpSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetShaderiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetShaderiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glBlendFunc(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFunc_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glHint_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glHint(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glHint(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glHint_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBooleanv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLboolean* arg_1 = enif_alloc(sizeof(GLboolean) * arg_1_n);

    glGetBooleanv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, custom_enif_make_bool(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleanv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleanv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBeginTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glBeginTransformFeedback(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBeginTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glBlendColor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendColor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgramPipeline(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgramPipeline_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBeginQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBeginQuery(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBeginQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginQuery_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameterIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glTexParameterIiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameterIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameterIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameterIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glTexParameterIuiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameterIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameterIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPixelStoref_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glPixelStoref(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPixelStoref(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPixelStoref_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPixelStorei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;

    glPixelStorei(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPixelStorei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPixelStorei_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetFloati_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetFloati_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetFloati_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFloati_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEndQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glEndQuery(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEndQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndQuery_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteSamplers(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteSamplers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    if (!enif_is_list(env, argv[1])) {
        return enif_make_badarg(env);
    }

    ERL_NIF_TERM arg_1_list = argv[1];
    ERL_NIF_TERM arg_1_head;

    unsigned arg_1_count = 0;
    ERL_NIF_TERM arg_1_tmp_list = arg_1_list;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        if (!enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list)) {
            return enif_make_badarg(env);
        }
        if (!enif_is_binary(env, arg_1_head)) {
            return enif_make_badarg(env);
        }
        arg_1_count++;
    }

    if (arg_1_count == 0) {
        return enif_make_badarg(env);
    }

    const GLchar** arg_1_strings = enif_alloc(sizeof(GLchar*) * arg_1_count);
    GLint* arg_1_lengths = enif_alloc(sizeof(GLint) * arg_1_count);
    ErlNifBinary* arg_1_binaries = enif_alloc(sizeof(ErlNifBinary) * arg_1_count);
    if (!arg_1_strings || !arg_1_lengths || !arg_1_binaries) {
        if (arg_1_strings) enif_free(arg_1_strings);
        if (arg_1_lengths) enif_free(arg_1_lengths);
        if (arg_1_binaries) enif_free(arg_1_binaries);
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    arg_1_tmp_list = arg_1_list;
    unsigned arg_1_i = 0;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list);
        if (!enif_inspect_binary(env, arg_1_head, &arg_1_binaries[arg_1_i])) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_release_binary(&arg_1_binaries[arg_1_j]);
            }
            enif_free(arg_1_strings);
            enif_free(arg_1_lengths);
            enif_free(arg_1_binaries);
            return enif_make_badarg(env);
        }

        arg_1_strings[arg_1_i] = (const GLchar*)arg_1_binaries[arg_1_i].data;
        arg_1_lengths[arg_1_i] = (GLint)arg_1_binaries[arg_1_i].size;
        arg_1_i++;
    }

    glShaderSource(arg_0, (GLsizei)arg_1_count, arg_1_strings, arg_1_lengths);

    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        enif_release_binary(&arg_1_binaries[arg_1_j]);
    }
    enif_free(arg_1_strings);
    enif_free(arg_1_lengths);
    enif_free(arg_1_binaries);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glShaderSource_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClear_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLbitfield arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLbitfield)arg_0_tmp;

    glClear(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClear(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClear_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;

    glCopyTextureSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTextureSubImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLenum arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLenum)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;
    ErlNifBinary arg_7;
    if (!enif_inspect_binary(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glTexImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glMinSampleShading_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glMinSampleShading(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glMinSampleShading(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glMinSampleShading_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameterf_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glTexParameterf(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameterf(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameterf_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glTexParameterfv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glTexParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glTexParameteriv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPrimitiveRestartIndex_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glPrimitiveRestartIndex(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPrimitiveRestartIndex(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPrimitiveRestartIndex_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteRenderbuffers(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteRenderbuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;

    glCopyTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glStencilFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFuncSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegerv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLint* arg_1 = enif_alloc(sizeof(GLint) * arg_1_n);

    glGetIntegerv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegerv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegerv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenVertexArrays(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenVertexArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexArrayVertexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLintptr arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLintptr)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;

    glVertexArrayVertexBuffer(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexArrayVertexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayVertexBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDepthFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glDepthFunc(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDepthFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthFunc_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenFramebuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenFramebuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteProgramPipelines(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgramPipelines_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetFloatv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    unsigned int arg_1_n_tmp;
    enif_get_uint(env, argv[1], &arg_1_n_tmp);
    GLsizei arg_1_n = (GLsizei)arg_1_n_tmp;
    GLfloat* arg_1 = enif_alloc(sizeof(GLfloat) * arg_1_n);

    glGetFloatv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_double(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetFloatv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFloatv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;

    glVertexAttrib1d(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_1_array = enif_alloc(sizeof(GLdouble) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLdouble)arg_1_val;
    }

    glVertexAttrib1dv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glVertexAttrib1f(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_1_array = enif_alloc(sizeof(GLfloat) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLfloat)arg_1_val;
    }

    glVertexAttrib1fv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1s_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLshort arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLshort)arg_1_tmp;

    glVertexAttrib1s(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1s(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1s_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1sv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLshort* arg_1_array = enif_alloc(sizeof(GLshort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLshort)arg_1_val;
    }

    glVertexAttrib1sv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1sv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1sv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;
    GLdouble arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLdouble)arg_2_tmp;

    glVertexAttrib2d(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_1_array = enif_alloc(sizeof(GLdouble) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLdouble)arg_1_val;
    }

    glVertexAttrib2dv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glVertexAttrib2f(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_1_array = enif_alloc(sizeof(GLfloat) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLfloat)arg_1_val;
    }

    glVertexAttrib2fv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2s_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLshort arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLshort)arg_1_tmp;
    GLshort arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLshort)arg_2_tmp;

    glVertexAttrib2s(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2s(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2s_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2sv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLshort* arg_1_array = enif_alloc(sizeof(GLshort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLshort)arg_1_val;
    }

    glVertexAttrib2sv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2sv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2sv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;
    GLdouble arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLdouble)arg_2_tmp;
    GLdouble arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLdouble)arg_3_tmp;

    glVertexAttrib3d(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_1_array = enif_alloc(sizeof(GLdouble) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLdouble)arg_1_val;
    }

    glVertexAttrib3dv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glVertexAttrib3f(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_1_array = enif_alloc(sizeof(GLfloat) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLfloat)arg_1_val;
    }

    glVertexAttrib3fv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3s_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLshort arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLshort)arg_1_tmp;
    GLshort arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLshort)arg_2_tmp;
    GLshort arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLshort)arg_3_tmp;

    glVertexAttrib3s(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3s(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3s_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3sv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLshort* arg_1_array = enif_alloc(sizeof(GLshort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLshort)arg_1_val;
    }

    glVertexAttrib3sv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3sv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3sv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4bv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLbyte* arg_1_array = enif_alloc(sizeof(GLbyte) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLbyte)arg_1_val;
    }

    glVertexAttrib4bv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4bv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4bv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4d_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLdouble arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLdouble)arg_1_tmp;
    GLdouble arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLdouble)arg_2_tmp;
    GLdouble arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLdouble)arg_3_tmp;
    GLdouble arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLdouble)arg_4_tmp;

    glVertexAttrib4d(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4d(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4d_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_1_array = enif_alloc(sizeof(GLdouble) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLdouble)arg_1_val;
    }

    glVertexAttrib4dv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;
    GLfloat arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLfloat)arg_4_tmp;

    glVertexAttrib4f(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_1_array = enif_alloc(sizeof(GLfloat) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        double arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_double(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLfloat)arg_1_val;
    }

    glVertexAttrib4fv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_1_array = enif_alloc(sizeof(GLint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLint)arg_1_val;
    }

    glVertexAttrib4iv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4s_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLshort arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLshort)arg_1_tmp;
    GLshort arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLshort)arg_2_tmp;
    GLshort arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLshort)arg_3_tmp;
    GLshort arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLshort)arg_4_tmp;

    glVertexAttrib4s(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4s(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4s_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4sv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLshort* arg_1_array = enif_alloc(sizeof(GLshort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_int(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLshort)arg_1_val;
    }

    glVertexAttrib4sv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4sv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4sv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4ubv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLubyte* arg_1_array = enif_alloc(sizeof(GLubyte) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLubyte)arg_1_val;
    }

    glVertexAttrib4ubv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4ubv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4ubv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_1_array = enif_alloc(sizeof(GLuint) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLuint)arg_1_val;
    }

    glVertexAttrib4uiv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4usv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    GLushort* arg_1_array = enif_alloc(sizeof(GLushort) * arg_1_length);
    if (!arg_1_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_1_head, arg_1_tail = argv[1];
    for (unsigned i = 0; i < arg_1_length; i++) {
        unsigned int arg_1_val;
        if (!enif_get_list_cell(env, arg_1_tail, &arg_1_head, &arg_1_tail) ||
            !enif_get_uint(env, arg_1_head, &arg_1_val)) {
            enif_free(arg_1_array);
            return enif_make_badarg(env);
        }
        arg_1_array[i] = (GLushort)arg_1_val;
    }

    glVertexAttrib4usv(arg_0, arg_1_array);

    enif_free(arg_1_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4usv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4usv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glColorMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glColorMask(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glColorMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glColorMask_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    ErlNifUInt64 arg_2_size;
    if (!enif_get_uint64(env, argv[2], &arg_2_size)) {
        return enif_make_badarg(env);
    }
    ERL_NIF_TERM arg_2_term;
    unsigned char* arg_2_bin = enif_make_new_binary(env, arg_2_size, &arg_2_term);
    if (arg_2_bin == NULL) {
        return enif_make_badarg(env);
    }

    glGetBufferSubData(arg_0, arg_1, arg_2_size, arg_2_bin);

    return enif_make_tuple(env, 1,
        arg_2_term
    );
}

static ERL_NIF_TERM nif_glGetBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBufferSubData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glRenderbufferStorageMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;

    glRenderbufferStorageMultisample(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glRenderbufferStorageMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glRenderbufferStorageMultisample_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTexture(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsFramebuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenSamplers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenSamplers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTransformFeedbacks(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTransformFeedbacks_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsSampler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsSampler(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsSampler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsSampler_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFrontFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glFrontFace(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFrontFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFrontFace_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;
    GLboolean arg_4;
    if (enif_compare(argv[4], enif_make_atom(env, "true")) == 0) {
        arg_4 = GL_TRUE;
    } else if (enif_compare(argv[4], enif_make_atom(env, "false")) == 0) {
        arg_4 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLuint arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLuint)arg_5_tmp;

    glVertexArrayAttribFormat(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexArrayAttribFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendEquation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glBlendEquation(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendEquation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetString_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    const GLubyte* ret = glGetString(arg_0);

    size_t ret_len = strlen((const char*)ret);
    ErlNifBinary ret_tmp;
    enif_alloc_binary(ret_len, &ret_tmp);
    memcpy(ret_tmp.data, ret, ret_len);
    ERL_NIF_TERM ret_0 = enif_make_binary(env, &ret_tmp);

    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetString(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetString_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glLogicOp_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glLogicOp(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glLogicOp(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLogicOp_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    GLsizei arg_1_length = 0;

    glGetShaderInfoLog(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderInfoLog_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenQueries(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenQueries_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEnable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glEnable(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEnable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnable_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsBuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;

    glBlendFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFuncSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetTexParameterfv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTexParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetTexParameteriv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTexParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindFramebuffer(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameterIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glSamplerParameterIiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameterIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameterIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameterIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glSamplerParameterIuiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameterIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameterIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindRenderbuffer(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindRenderbuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glClearColor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearColor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendEquationSeparatei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;

    glBlendEquationSeparatei(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendEquationSeparatei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationSeparatei_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTextureParameterf_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glTextureParameterf(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTextureParameterf(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureParameterf_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTextureParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glTextureParameterfv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTextureParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTextureParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glTextureParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTextureParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTextureParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glTextureParameteriv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTextureParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteQueries(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteQueries_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;

    glFramebufferTexture(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFramebufferTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTextures(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTextures_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateRenderbuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateRenderbuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsEnabled_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    GLboolean ret = glIsEnabled(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsEnabled(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsEnabled_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPolygonMode_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glPolygonMode(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPolygonMode(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonMode_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribdv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLdouble* arg_2 = enif_alloc(sizeof(GLdouble) * arg_2_n);

    glGetVertexAttribdv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribdv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribdv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetVertexAttribfv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetVertexAttribiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribLFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexArrayAttribLFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexArrayAttribLFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribLFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteBuffers(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteBuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenBuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenBuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glActiveTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glActiveTexture(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glActiveTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glActiveTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetInteger64i_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint64* arg_2 = enif_alloc(sizeof(GLint64) * arg_2_n);

    glGetInteger64i_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64i_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64i_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFinish_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glFinish();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFinish(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFinish_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;

    glCopyTexImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix2dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2x3dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix2x3dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2x3dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2x3dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2x3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix2x3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2x3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2x3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2x4dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix2x4dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2x4dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2x4dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2x4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix2x4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2x4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2x4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix3dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3x2dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix3x2dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3x2dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3x2dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3x2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix3x2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3x2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3x2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3x4dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix3x4dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3x4dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3x4dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3x4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix3x4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3x4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3x4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix4dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4x2dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix4x2dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4x2dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4x2dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4x2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix4x2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4x2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4x2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4x3dv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLdouble* arg_3_array = enif_alloc(sizeof(GLdouble) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLdouble)arg_3_val;
    }

    glUniformMatrix4x3dv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4x3dv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4x3dv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4x3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix4x3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4x3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4x3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTextureParameterIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetTextureParameterIiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTextureParameterIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTextureParameterIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTextureParameterIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLuint* arg_2 = enif_alloc(sizeof(GLuint) * arg_2_n);

    glGetTextureParameterIuiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTextureParameterIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTextureParameterIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEndConditionalRender_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glEndConditionalRender();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEndConditionalRender(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndConditionalRender_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage3DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLboolean arg_6;
    if (enif_compare(argv[6], enif_make_atom(env, "true")) == 0) {
        arg_6 = GL_TRUE;
    } else if (enif_compare(argv[6], enif_make_atom(env, "false")) == 0) {
        arg_6 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glTexImage3DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage3DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage3DMultisample_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendEquationi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glBlendEquationi(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendEquationi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationi_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    GLuint ret = glCreateProgram();

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenerateTextureMipmap_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glGenerateTextureMipmap(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glGenerateTextureMipmap(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenerateTextureMipmap_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFramebufferTextureLayer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glFramebufferTextureLayer(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFramebufferTextureLayer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTextureLayer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage2DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLboolean arg_5;
    if (enif_compare(argv[5], enif_make_atom(env, "true")) == 0) {
        arg_5 = GL_TRUE;
    } else if (enif_compare(argv[5], enif_make_atom(env, "false")) == 0) {
        arg_5 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glTexImage2DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage2DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2DMultisample_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCullFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glCullFace(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCullFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCullFace_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_n_tmp;
    enif_get_uint(env, argv[2], &arg_2_n_tmp);
    GLsizei arg_2_n = (GLsizei)arg_2_n_tmp;
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetProgramiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteVertexArrays(arg_0, arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteVertexArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUseProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glUseProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUseProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glReadPixels_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLenum arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLenum)arg_4_tmp;
    GLenum arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLenum)arg_5_tmp;
    unsigned int arg_6_size;
    enif_get_uint(env, argv[6], &arg_6_size);
    ERL_NIF_TERM arg_6;
    unsigned char* arg_6_data = enif_make_new_binary(env, arg_6_size, &arg_6);

    glReadPixels(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6_data);

    return enif_make_tuple(env, 1,
        arg_6
    );
}

static ERL_NIF_TERM nif_glReadPixels(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadPixels_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribLFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glVertexAttribLFormat(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribLFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribLFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformLocation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_length;
    if (!enif_get_list_length(env, argv[1], &arg_1_length)) {
        return enif_make_badarg(env);
    }
    char arg_1_buf[1024]; // XXX:adjust size as needed
    if (enif_get_string(env, argv[1], arg_1_buf, sizeof(arg_1_buf), ERL_NIF_LATIN1) <= 0) {
        return enif_make_badarg(env);
    }
    const GLchar* arg_1 = (const GLchar*)arg_1_buf;

    GLint ret = glGetUniformLocation(arg_0, arg_1);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetUniformLocation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformLocation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;

    glCopyTextureSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTextureSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribIFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexArrayAttribIFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexArrayAttribIFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribIFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}


static ErlNifFunc nif_functions[] = {
{"glad_load_gl", 0, nif_gladLoadGl, 0},
    {"glDisable_raw", 1, nif_glDisable, 0},
    {"glTexSubImage2D_raw", 9, nif_glTexSubImage2D, 0},
    {"glBlendFuncSeparatei_raw", 5, nif_glBlendFuncSeparatei, 0},
    {"glEnableVertexAttribArray_raw", 1, nif_glEnableVertexAttribArray, 0},
    {"glClearStencil_raw", 1, nif_glClearStencil, 0},
    {"glVertexAttribBinding_raw", 2, nif_glVertexAttribBinding, 0},
    {"glGetProgramInfoLog_raw", 2, nif_glGetProgramInfoLog, 0},
    {"glGetProgramPipelineInfoLog_raw", 2, nif_glGetProgramPipelineInfoLog, 0},
    {"glGetBooleani_v_raw", 3, nif_glGetBooleani_v, 0},
    {"glIsEnabledi_raw", 2, nif_glIsEnabledi, 0},
    {"glCreateBuffers_raw", 1, nif_glCreateBuffers, 0},
    {"glStencilOp_raw", 3, nif_glStencilOp, 0},
    {"glIsRenderbuffer_raw", 1, nif_glIsRenderbuffer, 0},
    {"glTexSubImage1D_raw", 7, nif_glTexSubImage1D, 0},
    {"glFlush_raw", 0, nif_glFlush, 0},
    {"glIsQuery_raw", 1, nif_glIsQuery, 0},
    {"glIsTransformFeedback_raw", 1, nif_glIsTransformFeedback, 0},
    {"glReadBuffer_raw", 1, nif_glReadBuffer, 0},
    {"glUniform1d_raw", 2, nif_glUniform1d, 0},
    {"glUniform1f_raw", 2, nif_glUniform1f, 0},
    {"glUniform1i_raw", 2, nif_glUniform1i, 0},
    {"glUniform1ui_raw", 2, nif_glUniform1ui, 0},
    {"glUniform2d_raw", 3, nif_glUniform2d, 0},
    {"glUniform2f_raw", 3, nif_glUniform2f, 0},
    {"glUniform2i_raw", 3, nif_glUniform2i, 0},
    {"glUniform2ui_raw", 3, nif_glUniform2ui, 0},
    {"glUniform3d_raw", 4, nif_glUniform3d, 0},
    {"glUniform3f_raw", 4, nif_glUniform3f, 0},
    {"glUniform3i_raw", 4, nif_glUniform3i, 0},
    {"glUniform3ui_raw", 4, nif_glUniform3ui, 0},
    {"glUniform4d_raw", 5, nif_glUniform4d, 0},
    {"glUniform4f_raw", 5, nif_glUniform4f, 0},
    {"glUniform4i_raw", 5, nif_glUniform4i, 0},
    {"glUniform4ui_raw", 5, nif_glUniform4ui, 0},
    {"glDeleteTransformFeedbacks_raw", 2, nif_glDeleteTransformFeedbacks, 0},
    {"glCreateShader_raw", 1, nif_glCreateShader, 0},
    {"glGetUniformdv_raw", 3, nif_glGetUniformdv, 0},
    {"glGetUniformfv_raw", 3, nif_glGetUniformfv, 0},
    {"glGetUniformiv_raw", 3, nif_glGetUniformiv, 0},
    {"glGetUniformuiv_raw", 3, nif_glGetUniformuiv, 0},
    {"glVertexAttribPointer_raw", 6, nif_glVertexAttribPointer, 0},
    {"glTextureParameterIiv_raw", 3, nif_glTextureParameterIiv, 0},
    {"glTextureParameterIuiv_raw", 3, nif_glTextureParameterIuiv, 0},
    {"glGetInteger64v_raw", 2, nif_glGetInteger64v, 0},
    {"glGetSamplerParameterIiv_raw", 3, nif_glGetSamplerParameterIiv, 0},
    {"glGetSamplerParameterIuiv_raw", 3, nif_glGetSamplerParameterIuiv, 0},
    {"glDrawArraysInstanced_raw", 4, nif_glDrawArraysInstanced, 0},
    {"glBufferSubData_raw", 4, nif_glBufferSubData, 0},
    {"glDeleteFramebuffers_raw", 2, nif_glDeleteFramebuffers, 0},
    {"glPolygonOffset_raw", 2, nif_glPolygonOffset, 0},
    {"glEndTransformFeedback_raw", 0, nif_glEndTransformFeedback, 0},
    {"glStencilMask_raw", 1, nif_glStencilMask, 0},
    {"glClampColor_raw", 2, nif_glClampColor, 0},
    {"glCopyBufferSubData_raw", 5, nif_glCopyBufferSubData, 0},
    {"glDisableVertexAttribArray_raw", 1, nif_glDisableVertexAttribArray, 0},
    {"glCreateQueries_raw", 2, nif_glCreateQueries, 0},
    {"glClearDepth_raw", 1, nif_glClearDepth, 0},
    {"glLinkProgram_raw", 1, nif_glLinkProgram, 0},
    {"glCompileShader_raw", 1, nif_glCompileShader, 0},
    {"glDetachShader_raw", 2, nif_glDetachShader, 0},
    {"glGetDoublev_raw", 2, nif_glGetDoublev, 0},
    {"glGetSamplerParameterfv_raw", 3, nif_glGetSamplerParameterfv, 0},
    {"glGetSamplerParameteriv_raw", 3, nif_glGetSamplerParameteriv, 0},
    {"glAttachShader_raw", 2, nif_glAttachShader, 0},
    {"glGetTexParameterIiv_raw", 3, nif_glGetTexParameterIiv, 0},
    {"glGetTexParameterIuiv_raw", 3, nif_glGetTexParameterIuiv, 0},
    {"glGenerateMipmap_raw", 1, nif_glGenerateMipmap, 0},
    {"glCreateVertexArrays_raw", 1, nif_glCreateVertexArrays, 0},
    {"glGetTextureParameterfv_raw", 3, nif_glGetTextureParameterfv, 0},
    {"glGetTextureParameteriv_raw", 3, nif_glGetTextureParameteriv, 0},
    {"glIsProgram_raw", 1, nif_glIsProgram, 0},
    {"glDisablei_raw", 2, nif_glDisablei, 0},
    {"glGetDoublei_v_raw", 3, nif_glGetDoublei_v, 0},
    {"glIsShader_raw", 1, nif_glIsShader, 0},
    {"glGenTextures_raw", 1, nif_glGenTextures, 0},
    {"glEnablei_raw", 2, nif_glEnablei, 0},
    {"glGenRenderbuffers_raw", 1, nif_glGenRenderbuffers, 0},
    {"glValidateProgram_raw", 1, nif_glValidateProgram, 0},
    {"glBindVertexBuffer_raw", 4, nif_glBindVertexBuffer, 0},
    {"glCopyTexImage2D_raw", 8, nif_glCopyTexImage2D, 0},
    {"glBindVertexArray_raw", 1, nif_glBindVertexArray, 0},
    {"glVertexAttribI1i_raw", 2, nif_glVertexAttribI1i, 0},
    {"glVertexAttribI1iv_raw", 2, nif_glVertexAttribI1iv, 0},
    {"glVertexAttribI1ui_raw", 2, nif_glVertexAttribI1ui, 0},
    {"glVertexAttribI1uiv_raw", 2, nif_glVertexAttribI1uiv, 0},
    {"glVertexAttribI2i_raw", 3, nif_glVertexAttribI2i, 0},
    {"glVertexAttribI2iv_raw", 2, nif_glVertexAttribI2iv, 0},
    {"glVertexAttribI2ui_raw", 3, nif_glVertexAttribI2ui, 0},
    {"glVertexAttribI2uiv_raw", 2, nif_glVertexAttribI2uiv, 0},
    {"glVertexAttribI3i_raw", 4, nif_glVertexAttribI3i, 0},
    {"glVertexAttribI3iv_raw", 2, nif_glVertexAttribI3iv, 0},
    {"glVertexAttribI3ui_raw", 4, nif_glVertexAttribI3ui, 0},
    {"glVertexAttribI3uiv_raw", 2, nif_glVertexAttribI3uiv, 0},
    {"glVertexAttribI4bv_raw", 2, nif_glVertexAttribI4bv, 0},
    {"glVertexAttribI4i_raw", 5, nif_glVertexAttribI4i, 0},
    {"glVertexAttribI4iv_raw", 2, nif_glVertexAttribI4iv, 0},
    {"glVertexAttribI4sv_raw", 2, nif_glVertexAttribI4sv, 0},
    {"glVertexAttribI4ubv_raw", 2, nif_glVertexAttribI4ubv, 0},
    {"glVertexAttribI4ui_raw", 5, nif_glVertexAttribI4ui, 0},
    {"glVertexAttribI4uiv_raw", 2, nif_glVertexAttribI4uiv, 0},
    {"glVertexAttribI4usv_raw", 2, nif_glVertexAttribI4usv, 0},
    {"glBlitFramebuffer_raw", 10, nif_glBlitFramebuffer, 0},
    {"glStencilMaskSeparate_raw", 2, nif_glStencilMaskSeparate, 0},
    {"glVertexAttribFormat_raw", 5, nif_glVertexAttribFormat, 0},
    {"glScissor_raw", 4, nif_glScissor, 0},
    {"glTexImage2D_raw", 9, nif_glTexImage2D, 0},
    {"glGetError_raw", 0, nif_glGetError, 0},
    {"glIsVertexArray_raw", 1, nif_glIsVertexArray, 0},
    {"glCreateTextures_raw", 2, nif_glCreateTextures, 0},
    {"glPointSize_raw", 1, nif_glPointSize, 0},
    {"glBindTexture_raw", 2, nif_glBindTexture, 0},
    {"glDeleteShader_raw", 1, nif_glDeleteShader, 0},
    {"glDepthRange_raw", 2, nif_glDepthRange, 0},
    {"glUniform1dv_raw", 3, nif_glUniform1dv, 0},
    {"glUniform1fv_raw", 3, nif_glUniform1fv, 0},
    {"glUniform1iv_raw", 3, nif_glUniform1iv, 0},
    {"glUniform1uiv_raw", 3, nif_glUniform1uiv, 0},
    {"glUniform2dv_raw", 3, nif_glUniform2dv, 0},
    {"glUniform2fv_raw", 3, nif_glUniform2fv, 0},
    {"glUniform2iv_raw", 3, nif_glUniform2iv, 0},
    {"glUniform2uiv_raw", 3, nif_glUniform2uiv, 0},
    {"glUniform3dv_raw", 3, nif_glUniform3dv, 0},
    {"glUniform3fv_raw", 3, nif_glUniform3fv, 0},
    {"glUniform3iv_raw", 3, nif_glUniform3iv, 0},
    {"glUniform3uiv_raw", 3, nif_glUniform3uiv, 0},
    {"glUniform4dv_raw", 3, nif_glUniform4dv, 0},
    {"glUniform4fv_raw", 3, nif_glUniform4fv, 0},
    {"glUniform4iv_raw", 3, nif_glUniform4iv, 0},
    {"glUniform4uiv_raw", 3, nif_glUniform4uiv, 0},
    {"glSamplerParameterf_raw", 3, nif_glSamplerParameterf, 0},
    {"glSamplerParameterfv_raw", 3, nif_glSamplerParameterfv, 0},
    {"glSamplerParameteri_raw", 3, nif_glSamplerParameteri, 0},
    {"glSamplerParameteriv_raw", 3, nif_glSamplerParameteriv, 0},
    {"glGetIntegeri_v_raw", 3, nif_glGetIntegeri_v, 0},
    {"glDrawBuffer_raw", 1, nif_glDrawBuffer, 0},
    {"glStencilFunc_raw", 3, nif_glStencilFunc, 0},
    {"glGenProgramPipelines_raw", 1, nif_glGenProgramPipelines, 0},
    {"glTexBuffer_raw", 3, nif_glTexBuffer, 0},
    {"glDrawArrays_raw", 3, nif_glDrawArrays, 0},
    {"glVertexAttribIFormat_raw", 4, nif_glVertexAttribIFormat, 0},
    {"glLineWidth_raw", 1, nif_glLineWidth, 0},
    {"glDepthMask_raw", 1, nif_glDepthMask, 0},
    {"glCopyTexSubImage3D_raw", 9, nif_glCopyTexSubImage3D, 0},
    {"glViewport_raw", 4, nif_glViewport, 0},
    {"glTexImage3D_raw", 10, nif_glTexImage3D, 0},
    {"glBeginConditionalRender_raw", 2, nif_glBeginConditionalRender, 0},
    {"glGetTexImage_raw", 5, nif_glGetTexImage, 0},
    {"glBindBuffer_raw", 2, nif_glBindBuffer, 0},
    {"glCopyTexSubImage1D_raw", 6, nif_glCopyTexSubImage1D, 0},
    {"glVertexBindingDivisor_raw", 2, nif_glVertexBindingDivisor, 0},
    {"glBlendFunci_raw", 3, nif_glBlendFunci, 0},
    {"glBindTextureUnit_raw", 2, nif_glBindTextureUnit, 0},
    {"glBufferData_raw", 4, nif_glBufferData, 0},
    {"glSampleCoverage_raw", 2, nif_glSampleCoverage, 0},
    {"glStencilOpSeparate_raw", 4, nif_glStencilOpSeparate, 0},
    {"glGetShaderiv_raw", 3, nif_glGetShaderiv, 0},
    {"glBlendFunc_raw", 2, nif_glBlendFunc, 0},
    {"glHint_raw", 2, nif_glHint, 0},
    {"glGetBooleanv_raw", 2, nif_glGetBooleanv, 0},
    {"glBeginTransformFeedback_raw", 1, nif_glBeginTransformFeedback, 0},
    {"glBlendColor_raw", 4, nif_glBlendColor, 0},
    {"glIsProgramPipeline_raw", 1, nif_glIsProgramPipeline, 0},
    {"glBeginQuery_raw", 2, nif_glBeginQuery, 0},
    {"glTexParameterIiv_raw", 3, nif_glTexParameterIiv, 0},
    {"glTexParameterIuiv_raw", 3, nif_glTexParameterIuiv, 0},
    {"glPixelStoref_raw", 2, nif_glPixelStoref, 0},
    {"glPixelStorei_raw", 2, nif_glPixelStorei, 0},
    {"glGetFloati_v_raw", 3, nif_glGetFloati_v, 0},
    {"glEndQuery_raw", 1, nif_glEndQuery, 0},
    {"glDeleteSamplers_raw", 2, nif_glDeleteSamplers, 0},
    {"glShaderSource_raw", 2, nif_glShaderSource, 0},
    {"glClear_raw", 1, nif_glClear, 0},
    {"glCopyTextureSubImage1D_raw", 6, nif_glCopyTextureSubImage1D, 0},
    {"glTexImage1D_raw", 8, nif_glTexImage1D, 0},
    {"glMinSampleShading_raw", 1, nif_glMinSampleShading, 0},
    {"glTexParameterf_raw", 3, nif_glTexParameterf, 0},
    {"glTexParameterfv_raw", 3, nif_glTexParameterfv, 0},
    {"glTexParameteri_raw", 3, nif_glTexParameteri, 0},
    {"glTexParameteriv_raw", 3, nif_glTexParameteriv, 0},
    {"glPrimitiveRestartIndex_raw", 1, nif_glPrimitiveRestartIndex, 0},
    {"glDeleteRenderbuffers_raw", 2, nif_glDeleteRenderbuffers, 0},
    {"glCopyTexSubImage2D_raw", 8, nif_glCopyTexSubImage2D, 0},
    {"glStencilFuncSeparate_raw", 4, nif_glStencilFuncSeparate, 0},
    {"glGetIntegerv_raw", 2, nif_glGetIntegerv, 0},
    {"glGenVertexArrays_raw", 1, nif_glGenVertexArrays, 0},
    {"glVertexArrayVertexBuffer_raw", 5, nif_glVertexArrayVertexBuffer, 0},
    {"glDepthFunc_raw", 1, nif_glDepthFunc, 0},
    {"glGenFramebuffers_raw", 1, nif_glGenFramebuffers, 0},
    {"glDeleteProgramPipelines_raw", 2, nif_glDeleteProgramPipelines, 0},
    {"glGetFloatv_raw", 2, nif_glGetFloatv, 0},
    {"glVertexAttrib1d_raw", 2, nif_glVertexAttrib1d, 0},
    {"glVertexAttrib1dv_raw", 2, nif_glVertexAttrib1dv, 0},
    {"glVertexAttrib1f_raw", 2, nif_glVertexAttrib1f, 0},
    {"glVertexAttrib1fv_raw", 2, nif_glVertexAttrib1fv, 0},
    {"glVertexAttrib1s_raw", 2, nif_glVertexAttrib1s, 0},
    {"glVertexAttrib1sv_raw", 2, nif_glVertexAttrib1sv, 0},
    {"glVertexAttrib2d_raw", 3, nif_glVertexAttrib2d, 0},
    {"glVertexAttrib2dv_raw", 2, nif_glVertexAttrib2dv, 0},
    {"glVertexAttrib2f_raw", 3, nif_glVertexAttrib2f, 0},
    {"glVertexAttrib2fv_raw", 2, nif_glVertexAttrib2fv, 0},
    {"glVertexAttrib2s_raw", 3, nif_glVertexAttrib2s, 0},
    {"glVertexAttrib2sv_raw", 2, nif_glVertexAttrib2sv, 0},
    {"glVertexAttrib3d_raw", 4, nif_glVertexAttrib3d, 0},
    {"glVertexAttrib3dv_raw", 2, nif_glVertexAttrib3dv, 0},
    {"glVertexAttrib3f_raw", 4, nif_glVertexAttrib3f, 0},
    {"glVertexAttrib3fv_raw", 2, nif_glVertexAttrib3fv, 0},
    {"glVertexAttrib3s_raw", 4, nif_glVertexAttrib3s, 0},
    {"glVertexAttrib3sv_raw", 2, nif_glVertexAttrib3sv, 0},
    {"glVertexAttrib4bv_raw", 2, nif_glVertexAttrib4bv, 0},
    {"glVertexAttrib4d_raw", 5, nif_glVertexAttrib4d, 0},
    {"glVertexAttrib4dv_raw", 2, nif_glVertexAttrib4dv, 0},
    {"glVertexAttrib4f_raw", 5, nif_glVertexAttrib4f, 0},
    {"glVertexAttrib4fv_raw", 2, nif_glVertexAttrib4fv, 0},
    {"glVertexAttrib4iv_raw", 2, nif_glVertexAttrib4iv, 0},
    {"glVertexAttrib4s_raw", 5, nif_glVertexAttrib4s, 0},
    {"glVertexAttrib4sv_raw", 2, nif_glVertexAttrib4sv, 0},
    {"glVertexAttrib4ubv_raw", 2, nif_glVertexAttrib4ubv, 0},
    {"glVertexAttrib4uiv_raw", 2, nif_glVertexAttrib4uiv, 0},
    {"glVertexAttrib4usv_raw", 2, nif_glVertexAttrib4usv, 0},
    {"glColorMask_raw", 4, nif_glColorMask, 0},
    {"glGetBufferSubData_raw", 3, nif_glGetBufferSubData, 0},
    {"glRenderbufferStorageMultisample_raw", 5, nif_glRenderbufferStorageMultisample, 0},
    {"glIsTexture_raw", 1, nif_glIsTexture, 0},
    {"glIsFramebuffer_raw", 1, nif_glIsFramebuffer, 0},
    {"glGenSamplers_raw", 1, nif_glGenSamplers, 0},
    {"glGenTransformFeedbacks_raw", 1, nif_glGenTransformFeedbacks, 0},
    {"glIsSampler_raw", 1, nif_glIsSampler, 0},
    {"glFrontFace_raw", 1, nif_glFrontFace, 0},
    {"glVertexArrayAttribFormat_raw", 6, nif_glVertexArrayAttribFormat, 0},
    {"glBlendEquation_raw", 1, nif_glBlendEquation, 0},
    {"glGetString_raw", 1, nif_glGetString, 0},
    {"glLogicOp_raw", 1, nif_glLogicOp, 0},
    {"glGetShaderInfoLog_raw", 2, nif_glGetShaderInfoLog, 0},
    {"glGenQueries_raw", 1, nif_glGenQueries, 0},
    {"glEnable_raw", 1, nif_glEnable, 0},
    {"glIsBuffer_raw", 1, nif_glIsBuffer, 0},
    {"glBlendFuncSeparate_raw", 4, nif_glBlendFuncSeparate, 0},
    {"glGetTexParameterfv_raw", 3, nif_glGetTexParameterfv, 0},
    {"glGetTexParameteriv_raw", 3, nif_glGetTexParameteriv, 0},
    {"glBindFramebuffer_raw", 2, nif_glBindFramebuffer, 0},
    {"glSamplerParameterIiv_raw", 3, nif_glSamplerParameterIiv, 0},
    {"glSamplerParameterIuiv_raw", 3, nif_glSamplerParameterIuiv, 0},
    {"glBindRenderbuffer_raw", 2, nif_glBindRenderbuffer, 0},
    {"glClearColor_raw", 4, nif_glClearColor, 0},
    {"glBlendEquationSeparatei_raw", 3, nif_glBlendEquationSeparatei, 0},
    {"glTextureParameterf_raw", 3, nif_glTextureParameterf, 0},
    {"glTextureParameterfv_raw", 3, nif_glTextureParameterfv, 0},
    {"glTextureParameteri_raw", 3, nif_glTextureParameteri, 0},
    {"glTextureParameteriv_raw", 3, nif_glTextureParameteriv, 0},
    {"glDeleteQueries_raw", 2, nif_glDeleteQueries, 0},
    {"glFramebufferTexture_raw", 4, nif_glFramebufferTexture, 0},
    {"glDeleteTextures_raw", 2, nif_glDeleteTextures, 0},
    {"glCreateRenderbuffers_raw", 1, nif_glCreateRenderbuffers, 0},
    {"glIsEnabled_raw", 1, nif_glIsEnabled, 0},
    {"glPolygonMode_raw", 2, nif_glPolygonMode, 0},
    {"glGetVertexAttribdv_raw", 3, nif_glGetVertexAttribdv, 0},
    {"glGetVertexAttribfv_raw", 3, nif_glGetVertexAttribfv, 0},
    {"glGetVertexAttribiv_raw", 3, nif_glGetVertexAttribiv, 0},
    {"glVertexArrayAttribLFormat_raw", 5, nif_glVertexArrayAttribLFormat, 0},
    {"glDeleteBuffers_raw", 2, nif_glDeleteBuffers, 0},
    {"glGenBuffers_raw", 1, nif_glGenBuffers, 0},
    {"glActiveTexture_raw", 1, nif_glActiveTexture, 0},
    {"glGetInteger64i_v_raw", 3, nif_glGetInteger64i_v, 0},
    {"glFinish_raw", 0, nif_glFinish, 0},
    {"glCopyTexImage1D_raw", 7, nif_glCopyTexImage1D, 0},
    {"glUniformMatrix2dv_raw", 4, nif_glUniformMatrix2dv, 0},
    {"glUniformMatrix2fv_raw", 4, nif_glUniformMatrix2fv, 0},
    {"glUniformMatrix2x3dv_raw", 4, nif_glUniformMatrix2x3dv, 0},
    {"glUniformMatrix2x3fv_raw", 4, nif_glUniformMatrix2x3fv, 0},
    {"glUniformMatrix2x4dv_raw", 4, nif_glUniformMatrix2x4dv, 0},
    {"glUniformMatrix2x4fv_raw", 4, nif_glUniformMatrix2x4fv, 0},
    {"glUniformMatrix3dv_raw", 4, nif_glUniformMatrix3dv, 0},
    {"glUniformMatrix3fv_raw", 4, nif_glUniformMatrix3fv, 0},
    {"glUniformMatrix3x2dv_raw", 4, nif_glUniformMatrix3x2dv, 0},
    {"glUniformMatrix3x2fv_raw", 4, nif_glUniformMatrix3x2fv, 0},
    {"glUniformMatrix3x4dv_raw", 4, nif_glUniformMatrix3x4dv, 0},
    {"glUniformMatrix3x4fv_raw", 4, nif_glUniformMatrix3x4fv, 0},
    {"glUniformMatrix4dv_raw", 4, nif_glUniformMatrix4dv, 0},
    {"glUniformMatrix4fv_raw", 4, nif_glUniformMatrix4fv, 0},
    {"glUniformMatrix4x2dv_raw", 4, nif_glUniformMatrix4x2dv, 0},
    {"glUniformMatrix4x2fv_raw", 4, nif_glUniformMatrix4x2fv, 0},
    {"glUniformMatrix4x3dv_raw", 4, nif_glUniformMatrix4x3dv, 0},
    {"glUniformMatrix4x3fv_raw", 4, nif_glUniformMatrix4x3fv, 0},
    {"glGetTextureParameterIiv_raw", 3, nif_glGetTextureParameterIiv, 0},
    {"glGetTextureParameterIuiv_raw", 3, nif_glGetTextureParameterIuiv, 0},
    {"glEndConditionalRender_raw", 0, nif_glEndConditionalRender, 0},
    {"glTexImage3DMultisample_raw", 7, nif_glTexImage3DMultisample, 0},
    {"glBlendEquationi_raw", 2, nif_glBlendEquationi, 0},
    {"glCreateProgram_raw", 0, nif_glCreateProgram, 0},
    {"glGenerateTextureMipmap_raw", 1, nif_glGenerateTextureMipmap, 0},
    {"glFramebufferTextureLayer_raw", 5, nif_glFramebufferTextureLayer, 0},
    {"glTexImage2DMultisample_raw", 6, nif_glTexImage2DMultisample, 0},
    {"glCullFace_raw", 1, nif_glCullFace, 0},
    {"glGetProgramiv_raw", 3, nif_glGetProgramiv, 0},
    {"glDeleteVertexArrays_raw", 2, nif_glDeleteVertexArrays, 0},
    {"glUseProgram_raw", 1, nif_glUseProgram, 0},
    {"glReadPixels_raw", 7, nif_glReadPixels, 0},
    {"glDeleteProgram_raw", 1, nif_glDeleteProgram, 0},
    {"glVertexAttribLFormat_raw", 4, nif_glVertexAttribLFormat, 0},
    {"glGetUniformLocation_raw", 2, nif_glGetUniformLocation, 0},
    {"glCopyTextureSubImage2D_raw", 8, nif_glCopyTextureSubImage2D, 0},
    {"glVertexArrayAttribIFormat_raw", 5, nif_glVertexArrayAttribIFormat, 0}
};

ERL_NIF_INIT(
    gl,
    nif_functions,
    nif_module_load,
    NULL,
    NULL,
    nif_module_unload
);
