%% This file is generated. Do not edit!
-module(gl).
-moduledoc """
OpenGL 4.6 binding.

It implements an idiomatic binding to the OpenGL 4.6 API.

> The API was minimally adjusted to be natural to work with in Erlang and
> Elixir. It also leverages the higher-level type system of the BEAM for better type
> checking and reduces the chances of errors when passing parameters to OpenGL
> functions.

XXX: Mention about `and` `or` and `xor` being reserved words in Erlang. and how
     suffix was added.

Most of the times, changes are minimal and intuitive. Therefore you can rely
on your intuition to use the API.

```erlang
{ok, VertexShader} = gl:create_shader(vertex_shader)
```

> Observe how the returned values are wrapped in the idiomatic `{ok, _}` form,
> and instead of expecting an integer (a constant), it uses an atom.

However, you also need to know some additional notes on the API mapping.

**Typing system**

The BEAM and C typing system are not the same. Whenever applicable, it follows
the following mapping.

| OpenGL | Binding |
|------- | ------- |
| `GLboolean` | `boolean()` |
| `GLbyte`, `GLshort`, `GLint`, `GLint64` | `integer()` |
| `GLubyte`, `GLushort`, `GLuint`, `GLuint64` | `non_neg_integer()` |
| `GLfloat` and `GLdouble` | `float()` |
| `GLenum` | `atom()` |
| `GLbitfield` | `[atom()]` |


XXX: Define what happens at runtime when size is not correct.

Instead of raw integer for OpenGL enums and bit fields, atoms are
used.

```erlang
gl:create_shader(vertex_shader).
```
```erlang
gl:clear([color_buffer_bit, depth_buffer_bit]).
```

> Notice that gl:get/x functions returns raw integers that may represent an
> OpenGL enum.

Additional functions to retrieve

- `enum_groups_/1` - Return a list of all OpenGL enum groups.
- `enums_/1` - Return the available values for a given OpenGL enum group.
- `enum_value_/1` - Return the OpenGL enum value for a given atom.
- `value_enums_/1` - Return the OpenGL enum value for a given atom.
- `value_enum_/2` - XXX

**Higher-level types**

Some OpenGL functions expect vectors and matrices as parameters. Instead of a
flat list of numbers, it uses the following higher-level types.

| OpenGL | Binding |
|------- | ------- |
| scalar | `scalar(float())` |
| vector1| `vector1(float())` |
| vector2| `vector2(float())` |
| vector3| `vector3(float())` |
| vector4| `vector4(float())` |
| matrix2 | `matrix2(float())` |
| matrix3 | `matrix3(float())` |
| matrix4 | `matrix4(float())` |
| matrix2x3 | `matrix2x3(float())` |
| matrix3x2 | `matrix3x2(float())` |
| matrix2x4 | `matrix2x4(float())` |
| matrix4x2 | `matrix4x2(float())` |
| matrix3x4 | `matrix3x4(float())` |
| matrix4x3 | `matrix4x3(float())` |

> We leverage the BEAM typing system to provide a more structured way to
> represent vectors and matrices. This allows for better type checking and
> reduces the chances of errors when passing parameters to OpenGL functions.

```erlang
gl:program_uniform(ui, Program, Location, {0.0, 1.0, 0.0, 1.0}).
```

Notice how the suffix becomes part of the blabla.

**Suffixed functions**

Many OpenGL functions have a suffix that indicates the type of the
parameter. In this binding, the suffix becomes part of the first parameter.

```c
yolo
```
```erlang
yolo
```

**Function signature**

OpenGL functions have in and out parameters. The following mapping rules was
followed.


- talk about ok | less
- talk about suffix function

**Helper macros**

To be written.
""".

-compile({nowarn_redefined_builtin_type, [byte/0, float/0]}).

% Low-level OpenGL types.
-export_type([byte/0]).
-export_type([ubyte/0]).
-export_type([short/0]).
-export_type([ushort/0]).
-export_type([int/0]).
-export_type([uint/0]).
-export_type([int64/0]).
-export_type([uint64/0]).
-export_type([float/0]).
-export_type([double/0]).

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
-export_type([clamp_color_mode_a_r_b/0]).
-export_type([front_face_direction/0]).
-export_type([sized_internal_format/0]).
-export_type([clamp_color_target_a_r_b/0]).
-export_type([vertex_attrib_property_a_r_b/0]).
-export_type([texture_unit/0]).
-export_type([blend_equation_mode/0]).
-export_type([internal_format/0]).
-export_type([shader_type/0]).
-export_type([vertex_attrib_pointer_type/0]).
-export_type([buffer_usage_a_r_b/0]).
-export_type([program_property_a_r_b/0]).
-export_type([copy_buffer_sub_data_target/0]).
-export_type([texture_target/0]).
-export_type([blending_factor/0]).
-export_type([sampler_parameter/0]).
-export_type([get_p_name/0]).
-export_type([query_target/0]).
-export_type([conditional_render_mode/0]).
-export_type([stencil_op/0]).
-export_type([sampler_parameter_f/0]).
-export_type([enable_cap/0]).
-export_type([buffer_target_a_r_b/0]).
-export_type([read_buffer_mode/0]).
-export_type([pixel_type/0]).
-export_type([hint_target/0]).
-export_type([triangle_face/0]).
-export_type([draw_buffer_mode/0]).
-export_type([primitive_type/0]).
-export_type([logic_op/0]).
-export_type([blit_framebuffer_filter/0]).
-export_type([framebuffer_attachment/0]).
-export_type([shader_parameter_name/0]).
-export_type([polygon_mode/0]).
-export_type([renderbuffer_target/0]).
-export_type([depth_function/0]).
-export_type([hint_mode/0]).
-export_type([stencil_function/0]).
-export_type([texture_parameter_name/0]).
-export_type([error_code/0]).
-export_type([pixel_store_parameter/0]).

% The OpenGL bitfield types.
-export_type([clear_buffer_mask/0]).

% Extra functions.
-export([enum_groups_/0]).
-export([enums_/1]).
-export([enum_value_/1]).
-export([value_enums_/1]).
-export([value_enum_/2]).


-export([glad_load_gl/0]).
-nifs([glad_load_gl/0]).

-export([disable/1]).
-export([blend_func_separate/5]).
-export([enable_vertex_attrib_array/1]).
-export([clear_stencil/1]).
-export([get_program_info_log/2]).
-export([get_program_pipeline_info_log/2]).
-export([get_boolean/3]).
-export([is_enabled/2]).
-export([create_buffers/1]).
-export([stencil_op/3]).
-export([is_renderbuffer/1]).
-export([flush/0]).
-export([is_query/1]).
-export([is_transform_feedback/1]).
-export([read_buffer/1]).
-export([uniform/3]).
-export([delete_transform_feedbacks/2]).
-export([create_shader/1]).
-export([get_uniform/4]).
-export([vertex_attrib_pointer/6]).
-export([texture_parameter_i/4]).
-export([get_integer64/2]).
-export([get_sampler_parameter_i/4]).
-export([draw_arrays_instanced/4]).
-export([buffer_sub_data/4]).
-export([delete_framebuffers/2]).
-export([polygon_offset/2]).
-export([end_transform_feedback/0]).
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
-export([get_sampler_parameter/4]).
-export([attach_shader/2]).
-export([get_tex_parameter_i/4]).
-export([generate_mipmap/1]).
-export([create_vertex_arrays/1]).
-export([get_texture_parameter/4]).
-export([is_program/1]).
-export([disable/2]).
-export([get_double/3]).
-export([is_shader/1]).
-export([gen_textures/1]).
-export([enable/2]).
-export([gen_renderbuffers/1]).
-export([validate_program/1]).
-export([copy_tex_image_2d/8]).
-export([bind_vertex_array/1]).
-export([vertex_attrib_i/3]).
-export([blit_framebuffer/10]).
-export([stencil_mask_separate/2]).
-export([scissor/4]).
-export([tex_image_2d/9]).
-export([get_error/0]).
-export([is_vertex_array/1]).
-export([create_textures/2]).
-export([point_size/1]).
-export([bind_texture/2]).
-export([delete_shader/1]).
-export([depth_range/2]).
-export([uniform/4]).
-export([sampler_parameter/4]).
-export([get_integer/3]).
-export([draw_buffer/1]).
-export([stencil_func/3]).
-export([gen_program_pipelines/1]).
-export([tex_buffer/3]).
-export([draw_arrays/3]).
-export([line_width/1]).
-export([depth_mask/1]).
-export([copy_tex_sub_image_3d/9]).
-export([viewport/4]).
-export([tex_image_3d/10]).
-export([begin_conditional_render/2]).
-export([get_tex_image/5]).
-export([bind_buffer/2]).
-export([copy_tex_sub_image_1d/6]).
-export([blend_func/3]).
-export([bind_texture_unit/2]).
-export([buffer_data/4]).
-export([sample_coverage/2]).
-export([stencil_op_separate/4]).
-export([get_shader/4]).
-export([blend_func/2]).
-export([hint/2]).
-export([get_boolean/2]).
-export([begin_transform_feedback/1]).
-export([blend_color/4]).
-export([is_program_pipeline/1]).
-export([begin_query/2]).
-export([tex_parameter_i/4]).
-export([pixel_store/3]).
-export([get_float/3]).
-export([end_query/1]).
-export([delete_samplers/2]).
-export([shader_source/2]).
-export([clear/1]).
-export([copy_texture_sub_image_1d/6]).
-export([tex_image_1d/8]).
-export([min_sample_shading/1]).
-export([tex_parameter/4]).
-export([primitive_restart_index/1]).
-export([delete_renderbuffers/2]).
-export([copy_tex_sub_image_2d/8]).
-export([stencil_func_separate/4]).
-export([get_integer/2]).
-export([gen_vertex_arrays/1]).
-export([depth_func/1]).
-export([gen_framebuffers/1]).
-export([delete_program_pipelines/2]).
-export([get_float/2]).
-export([vertex_attrib/3]).
-export([color_mask/4]).
-export([get_buffer_sub_data/3]).
-export([renderbuffer_storage_multisample/5]).
-export([is_texture/1]).
-export([is_framebuffer/1]).
-export([gen_samplers/1]).
-export([gen_transform_feedbacks/1]).
-export([is_sampler/1]).
-export([front_face/1]).
-export([blend_equation/1]).
-export([get_string/1]).
-export([logic_op/1]).
-export([get_shader_info_log/2]).
-export([gen_queries/1]).
-export([enable/1]).
-export([is_buffer/1]).
-export([blend_func_separate/4]).
-export([get_tex_parameter/4]).
-export([bind_framebuffer/2]).
-export([sampler_parameter_i/4]).
-export([bind_renderbuffer/2]).
-export([clear_color/4]).
-export([blend_equation_separate/3]).
-export([texture_parameter/4]).
-export([delete_queries/2]).
-export([framebuffer_texture/4]).
-export([delete_textures/2]).
-export([create_renderbuffers/1]).
-export([is_enabled/1]).
-export([polygon_mode/2]).
-export([get_vertex_attrib/4]).
-export([delete_buffers/2]).
-export([gen_buffers/1]).
-export([active_texture/1]).
-export([get_integer64/3]).
-export([finish/0]).
-export([copy_tex_image_1d/7]).
-export([uniform_matrix/5]).
-export([get_texture_parameter_i/4]).
-export([end_conditional_render/0]).
-export([tex_image_3d_multisample/7]).
-export([blend_equation/2]).
-export([create_program/0]).
-export([generate_texture_mipmap/1]).
-export([framebuffer_texture_layer/5]).
-export([tex_image_2d_multisample/6]).
-export([cull_face/1]).
-export([get_program/4]).
-export([delete_vertex_arrays/2]).
-export([use_program/1]).
-export([delete_program/1]).
-export([get_uniform_location/2]).
-export([copy_texture_sub_image_2d/8]).

-include("../include/gl.hrl").

-ifndef(DEBUG).
-define(CALL_RAW_FUNC(Func), 
    begin
    case Func of
        {} ->
            ok;
        {Arg__} ->
            {ok, Arg__};
        {Arg1__, Arg2__} ->
            {ok, Arg1__, Arg2__};
        {Arg1__, Arg2__, Arg3__} ->
            {ok, Arg1__, Arg2__, Arg3__}
    end
    end
).
-else.
-define(CALL_RAW_FUNC(Func), 
    begin
    Result__ = Func,
    case gl:get_error() of
        {ok, no_error} ->
            case Result__ of
                {} ->
                    ok;
                {Arg__} ->
                    {ok, Arg__};
                {Arg1__, Arg2__} ->
                    {ok, Arg1__, Arg2__};
                {Arg1__, Arg2__, Arg3__} ->
                    {ok, Arg1__, Arg2__, Arg3__}
            end;
        {ok, Code__} ->
            {error, Code__}
    end
    end
).
-endif.-doc "The OpenGL `byte` type.".
-type byte() :: integer().
-doc "The OpenGL `ubyte` type.".
-type ubyte() :: non_neg_integer().
-doc "The OpenGL `short` type.".
-type short() :: integer().
-doc "The OpenGL `ushort` type.".
-type ushort() :: non_neg_integer().
-doc "The OpenGL `int` type.".
-type int() :: integer().
-doc "The OpenGL `uint` type.".
-type uint() :: non_neg_integer().
-doc "The OpenGL `int64` type.".
-type int64() :: integer().
-doc "The OpenGL `uint64` type.".
-type uint64() :: non_neg_integer().
-doc "The OpenGL `float` type.".
-type float() :: erlang:float().
-doc "The OpenGL `double` type.".
-type double() :: erlang:float().

-doc "to be written.".
-type scalar(Type) :: Type.

-doc "A 1D vector.".
-type vector1(Type) :: {scalar(Type)}.
-doc "A 2D vector.".
-type vector2(Type) :: {scalar(Type), scalar(Type)}.
-doc "A 3D vector.".
-type vector3(Type) :: {scalar(Type), scalar(Type), scalar(Type)}.
-doc "A 4D vector.".
-type vector4(Type) :: {scalar(Type), scalar(Type), scalar(Type), scalar(Type)}.

-doc "A 2x2 matrix.".
-type matrix2(Type) :: {vector2(Type), vector2(Type)}.
-doc "A 3x3 matrix.".
-type matrix3(Type) :: {vector3(Type), vector3(Type), vector3(Type)}.
-doc "A 4x4 matrix.".
-type matrix4(Type) :: {vector4(Type), vector4(Type), vector4(Type), vector4(Type)}.

-doc "A 2x3 matrix.".
-type matrix2x3(Type) :: {vector2(Type), vector2(Type), vector2(Type)}.
-doc "A 3x2 matrix.".
-type matrix3x2(Type) :: {vector3(Type), vector3(Type)}.

-doc "A 2x4 matrix.".
-type matrix2x4(Type) :: {vector2(Type), vector2(Type), vector2(Type), vector2(Type)}.
-doc "A 4x2 matrix.".
-type matrix4x2(Type) :: {vector4(Type), vector4(Type)}.

-doc "A 3x4 matrix.".
-type matrix3x4(Type) :: {vector3(Type), vector3(Type), vector3(Type), vector3(Type)}.
-doc "A 4x3 matrix.".
-type matrix4x3(Type) :: {vector4(Type), vector4(Type), vector4(Type)}.

-doc "An OpenGL enum.".
-type enum() :: atom().
-doc "An OpenGL bit field.".
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
-doc "The OpenGL `vertex_attrib_property_a_r_b` enum.".
-type vertex_attrib_property_a_r_b() ::
    vertex_attrib_array_long |
    vertex_attrib_array_enabled |
    current_vertex_attrib |
    vertex_attrib_array_type |
    vertex_attrib_array_integer |
    vertex_attrib_array_divisor |
    vertex_attrib_array_normalized |
    vertex_attrib_array_stride |
    vertex_attrib_binding |
    vertex_attrib_array_buffer_binding |
    vertex_attrib_relative_offset |
    vertex_attrib_array_size
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
-doc "The OpenGL `blend_equation_mode` enum.".
-type blend_equation_mode() ::
    func_add |
    max |
    func_subtract |
    func_reverse_subtract |
    min
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
-doc "The OpenGL `sampler_parameter` enum.".
-type sampler_parameter() ::
    texture_wrap_t |
    texture_compare_mode |
    texture_mag_filter |
    texture_wrap_r |
    texture_wrap_s |
    texture_compare_func |
    texture_min_filter
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
-doc "The OpenGL `sampler_parameter_f` enum.".
-type sampler_parameter_f() ::
    texture_min_lod |
    texture_max_lod |
    texture_max_anisotropy |
    texture_border_color |
    texture_lod_bias
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
-doc "The OpenGL `hint_target` enum.".
-type hint_target() ::
    line_smooth_hint |
    polygon_smooth_hint |
    program_binary_retrievable_hint |
    texture_compression_hint |
    fragment_shader_derivative_hint
.
-doc "The OpenGL `triangle_face` enum.".
-type triangle_face() ::
    front |
    back |
    front_and_back
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
-doc "The OpenGL `logic_op` enum.".
-type logic_op() ::
    xor_ |
    and_ |
    noop |
    invert |
    nor |
    or_inverted |
    copy |
    and_inverted |
    nand |
    equiv |
    or_ |
    or_reverse |
    clear |
    copy_inverted |
    and_reverse |
    set
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
-doc "The OpenGL `texture_parameter_name` enum.".
-type texture_parameter_name() ::
    texture_swizzle_a |
    texture_min_lod |
    texture_swizzle_r |
    texture_wrap_t |
    texture_max_lod |
    depth_stencil_texture_mode |
    texture_compare_mode |
    texture_mag_filter |
    texture_max_anisotropy |
    texture_height |
    texture_base_level |
    texture_wrap_r |
    texture_border_color |
    texture_blue_size |
    texture_swizzle_b |
    texture_alpha_size |
    texture_green_size |
    texture_red_size |
    texture_internal_format |
    texture_max_level |
    texture_wrap_s |
    texture_swizzle_rgba |
    texture_compare_func |
    texture_min_filter |
    texture_swizzle_g |
    texture_lod_bias |
    texture_width
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
-doc "The OpenGL `pixel_store_parameter` enum.".
-type pixel_store_parameter() ::
    pack_skip_rows |
    unpack_lsb_first |
    pack_row_length |
    unpack_swap_bytes |
    pack_alignment |
    unpack_skip_images |
    unpack_image_height |
    unpack_skip_rows |
    unpack_skip_pixels |
    unpack_row_length |
    pack_skip_pixels |
    unpack_alignment |
    pack_swap_bytes |
    pack_skip_images |
    pack_lsb_first |
    pack_image_height
.

-doc "The OpenGL `clear_buffer_mask` bitfield.".
-type clear_buffer_mask() :: [
    depth_buffer_bit |
    color_buffer_bit |
    stencil_buffer_bit
].

-nifs([glDisable_raw/1]).
-nifs([glBlendFuncSeparatei_raw/5]).
-nifs([glEnableVertexAttribArray_raw/1]).
-nifs([glClearStencil_raw/1]).
-nifs([glGetProgramInfoLog_raw/2]).
-nifs([glGetProgramPipelineInfoLog_raw/2]).
-nifs([glGetBooleani_v_raw/3]).
-nifs([glIsEnabledi_raw/2]).
-nifs([glCreateBuffers_raw/1]).
-nifs([glStencilOp_raw/3]).
-nifs([glIsRenderbuffer_raw/1]).
-nifs([glFlush_raw/0]).
-nifs([glIsQuery_raw/1]).
-nifs([glIsTransformFeedback_raw/1]).
-nifs([glReadBuffer_raw/1]).
-nifs([glUniform1d_raw/2]).
-nifs([glUniform1f_raw/2]).
-nifs([glUniform1i_raw/2]).
-nifs([glUniform1ui_raw/2]).
-nifs([glUniform2d_raw/3]).
-nifs([glUniform2f_raw/3]).
-nifs([glUniform2i_raw/3]).
-nifs([glUniform2ui_raw/3]).
-nifs([glUniform3d_raw/4]).
-nifs([glUniform3f_raw/4]).
-nifs([glUniform3i_raw/4]).
-nifs([glUniform3ui_raw/4]).
-nifs([glUniform4d_raw/5]).
-nifs([glUniform4f_raw/5]).
-nifs([glUniform4i_raw/5]).
-nifs([glUniform4ui_raw/5]).
-nifs([glDeleteTransformFeedbacks_raw/2]).
-nifs([glCreateShader_raw/1]).
-nifs([glGetUniformdv_raw/3]).
-nifs([glGetUniformfv_raw/3]).
-nifs([glGetUniformiv_raw/3]).
-nifs([glGetUniformuiv_raw/3]).
-nifs([glVertexAttribPointer_raw/6]).
-nifs([glTextureParameterIiv_raw/3]).
-nifs([glTextureParameterIuiv_raw/3]).
-nifs([glGetInteger64v_raw/2]).
-nifs([glGetSamplerParameterIiv_raw/3]).
-nifs([glGetSamplerParameterIuiv_raw/3]).
-nifs([glDrawArraysInstanced_raw/4]).
-nifs([glBufferSubData_raw/4]).
-nifs([glDeleteFramebuffers_raw/2]).
-nifs([glPolygonOffset_raw/2]).
-nifs([glEndTransformFeedback_raw/0]).
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
-nifs([glGetSamplerParameterfv_raw/3]).
-nifs([glGetSamplerParameteriv_raw/3]).
-nifs([glAttachShader_raw/2]).
-nifs([glGetTexParameterIiv_raw/3]).
-nifs([glGetTexParameterIuiv_raw/3]).
-nifs([glGenerateMipmap_raw/1]).
-nifs([glCreateVertexArrays_raw/1]).
-nifs([glGetTextureParameterfv_raw/3]).
-nifs([glGetTextureParameteriv_raw/3]).
-nifs([glIsProgram_raw/1]).
-nifs([glDisablei_raw/2]).
-nifs([glGetDoublei_v_raw/3]).
-nifs([glIsShader_raw/1]).
-nifs([glGenTextures_raw/1]).
-nifs([glEnablei_raw/2]).
-nifs([glGenRenderbuffers_raw/1]).
-nifs([glValidateProgram_raw/1]).
-nifs([glCopyTexImage2D_raw/8]).
-nifs([glBindVertexArray_raw/1]).
-nifs([glVertexAttribI1i_raw/2]).
-nifs([glVertexAttribI1iv_raw/2]).
-nifs([glVertexAttribI1ui_raw/2]).
-nifs([glVertexAttribI1uiv_raw/2]).
-nifs([glVertexAttribI2i_raw/3]).
-nifs([glVertexAttribI2iv_raw/2]).
-nifs([glVertexAttribI2ui_raw/3]).
-nifs([glVertexAttribI2uiv_raw/2]).
-nifs([glVertexAttribI3i_raw/4]).
-nifs([glVertexAttribI3iv_raw/2]).
-nifs([glVertexAttribI3ui_raw/4]).
-nifs([glVertexAttribI3uiv_raw/2]).
-nifs([glVertexAttribI4bv_raw/2]).
-nifs([glVertexAttribI4i_raw/5]).
-nifs([glVertexAttribI4iv_raw/2]).
-nifs([glVertexAttribI4sv_raw/2]).
-nifs([glVertexAttribI4ubv_raw/2]).
-nifs([glVertexAttribI4ui_raw/5]).
-nifs([glVertexAttribI4uiv_raw/2]).
-nifs([glVertexAttribI4usv_raw/2]).
-nifs([glBlitFramebuffer_raw/10]).
-nifs([glStencilMaskSeparate_raw/2]).
-nifs([glScissor_raw/4]).
-nifs([glTexImage2D_raw/9]).
-nifs([glGetError_raw/0]).
-nifs([glIsVertexArray_raw/1]).
-nifs([glCreateTextures_raw/2]).
-nifs([glPointSize_raw/1]).
-nifs([glBindTexture_raw/2]).
-nifs([glDeleteShader_raw/1]).
-nifs([glDepthRange_raw/2]).
-nifs([glUniform1dv_raw/3]).
-nifs([glUniform1fv_raw/3]).
-nifs([glUniform1iv_raw/3]).
-nifs([glUniform1uiv_raw/3]).
-nifs([glUniform2dv_raw/3]).
-nifs([glUniform2fv_raw/3]).
-nifs([glUniform2iv_raw/3]).
-nifs([glUniform2uiv_raw/3]).
-nifs([glUniform3dv_raw/3]).
-nifs([glUniform3fv_raw/3]).
-nifs([glUniform3iv_raw/3]).
-nifs([glUniform3uiv_raw/3]).
-nifs([glUniform4dv_raw/3]).
-nifs([glUniform4fv_raw/3]).
-nifs([glUniform4iv_raw/3]).
-nifs([glUniform4uiv_raw/3]).
-nifs([glSamplerParameterf_raw/3]).
-nifs([glSamplerParameterfv_raw/3]).
-nifs([glSamplerParameteri_raw/3]).
-nifs([glSamplerParameteriv_raw/3]).
-nifs([glGetIntegeri_v_raw/3]).
-nifs([glDrawBuffer_raw/1]).
-nifs([glStencilFunc_raw/3]).
-nifs([glGenProgramPipelines_raw/1]).
-nifs([glTexBuffer_raw/3]).
-nifs([glDrawArrays_raw/3]).
-nifs([glLineWidth_raw/1]).
-nifs([glDepthMask_raw/1]).
-nifs([glCopyTexSubImage3D_raw/9]).
-nifs([glViewport_raw/4]).
-nifs([glTexImage3D_raw/10]).
-nifs([glBeginConditionalRender_raw/2]).
-nifs([glGetTexImage_raw/5]).
-nifs([glBindBuffer_raw/2]).
-nifs([glCopyTexSubImage1D_raw/6]).
-nifs([glBlendFunci_raw/3]).
-nifs([glBindTextureUnit_raw/2]).
-nifs([glBufferData_raw/4]).
-nifs([glSampleCoverage_raw/2]).
-nifs([glStencilOpSeparate_raw/4]).
-nifs([glGetShaderiv_raw/3]).
-nifs([glBlendFunc_raw/2]).
-nifs([glHint_raw/2]).
-nifs([glGetBooleanv_raw/2]).
-nifs([glBeginTransformFeedback_raw/1]).
-nifs([glBlendColor_raw/4]).
-nifs([glIsProgramPipeline_raw/1]).
-nifs([glBeginQuery_raw/2]).
-nifs([glTexParameterIiv_raw/3]).
-nifs([glTexParameterIuiv_raw/3]).
-nifs([glPixelStoref_raw/2]).
-nifs([glPixelStorei_raw/2]).
-nifs([glGetFloati_v_raw/3]).
-nifs([glEndQuery_raw/1]).
-nifs([glDeleteSamplers_raw/2]).
-nifs([glShaderSource_raw/2]).
-nifs([glClear_raw/1]).
-nifs([glCopyTextureSubImage1D_raw/6]).
-nifs([glTexImage1D_raw/8]).
-nifs([glMinSampleShading_raw/1]).
-nifs([glTexParameterf_raw/3]).
-nifs([glTexParameterfv_raw/3]).
-nifs([glTexParameteri_raw/3]).
-nifs([glTexParameteriv_raw/3]).
-nifs([glPrimitiveRestartIndex_raw/1]).
-nifs([glDeleteRenderbuffers_raw/2]).
-nifs([glCopyTexSubImage2D_raw/8]).
-nifs([glStencilFuncSeparate_raw/4]).
-nifs([glGetIntegerv_raw/2]).
-nifs([glGenVertexArrays_raw/1]).
-nifs([glDepthFunc_raw/1]).
-nifs([glGenFramebuffers_raw/1]).
-nifs([glDeleteProgramPipelines_raw/2]).
-nifs([glGetFloatv_raw/2]).
-nifs([glVertexAttrib1d_raw/2]).
-nifs([glVertexAttrib1dv_raw/2]).
-nifs([glVertexAttrib1f_raw/2]).
-nifs([glVertexAttrib1fv_raw/2]).
-nifs([glVertexAttrib1s_raw/2]).
-nifs([glVertexAttrib1sv_raw/2]).
-nifs([glVertexAttrib2d_raw/3]).
-nifs([glVertexAttrib2dv_raw/2]).
-nifs([glVertexAttrib2f_raw/3]).
-nifs([glVertexAttrib2fv_raw/2]).
-nifs([glVertexAttrib2s_raw/3]).
-nifs([glVertexAttrib2sv_raw/2]).
-nifs([glVertexAttrib3d_raw/4]).
-nifs([glVertexAttrib3dv_raw/2]).
-nifs([glVertexAttrib3f_raw/4]).
-nifs([glVertexAttrib3fv_raw/2]).
-nifs([glVertexAttrib3s_raw/4]).
-nifs([glVertexAttrib3sv_raw/2]).
-nifs([glVertexAttrib4bv_raw/2]).
-nifs([glVertexAttrib4d_raw/5]).
-nifs([glVertexAttrib4dv_raw/2]).
-nifs([glVertexAttrib4f_raw/5]).
-nifs([glVertexAttrib4fv_raw/2]).
-nifs([glVertexAttrib4iv_raw/2]).
-nifs([glVertexAttrib4s_raw/5]).
-nifs([glVertexAttrib4sv_raw/2]).
-nifs([glVertexAttrib4ubv_raw/2]).
-nifs([glVertexAttrib4uiv_raw/2]).
-nifs([glVertexAttrib4usv_raw/2]).
-nifs([glColorMask_raw/4]).
-nifs([glGetBufferSubData_raw/3]).
-nifs([glRenderbufferStorageMultisample_raw/5]).
-nifs([glIsTexture_raw/1]).
-nifs([glIsFramebuffer_raw/1]).
-nifs([glGenSamplers_raw/1]).
-nifs([glGenTransformFeedbacks_raw/1]).
-nifs([glIsSampler_raw/1]).
-nifs([glFrontFace_raw/1]).
-nifs([glBlendEquation_raw/1]).
-nifs([glGetString_raw/1]).
-nifs([glLogicOp_raw/1]).
-nifs([glGetShaderInfoLog_raw/2]).
-nifs([glGenQueries_raw/1]).
-nifs([glEnable_raw/1]).
-nifs([glIsBuffer_raw/1]).
-nifs([glBlendFuncSeparate_raw/4]).
-nifs([glGetTexParameterfv_raw/3]).
-nifs([glGetTexParameteriv_raw/3]).
-nifs([glBindFramebuffer_raw/2]).
-nifs([glSamplerParameterIiv_raw/3]).
-nifs([glSamplerParameterIuiv_raw/3]).
-nifs([glBindRenderbuffer_raw/2]).
-nifs([glClearColor_raw/4]).
-nifs([glBlendEquationSeparatei_raw/3]).
-nifs([glTextureParameterf_raw/3]).
-nifs([glTextureParameterfv_raw/3]).
-nifs([glTextureParameteri_raw/3]).
-nifs([glTextureParameteriv_raw/3]).
-nifs([glDeleteQueries_raw/2]).
-nifs([glFramebufferTexture_raw/4]).
-nifs([glDeleteTextures_raw/2]).
-nifs([glCreateRenderbuffers_raw/1]).
-nifs([glIsEnabled_raw/1]).
-nifs([glPolygonMode_raw/2]).
-nifs([glGetVertexAttribdv_raw/3]).
-nifs([glGetVertexAttribfv_raw/3]).
-nifs([glGetVertexAttribiv_raw/3]).
-nifs([glDeleteBuffers_raw/2]).
-nifs([glGenBuffers_raw/1]).
-nifs([glActiveTexture_raw/1]).
-nifs([glGetInteger64i_v_raw/3]).
-nifs([glFinish_raw/0]).
-nifs([glCopyTexImage1D_raw/7]).
-nifs([glUniformMatrix2dv_raw/4]).
-nifs([glUniformMatrix2fv_raw/4]).
-nifs([glUniformMatrix2x3dv_raw/4]).
-nifs([glUniformMatrix2x3fv_raw/4]).
-nifs([glUniformMatrix2x4dv_raw/4]).
-nifs([glUniformMatrix2x4fv_raw/4]).
-nifs([glUniformMatrix3dv_raw/4]).
-nifs([glUniformMatrix3fv_raw/4]).
-nifs([glUniformMatrix3x2dv_raw/4]).
-nifs([glUniformMatrix3x2fv_raw/4]).
-nifs([glUniformMatrix3x4dv_raw/4]).
-nifs([glUniformMatrix3x4fv_raw/4]).
-nifs([glUniformMatrix4dv_raw/4]).
-nifs([glUniformMatrix4fv_raw/4]).
-nifs([glUniformMatrix4x2dv_raw/4]).
-nifs([glUniformMatrix4x2fv_raw/4]).
-nifs([glUniformMatrix4x3dv_raw/4]).
-nifs([glUniformMatrix4x3fv_raw/4]).
-nifs([glGetTextureParameterIiv_raw/3]).
-nifs([glGetTextureParameterIuiv_raw/3]).
-nifs([glEndConditionalRender_raw/0]).
-nifs([glTexImage3DMultisample_raw/7]).
-nifs([glBlendEquationi_raw/2]).
-nifs([glCreateProgram_raw/0]).
-nifs([glGenerateTextureMipmap_raw/1]).
-nifs([glFramebufferTextureLayer_raw/5]).
-nifs([glTexImage2DMultisample_raw/6]).
-nifs([glCullFace_raw/1]).
-nifs([glGetProgramiv_raw/3]).
-nifs([glDeleteVertexArrays_raw/2]).
-nifs([glUseProgram_raw/1]).
-nifs([glDeleteProgram_raw/1]).
-nifs([glGetUniformLocation_raw/2]).
-nifs([glCopyTextureSubImage2D_raw/8]).

-on_load(init_nif/0).

init_nif() ->
    % The OpenGL NIF module depends on the EGL NIF module, so we compute its
    % location first, then pass it to the OpenGL NIF loader.
    EGLPrivDir = code:priv_dir(egl),
    EGLNifLocation = filename:join(EGLPrivDir, "beam-egl") ++ ".so",
    LibName = "beam-gl",
    SoName = case code:priv_dir(?MODULE) of
        {error, bad_name} ->
            case filelib:is_dir(filename:join(["..", priv])) of
                true ->
                    filename:join(["..", priv, LibName]);
                _ ->
                    filename:join([priv, LibName])
            end;
        Dir ->
            filename:join(Dir, LibName)
    end,
    erlang:load_nif(SoName, EGLNifLocation).

-spec glad_load_gl() -> boolean().
glad_load_gl() ->
    erlang:nif_error(nif_library_not_loaded).

-doc """
Return all OpenGL enum groups.

It returns the name of all OpenGL enum groups. The names can be used as an
input for the `enums_/1` function.

```erlang
[
    front_face_direction,
    % ...
    triangle_face
] = gl:enum_groups_().
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enum_groups_() -> [atom()].
enum_groups_() ->
    ?GL_ENUM_GROUPS_.

-doc """
Return the OpenGL enums of a given group.

It returns the list of OpenGL enum names of a given group.

```erlang
[
    front_and_back,
    front,
    back
] = gl:enums_(triangle_face).
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enums_(atom()) -> [atom()].
enums_(EnumGroup) ->
    maps:get(EnumGroup, ?GL_ENUMS_).

-doc """
Return the raw value of an OpenGL enum.

It returns the raw integer value of an OpenGL enum.

```erlang
16#0408 = gl:enum_value_(front_and_back).
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enum_value_(atom()) -> non_neg_integer().
enum_value_(Enum) ->
    maps:get(Enum, ?GL_ENUM_VALUE_).

-doc """
Return the possible OpenGL enums of a given raw value.

It returns the possible OpenGL enums of a given raw value.

```erlang
[foo, bar] = gl:value_enums_(16#0409).
```

> It's useful when an OpenGL function returns a raw value instead of an OpenGL
> enum such as with the `gl:get/x` function.

Also see the `?GL_VALUE_ENUMS_` macro.
""".
-spec value_enums_(non_neg_integer()) -> [atom()].
value_enums_(Value) ->
    maps:get(Value, ?GL_VALUE_ENUMS_).

-doc """
Return the OpenGL enum of a given raw value and the enum group.

It returns the OpenGL enum of a given raw value and the enum group.

```erlang
bar = gl:value_enums_(16#0409, foo).
```

> It's useful when an OpenGL function returns a raw value instead of an OpenGL
> enum such as with the `gl:get/x` function.

Also see the `?GL_VALUE_ENUM_` macro.
""".
-spec value_enum_(non_neg_integer(), atom()) -> atom().
value_enum_(Value, EnumGroup) ->
    maps:get({Value, EnumGroup}, ?GL_VALUE_ENUM_).

-doc """
XXX: To be written.

It implements the `glDisable` function

```
gl:disable(line_smooth).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisable) for more information.
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

    ?CALL_RAW_FUNC(glDisable_raw(NewCap)).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparatei` function

```
gl:blend_func_separate(BufferIndex, src_alpha, one_minus_src_alpha, one, zero).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFuncSeparatei) for more information.
""".
-spec blend_func_separate(
    Buffer :: gl:uint(),
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

    ?CALL_RAW_FUNC(glBlendFuncSeparatei_raw(Buffer, NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha)).

-doc """
Enable or disable a generic vertex attribute array.

It implements the `glEnableVertexAttribArray` function

```
ok = gl:enable_vertex_attrib_array(AttribPos).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnableVertexAttribArray) for more information.
""".
-spec enable_vertex_attrib_array(Index :: gl:uint()) -> ok | {error, atom()}.
enable_vertex_attrib_array(Index) ->

    ?CALL_RAW_FUNC(glEnableVertexAttribArray_raw(Index)).

-doc """
Specify the clear value for the stencil buffer.

It implements the `glClearStencil` function

```
gl:clear_stencil(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClearStencil) for more information.
""".
-spec clear_stencil(Value :: gl:int()) -> ok | {error, atom()}.
clear_stencil(Value) ->

    ?CALL_RAW_FUNC(glClearStencil_raw(Value)).

-doc """
Returns the information log for a program object.

It implements the `glGetProgramInfoLog` function

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetProgramInfoLog) for more information.
""".
-spec get_program_info_log(
    Program :: program(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_info_log(Program, InfoLog) ->

    ?CALL_RAW_FUNC(glGetProgramInfoLog_raw(Program, InfoLog)).

-doc """
Retrieve the info log string from a program pipeline object.

It implements the `glGetProgramPipelineInfoLog` function

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetProgramPipelineInfoLog) for more information.
""".
-spec get_program_pipeline_info_log(
    Pipeline :: program_pipeline(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_pipeline_info_log(Pipeline, InfoLog) ->

    ?CALL_RAW_FUNC(glGetProgramPipelineInfoLog_raw(Pipeline, InfoLog)).

-doc """
XXX: To be written.

It implements the `glGetBooleani_v` function

```
{ok, [true, true, true, true]} = gl:get_boolean(color_writemask, 1, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetBooleani_v) for more information.
""".
-spec get_boolean(
    Target :: get_p_name(),
    Index :: gl:uint(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Target, Index, Data) ->
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

    ?CALL_RAW_FUNC(glGetBooleani_v_raw(NewTarget, Index, Data)).

-doc """
XXX: To be written.

It implements the `glIsEnabledi` function

```
{ok, true} = gl:is_enabled(blend, 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsEnabledi) for more information.
""".
-spec is_enabled(
    Capability :: enable_cap(),
    Index :: gl:uint()
) -> {ok, IsEnabled :: boolean()} | {error, atom()}.
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

    ?CALL_RAW_FUNC(glIsEnabledi_raw(NewCapability, Index)).

-doc """
Create buffer objects.

It implements the `glCreateBuffers` function

```
{ok, [Buffer]} = gl:create_buffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateBuffers) for more information.
""".
-spec create_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
create_buffers(N) ->

    ?CALL_RAW_FUNC(glCreateBuffers_raw(N)).

-doc """
Set front and back stencil test actions.

It implements the `glStencilOp` function

```
gl:stencil_op(incr, invert, zero).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilOp) for more information.
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

    ?CALL_RAW_FUNC(glStencilOp_raw(NewFail, NewZFail, NewZPass)).

-doc """
Determine if a name corresponds to a renderbuffer object.

It implements the `glIsRenderbuffer` function

```
gl:is_renderbuffer(Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsRenderbuffer) for more information.
""".
-spec is_renderbuffer(Buffer :: render_buffer()) -> {ok, IsBuffer :: boolean()} | {error, atom()}.
is_renderbuffer(Buffer) ->

    ?CALL_RAW_FUNC(glIsRenderbuffer_raw(Buffer)).

-doc """
Force execution of GL commands in finite time.

It implements the `glFlush` function

```
gl:flush().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFlush) for more information.
""".
-spec flush() -> ok | {error, atom()}.
flush() ->

    ?CALL_RAW_FUNC(glFlush_raw()).

-doc """
Determine if a name corresponds to a query object.

It implements the `glIsQuery` function

```
gl:is_query(Query).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsQuery) for more information.
""".
-spec is_query(Query :: query()) -> {ok, IsQuery :: boolean()} | {error, atom()}.
is_query(Query) ->

    ?CALL_RAW_FUNC(glIsQuery_raw(Query)).

-doc """
Determine if a name corresponds to a transform feedback object.

It implements the `glIsTransformFeedback` function

```
gl:is_transform_feedback(Feedback).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsTransformFeedback) for more information.
""".
-spec is_transform_feedback(Feedback :: transform_feedback()) -> {ok, IsFeedback :: boolean()} | {error, atom()}.
is_transform_feedback(Feedback) ->

    ?CALL_RAW_FUNC(glIsTransformFeedback_raw(Feedback)).

-doc """
Select a color buffer source for pixels.

It implements the `glReadBuffer` function

```
gl:read_buffer(front_and_back).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glReadBuffer) for more information.
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

    ?CALL_RAW_FUNC(glReadBuffer_raw(NewSource)).

-type uniform_value() ::
    vector1(float()) |
    vector2(float()) |
    vector3(float()) |
    vector4(float()) |
    vector1(int()) |
    vector2(int()) |
    vector3(int()) |
    vector4(int()) |
    vector1(uint()) |
    vector2(uint()) |
    vector3(uint()) |
    vector4(uint()) |
    vector1(double()) |
    vector2(double()) |
    vector3(double()) |
    vector4(double())
.

-doc """
To be written.

It implements the following OpenGL commands:

- `glUniform4d`
- `glUniform3d`
- `glUniform2d`
- `glUniform1d`
- `glUniform4ui`
- `glUniform3ui`
- `glUniform2ui`
- `glUniform1ui`
- `glUniform4i`
- `glUniform3i`
- `glUniform2i`
- `glUniform1i`
- `glUniform4f`
- `glUniform3f`
- `glUniform2f`
- `glUniform1f`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glUniform) for more information.
""".
-spec uniform(
    Type :: f | i | d | ui,
    Location :: gl:int(),
    Value :: uniform_value()
) -> ok | {error, atom()}.
uniform(d, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4d_raw(Location, V1, V2, V3, V4));
uniform(d, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3d_raw(Location, V1, V2, V3));
uniform(d, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2d_raw(Location, V1, V2));
uniform(d, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Value),

    ?CALL_RAW_FUNC(glUniform1d_raw(Location, V1));
uniform(ui, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4ui_raw(Location, V1, V2, V3, V4));
uniform(ui, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3ui_raw(Location, V1, V2, V3));
uniform(ui, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2ui_raw(Location, V1, V2));
uniform(ui, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Value),

    ?CALL_RAW_FUNC(glUniform1ui_raw(Location, V1));
uniform(i, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4i_raw(Location, V1, V2, V3, V4));
uniform(i, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3i_raw(Location, V1, V2, V3));
uniform(i, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2i_raw(Location, V1, V2));
uniform(i, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Value),

    ?CALL_RAW_FUNC(glUniform1i_raw(Location, V1));
uniform(f, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4f_raw(Location, V1, V2, V3, V4));
uniform(f, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3f_raw(Location, V1, V2, V3));
uniform(f, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2f_raw(Location, V1, V2));
uniform(f, Location, Value) when 
    is_tuple(Value) andalso
    tuple_size(Value) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Value),

    ?CALL_RAW_FUNC(glUniform1f_raw(Location, V1)).

-doc """
Delete transform feedback objects.

It implements the `glDeleteTransformFeedbacks` function

```
gl:delete_transform_feedbacks(1, Feedbacks).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteTransformFeedbacks) for more information.
""".
-spec delete_transform_feedbacks(
    N :: integer(),
    Feedbacks :: [transform_feedback()]
) -> ok | {error, atom()}.
delete_transform_feedbacks(N, Feedbacks) ->
    NewFeedbacks = << <<ID:32/native>> || ID <- Feedbacks >>,
    ?CALL_RAW_FUNC(glDeleteTransformFeedbacks_raw(N, NewFeedbacks)).

-doc """
Creates a shader object.

It implements the `glCreateShader` function

```
{ok, Shader} = gl:create_shader(vertex_shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateShader) for more information.
""".
-spec create_shader(Type :: shader_type()) -> {ok, Shader :: shader()} | {error, atom()}.
create_shader(Type) ->
    NewType = case Type of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        compute_shader -> ?GL_COMPUTE_SHADER;
        tess_evaluation_shader -> ?GL_TESS_EVALUATION_SHADER;
        geometry_shader -> ?GL_GEOMETRY_SHADER;
        tess_control_shader -> ?GL_TESS_CONTROL_SHADER
    end,

    ?CALL_RAW_FUNC(glCreateShader_raw(NewType)).

-type get_uniform_value() ::
    [float()] |
    [int()] |
    [uint()] |
    [double()]
.

-doc """
Returns the value of a uniform variable.

It implements the following OpenGL commands:

- `glGetUniformdv`
- `glGetUniformuiv`
- `glGetUniformiv`
- `glGetUniformfv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetUniform) for more information.
""".
-spec get_uniform(
    Type :: f | i | d | ui,
    Program :: program(),
    Location :: gl:int(),
    N :: pos_integer()
) -> {ok, Params :: [gl_x]} | {error, atom()}.
get_uniform(d, Program, Location, N) ->

    ?CALL_RAW_FUNC(glGetUniformdv_raw(Program, Location, N));
get_uniform(ui, Program, Location, N) ->

    ?CALL_RAW_FUNC(glGetUniformuiv_raw(Program, Location, N));
get_uniform(i, Program, Location, N) ->

    ?CALL_RAW_FUNC(glGetUniformiv_raw(Program, Location, N));
get_uniform(f, Program, Location, N) ->

    ?CALL_RAW_FUNC(glGetUniformfv_raw(Program, Location, N)).

-doc """
Define an array of generic vertex attribute data.

It implements the `glVertexAttribPointer` function

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribPointer) for more information.
""".
-spec vertex_attrib_pointer(
    Index :: gl:uint(),
    Size :: gl:int(),
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

    ?CALL_RAW_FUNC(glVertexAttribPointer_raw(Index, Size, NewType, Normalized, Stride, Pointer)).

-type texture_parameter_i_value() ::
    [int()] |
    [uint()]
.

-doc """
Set texture parameters.

It implements the following OpenGL commands:

- `glTextureParameterIuiv`
- `glTextureParameterIiv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureParameterI) for more information.
""".
-spec texture_parameter_i(
    Type :: i | ui,
    Texture :: texture(),
    ParamName :: texture_parameter_name(),
    Param :: texture_parameter_i_value()
) -> ok | {error, atom()}.
texture_parameter_i(ui, Texture, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glTextureParameterIuiv_raw(Texture, NewParamName, Param));
texture_parameter_i(i, Texture, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glTextureParameterIiv_raw(Texture, NewParamName, Param)).

-doc """
XXX: To be written.

It implements the `glGetInteger64v` function

```
{ok, [X, Y, W, H]} = gl:get_integer64(viewport, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetInteger64v) for more information.
""".
-spec get_integer64(
    PName :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer64(PName, Data) ->
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

    ?CALL_RAW_FUNC(glGetInteger64v_raw(NewPName, Data)).

-type get_sampler_parameter_i_value() ::
    [int()] |
    [uint()]
.

-doc """
Return sampler parameter values.

It implements the following OpenGL commands:

- `glGetSamplerParameterIuiv`
- `glGetSamplerParameterIiv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetSamplerParameterI) for more information.
""".
-spec get_sampler_parameter_i(
    Type :: i | ui,
    Sampler :: sampler(),
    ParamName :: sampler_parameter(),
    N :: pos_integer()
) -> {ok, Param :: [gl_x]} | {error, atom()}.
get_sampler_parameter_i(ui, Sampler, ParamName, N) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glGetSamplerParameterIuiv_raw(Sampler, NewParamName, N));
get_sampler_parameter_i(i, Sampler, ParamName, N) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glGetSamplerParameterIiv_raw(Sampler, NewParamName, N)).

-doc """
Draw multiple instances of a range of elements.

It implements the `glDrawArraysInstanced` function

```
gl:draw_arrays_instanced(triangles, 0, VertexCount, IntsanceCount).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawArraysInstanced) for more information.
""".
-spec draw_arrays_instanced(
    Mode :: primitive_type(),
    First :: gl:int(),
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

    ?CALL_RAW_FUNC(glDrawArraysInstanced_raw(NewMode, First, Count, InstanceCount)).

-doc """
Updates a subset of a buffer object's data store.

It implements the `glBufferSubData` function

```
ok = gl:buffer_sub_data(array_buffer, Offset, size(Data), Data),
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBufferSubData) for more information.
""".
-spec buffer_sub_data(
    Target :: buffer_target_a_r_b(),
    Offset :: integer(),
    Size :: integer(),
    Data :: undefined | binary()
) -> ok | {error, atom()}.
buffer_sub_data(Target, Offset, Size, Data) ->
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

    ?CALL_RAW_FUNC(glBufferSubData_raw(NewTarget, Offset, Size, Data)).

-doc """
Delete framebuffer objects.

It implements the `glDeleteFramebuffers` function

```
gl:delete_framebuffers(1, Buffers).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteFramebuffers) for more information.
""".
-spec delete_framebuffers(
    N :: integer(),
    Buffers :: [frame_buffer()]
) -> ok | {error, atom()}.
delete_framebuffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    ?CALL_RAW_FUNC(glDeleteFramebuffers_raw(N, NewBuffers)).

-doc """
Set the scale and units used to calculate depth values.

It implements the `glPolygonOffset` function

```
gl:polygon_offset(1.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPolygonOffset) for more information.
""".
-spec polygon_offset(
    Factor :: gl:float(),
    Units :: gl:float()
) -> ok | {error, atom()}.
polygon_offset(Factor, Units) ->

    ?CALL_RAW_FUNC(glPolygonOffset_raw(Factor, Units)).

-doc """
XXX: To be written.

It implements the `glEndTransformFeedback` function

```
gl:end_transform_feedback().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndTransformFeedback) for more information.
""".
-spec end_transform_feedback() -> ok | {error, atom()}.
end_transform_feedback() ->

    ?CALL_RAW_FUNC(glEndTransformFeedback_raw()).

-doc """
Control the front and back writing of individual bits in the stencil planes.

It implements the `glStencilMask` function

```
gl:stencil_mask(16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilMask) for more information.
""".
-spec stencil_mask(Mask :: gl:uint()) -> ok | {error, atom()}.
stencil_mask(Mask) ->

    ?CALL_RAW_FUNC(glStencilMask_raw(Mask)).

-doc """
Specify whether data read via.

It implements the `glClampColor` function

```
gl:clamp_color(clamp_read_color, false).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClampColor) for more information.
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

    ?CALL_RAW_FUNC(glClampColor_raw(NewTarget, NewClamp)).

-doc """
Copy all or part of the data store of a buffer object to the data store of another buffer object.

It implements the `glCopyBufferSubData` function

```
gl:copy_buffer_sub_data(
  copy_read_buffer,
  copy_write_buffer,
  SrcOffset,
  DstOffset,
  Size
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyBufferSubData) for more information.
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

    ?CALL_RAW_FUNC(glCopyBufferSubData_raw(NewReadTarget, NewWriteTarget, ReadOffset, WriteOffset, Size)).

-doc """
XXX: To be written.

It implements the `glDisableVertexAttribArray` function

```
ok = gl:foobar().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisableVertexAttribArray) for more information.
""".
-spec disable_vertex_attrib_array(Index :: gl:uint()) -> ok | {error, atom()}.
disable_vertex_attrib_array(Index) ->

    ?CALL_RAW_FUNC(glDisableVertexAttribArray_raw(Index)).

-doc """
Create query objects.

It implements the `glCreateQueries` function

```
{ok, [Query]} = gl:create_queries(primitives_generated, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateQueries) for more information.
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

    ?CALL_RAW_FUNC(glCreateQueries_raw(NewTarget, N)).

-doc """
Specify the clear value for the depth buffer.

It implements the `glClearDepth` function

```
gl:clear_depth(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClearDepth) for more information.
""".
-spec clear_depth(Depth :: gl:double()) -> ok | {error, atom()}.
clear_depth(Depth) ->

    ?CALL_RAW_FUNC(glClearDepth_raw(Depth)).

-doc """
Links a program object.

It implements the `glLinkProgram` function

```
ok = gl:link_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glLinkProgram) for more information.
""".
-spec link_program(Program :: program()) -> ok | {error, atom()}.
link_program(Program) ->

    ?CALL_RAW_FUNC(glLinkProgram_raw(Program)).

-doc """
Compiles a shader object.

It implements the `glCompileShader` function

```
ok = gl:compile_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCompileShader) for more information.
""".
-spec compile_shader(Shader :: shader()) -> ok | {error, atom()}.
compile_shader(Shader) ->

    ?CALL_RAW_FUNC(glCompileShader_raw(Shader)).

-doc """
Detaches a shader object from a program object to which it is attached.

It implements the `glDetachShader` function

```
ok = gl:detach_shader(Program, Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDetachShader) for more information.
""".
-spec detach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
detach_shader(Program, Shader) ->

    ?CALL_RAW_FUNC(glDetachShader_raw(Program, Shader)).

-doc """
XXX: To be written.

It implements the `glGetDoublev` function

```
{ok, [X, Y, W, H]} = gl:get_double(viewport, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetDoublev) for more information.
""".
-spec get_double(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [gl:double()]} | {error, atom()}.
get_double(Name, Data) ->
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

    ?CALL_RAW_FUNC(glGetDoublev_raw(NewName, Data)).

-type get_sampler_parameter_value() ::
    [int()] |
    [float()]
.

-doc """
Return sampler parameter values.

It implements the following OpenGL commands:

- `glGetSamplerParameterfv`
- `glGetSamplerParameteriv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetSamplerParameter) for more information.
""".
-spec get_sampler_parameter(
    Type :: f | i,
    Sampler :: sampler(),
    ParamName :: sampler_parameter_f(),
    N :: pos_integer()
) -> {ok, Param :: [gl_x]} | {error, atom()}.
get_sampler_parameter(f, Sampler, ParamName, N) ->
    NewParamName = case ParamName of
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD
    end,

    ?CALL_RAW_FUNC(glGetSamplerParameterfv_raw(Sampler, NewParamName, N));
get_sampler_parameter(i, Sampler, ParamName, N) ->
    NewParamName = case ParamName of
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD
    end,

    ?CALL_RAW_FUNC(glGetSamplerParameteriv_raw(Sampler, NewParamName, N)).

-doc """
Attaches a shader object to a program object.

It implements the `glAttachShader` function

```
ok = gl:attach_shader(Program, Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glAttachShader) for more information.
""".
-spec attach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
attach_shader(Program, Shader) ->

    ?CALL_RAW_FUNC(glAttachShader_raw(Program, Shader)).

-type get_tex_parameter_i_value() ::
    [int()] |
    [uint()]
.

-doc """
Return texture parameter values.

It implements the following OpenGL commands:

- `glGetTexParameterIuiv`
- `glGetTexParameterIiv`

```
{ok, [?GL_COMPARE_REF_TO_TEXTURE]} = gl:get_tex_parameter_i(i, texture_2d, texture_compare_mode, 1).
{ok, [?GL_STENCIL_INDEX]} = gl:get_tex_parameter_i(ui, texture_2d, depth_stencil_texture_mode, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTexParameterI) for more information.
""".
-spec get_tex_parameter_i(
    Type :: i | ui,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    N :: pos_integer()
) -> {ok, Param :: [gl_x]} | {error, atom()}.
get_tex_parameter_i(ui, Target, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glGetTexParameterIuiv_raw(NewTarget, NewParamName, N));
get_tex_parameter_i(i, Target, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glGetTexParameterIiv_raw(NewTarget, NewParamName, N)).

-doc """
Generate mipmaps for a specified texture object.

It implements the `glGenerateMipmap` function

```
gl:generate_mipmap(texture_2d).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenerateMipmap) for more information.
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

    ?CALL_RAW_FUNC(glGenerateMipmap_raw(NewTarget)).

-doc """
Create vertex array objects.

It implements the `glCreateVertexArrays` function

```
{ok, [Array]} = gl:create_vertex_arrays(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateVertexArrays) for more information.
""".
-spec create_vertex_arrays(N :: pos_integer()) -> {ok, Arrays :: [vertex_array()]} | {error, atom()}.
create_vertex_arrays(N) ->

    ?CALL_RAW_FUNC(glCreateVertexArrays_raw(N)).

-type get_texture_parameter_value() ::
    [float()] |
    [int()]
.

-doc """
undefined

It implements the following OpenGL commands:

- `glGetTextureParameteriv`
- `glGetTextureParameterfv`

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTextureParameter) for more information.
""".
-spec get_texture_parameter(
    Type :: f | i,
    Texture :: texture(),
    ParamName :: texture_parameter_name(),
    N :: pos_integer()
) -> {ok, Param :: [gl_x]} | {error, atom()}.
get_texture_parameter(i, Texture, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glGetTextureParameteriv_raw(Texture, NewParamName, N));
get_texture_parameter(f, Texture, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glGetTextureParameterfv_raw(Texture, NewParamName, N)).

-doc """
Determines if a name corresponds to a program object.

It implements the `glIsProgram` function

```
gl:is_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsProgram) for more information.
""".
-spec is_program(Program :: program()) -> {ok, IsProgram :: boolean()} | {error, atom()}.
is_program(Program) ->

    ?CALL_RAW_FUNC(glIsProgram_raw(Program)).

-doc """
XXX: To be written.

It implements the `glDisablei` function

```
ok = gl:disable(blend, 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDisablei) for more information.
""".
-spec disable(
    Capability :: enable_cap(),
    Index :: gl:uint()
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

    ?CALL_RAW_FUNC(glDisablei_raw(NewCapability, Index)).

-doc """
XXX: To be written.

It implements the `glGetDoublei_v` function

```
{ok, [R, G, B, A]} = gl:get_double(blend_color, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetDoublei_v) for more information.
""".
-spec get_double(
    Target :: get_p_name(),
    Index :: gl:uint(),
    N :: pos_integer()
) -> {ok, Data :: [gl:double()]} | {error, atom()}.
get_double(Target, Index, Data) ->
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

    ?CALL_RAW_FUNC(glGetDoublei_v_raw(NewTarget, Index, Data)).

-doc """
Determines if a name corresponds to a shader object.

It implements the `glIsShader` function

```
{ok, true} = gl:is_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsShader) for more information.
""".
-spec is_shader(Shader :: shader()) -> {ok, IsShader :: boolean()} | {error, atom()}.
is_shader(Shader) ->

    ?CALL_RAW_FUNC(glIsShader_raw(Shader)).

-doc """
Generate texture names.

It implements the `glGenTextures` function

```
{ok, [Texture]} = gl:gen_textures(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenTextures) for more information.
""".
-spec gen_textures(N :: pos_integer()) -> {ok, Textures :: [texture()]} | {error, atom()}.
gen_textures(N) ->

    ?CALL_RAW_FUNC(glGenTextures_raw(N)).

-doc """
XXX: To be written.

It implements the `glEnablei` function

```
ok = gl:enable(blend, 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnablei) for more information.
""".
-spec enable(
    Capability :: enable_cap(),
    Index :: gl:uint()
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

    ?CALL_RAW_FUNC(glEnablei_raw(NewCapability, Index)).

-doc """
Generate renderbuffer object names.

It implements the `glGenRenderbuffers` function

```
{ok, [Buffer]} = gl:gen_renderbuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenRenderbuffers) for more information.
""".
-spec gen_renderbuffers(N :: pos_integer()) -> {ok, Buffers :: [render_buffer()]} | {error, atom()}.
gen_renderbuffers(N) ->

    ?CALL_RAW_FUNC(glGenRenderbuffers_raw(N)).

-doc """
Validates a program object.

It implements the `glValidateProgram` function

```
ok = gl:validate_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glValidateProgram) for more information.
""".
-spec validate_program(Program :: program()) -> ok | {error, atom()}.
validate_program(Program) ->

    ?CALL_RAW_FUNC(glValidateProgram_raw(Program)).

-doc """
Copy pixels into a 2D texture image.

It implements the `glCopyTexImage2D` function

```
gl:copy_tex_image_2d(
  texture_2d,
  0,
  rgba,
  0, 0,
  512, 512,
  0
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexImage2D) for more information.
""".
-spec copy_tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: integer(),
    Height :: integer(),
    Border :: gl:int()
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

    ?CALL_RAW_FUNC(glCopyTexImage2D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Height, Border)).

-doc """
Bind a vertex array object.

It implements the `glBindVertexArray` function

```
gl:bind_vertex_array(Array).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindVertexArray) for more information.
""".
-spec bind_vertex_array(Array :: vertex_array()) -> ok | {error, atom()}.
bind_vertex_array(Array) ->

    ?CALL_RAW_FUNC(glBindVertexArray_raw(Array)).

-type vertex_attrib_i_value() ::
    vector1(int()) |
    vector2(int()) |
    vector3(int()) |
    vector4(int()) |
    vector1(uint()) |
    vector2(uint()) |
    vector3(uint()) |
    vector4(uint()) |
    [vector1(int())] |
    [vector2(int())] |
    [vector3(int())] |
    [vector4(int())] |
    [vector1(uint())] |
    [vector2(uint())] |
    [vector3(uint())] |
    [vector4(uint())] |
    [vector4(byte())] |
    [vector4(short())] |
    [vector4(ubyte())] |
    [vector4(ushort())]
.

-doc """
Return a generic vertex attribute parameter.

It implements the following OpenGL commands:

- `glVertexAttribI4usv`
- `glVertexAttribI4ubv`
- `glVertexAttribI4sv`
- `glVertexAttribI4bv`
- `glVertexAttribI4uiv`
- `glVertexAttribI3uiv`
- `glVertexAttribI2uiv`
- `glVertexAttribI1uiv`
- `glVertexAttribI4iv`
- `glVertexAttribI3iv`
- `glVertexAttribI2iv`
- `glVertexAttribI1iv`
- `glVertexAttribI4ui`
- `glVertexAttribI3ui`
- `glVertexAttribI2ui`
- `glVertexAttribI1ui`
- `glVertexAttribI4i`
- `glVertexAttribI3i`
- `glVertexAttribI2i`
- `glVertexAttribI1i`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttribI) for more information.
""".
-spec vertex_attrib_i(
    Type :: i | ui | s | b | ub | us,
    Index :: gl:uint(),
    Values :: vertex_attrib_i_value()
) -> ok | {error, atom()}.
vertex_attrib_i(us, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI4usv_raw(Index, NewValues));
vertex_attrib_i(ub, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI4ubv_raw(Index, NewValues));
vertex_attrib_i(s, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI4sv_raw(Index, NewValues));
vertex_attrib_i(b, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI4bv_raw(Index, NewValues));
vertex_attrib_i(ui, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI4uiv_raw(Index, NewValues));
vertex_attrib_i(ui, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 3 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI3uiv_raw(Index, NewValues));
vertex_attrib_i(ui, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 2 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI2uiv_raw(Index, NewValues));
vertex_attrib_i(ui, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 1 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI1uiv_raw(Index, NewValues));
vertex_attrib_i(i, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI4iv_raw(Index, NewValues));
vertex_attrib_i(i, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 3 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI3iv_raw(Index, NewValues));
vertex_attrib_i(i, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 2 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI2iv_raw(Index, NewValues));
vertex_attrib_i(i, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 1 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttribI1iv_raw(Index, NewValues));
vertex_attrib_i(ui, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttribI4ui_raw(Index, V1, V2, V3, V4));
vertex_attrib_i(ui, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttribI3ui_raw(Index, V1, V2, V3));
vertex_attrib_i(ui, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttribI2ui_raw(Index, V1, V2));
vertex_attrib_i(ui, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Values),

    ?CALL_RAW_FUNC(glVertexAttribI1ui_raw(Index, V1));
vertex_attrib_i(i, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttribI4i_raw(Index, V1, V2, V3, V4));
vertex_attrib_i(i, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttribI3i_raw(Index, V1, V2, V3));
vertex_attrib_i(i, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttribI2i_raw(Index, V1, V2));
vertex_attrib_i(i, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Values),

    ?CALL_RAW_FUNC(glVertexAttribI1i_raw(Index, V1)).

-doc """
Copy a block of pixels from one framebuffer object to another.

It implements the `glBlitFramebuffer` function

```
gl:blit_framebuffer(
  0, 0, 
  SrcWidth, SrcHeight, 
  0, 0, 
  DstWidth, DstHeight, 
  [color_buffer_bit], 
  linear
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlitFramebuffer) for more information.
""".
-spec blit_framebuffer(
    SrcX0 :: gl:int(),
    SrcY0 :: gl:int(),
    SrcX1 :: gl:int(),
    SrcY1 :: gl:int(),
    DstX0 :: gl:int(),
    DstY0 :: gl:int(),
    DstX1 :: gl:int(),
    DstY1 :: gl:int(),
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
    ?CALL_RAW_FUNC(glBlitFramebuffer_raw(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, NewMask, NewFilter)).

-doc """
Control the front and/or back writing of individual bits in the stencil planes.

It implements the `glStencilMaskSeparate` function

```
gl:stencil_mask_separate(front, 16#0F).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilMaskSeparate) for more information.
""".
-spec stencil_mask_separate(
    Face :: triangle_face(),
    Mask :: gl:uint()
) -> ok | {error, atom()}.
stencil_mask_separate(Face, Mask) ->
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glStencilMaskSeparate_raw(NewFace, Mask)).

-doc """
Define the scissor box.

It implements the `glScissor` function

```
gl:scissor(0, 0, 800, 600).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glScissor) for more information.
""".
-spec scissor(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
scissor(X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glScissor_raw(X, Y, Width, Height)).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage2D` function

```
Pixels = [255,0,0, 0,255,0, 0,0,255, 255,255,255].
ok = gl:tex_image_2d(
    texture_2d, 0, rgb,
    2, 2, 0,
    rgb, unsigned_byte,
    <<<<Pixel:8/little-signed-integer>> || Pixel <- Pixels>>
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage2D) for more information.
""".
-spec tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Border :: gl:int(),
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

    ?CALL_RAW_FUNC(glTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, NewFormat, NewType, Pixels)).

-doc """
Return error information.

It implements the `glGetError` function

```
{ok, out_of_memory} = gl:get_error().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetError) for more information.
""".
-spec get_error() -> {ok, Code :: error_code()} | {error, atom()}.
get_error() ->

    ?CALL_RAW_FUNC(glGetError_raw()).

-doc """
Determine if a name corresponds to a vertex array object.

It implements the `glIsVertexArray` function

```
gl:is_vertex_array(Array).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsVertexArray) for more information.
""".
-spec is_vertex_array(Array :: vertex_array()) -> {ok, IsArray :: boolean()} | {error, atom()}.
is_vertex_array(Array) ->

    ?CALL_RAW_FUNC(glIsVertexArray_raw(Array)).

-doc """
Create texture objects.

It implements the `glCreateTextures` function

```
{ok, [Texture]} = gl:create_textures(texture_2d, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateTextures) for more information.
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

    ?CALL_RAW_FUNC(glCreateTextures_raw(NewTarget, N)).

-doc """
Specify the diameter of rasterized points.

It implements the `glPointSize` function

```
gl:point_size(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPointSize) for more information.
""".
-spec point_size(Size :: gl:float()) -> ok | {error, atom()}.
point_size(Size) ->

    ?CALL_RAW_FUNC(glPointSize_raw(Size)).

-doc """
Bind a named texture to a texturing target.

It implements the `glBindTexture` function

```
gl:bind_texture(texture_2d, Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindTexture) for more information.
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

    ?CALL_RAW_FUNC(glBindTexture_raw(NewTarget, Texture)).

-doc """
Deletes a shader object.

It implements the `glDeleteShader` function

```
gl:delete_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteShader) for more information.
""".
-spec delete_shader(Shader :: shader()) -> ok | {error, atom()}.
delete_shader(Shader) ->

    ?CALL_RAW_FUNC(glDeleteShader_raw(Shader)).

-doc """
Specify mapping of depth values from normalized device coordinates to window coordinates.

It implements the `glDepthRange` function

```
gl:depth_range(0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthRange) for more information.
""".
-spec depth_range(
    Near :: gl:double(),
    Far :: gl:double()
) -> ok | {error, atom()}.
depth_range(Near, Far) ->

    ?CALL_RAW_FUNC(glDepthRange_raw(Near, Far)).

-type uniform_value() ::
    [vector1(float())] |
    [vector2(float())] |
    [vector3(float())] |
    [vector4(float())] |
    [vector1(int())] |
    [vector2(int())] |
    [vector3(int())] |
    [vector4(int())] |
    [vector1(uint())] |
    [vector2(uint())] |
    [vector3(uint())] |
    [vector4(uint())] |
    [vector1(double())] |
    [vector2(double())] |
    [vector3(double())] |
    [vector4(double())]
.

-doc """
To be written.

It implements the following OpenGL commands:

- `glUniform4dv`
- `glUniform3dv`
- `glUniform2dv`
- `glUniform1dv`
- `glUniform4uiv`
- `glUniform3uiv`
- `glUniform2uiv`
- `glUniform1uiv`
- `glUniform4iv`
- `glUniform3iv`
- `glUniform2iv`
- `glUniform1iv`
- `glUniform4fv`
- `glUniform3fv`
- `glUniform2fv`
- `glUniform1fv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glUniform_v) for more information.
""".
-spec uniform(
    Type :: f | i | d | ui,
    Location :: gl:int(),
    Count :: integer(),
    Value :: uniform_value()
) -> ok | {error, atom()}.
uniform(d, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform4dv_raw(Location, Count, NewValue));
uniform(d, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform3dv_raw(Location, Count, NewValue));
uniform(d, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform2dv_raw(Location, Count, NewValue));
uniform(d, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 1 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform1dv_raw(Location, Count, NewValue));
uniform(ui, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform4uiv_raw(Location, Count, NewValue));
uniform(ui, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform3uiv_raw(Location, Count, NewValue));
uniform(ui, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform2uiv_raw(Location, Count, NewValue));
uniform(ui, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 1 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform1uiv_raw(Location, Count, NewValue));
uniform(i, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform4iv_raw(Location, Count, NewValue));
uniform(i, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform3iv_raw(Location, Count, NewValue));
uniform(i, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform2iv_raw(Location, Count, NewValue));
uniform(i, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 1 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform1iv_raw(Location, Count, NewValue));
uniform(f, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform4fv_raw(Location, Count, NewValue));
uniform(f, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform3fv_raw(Location, Count, NewValue));
uniform(f, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform2fv_raw(Location, Count, NewValue));
uniform(f, Location, Count, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 1 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniform1fv_raw(Location, Count, NewValue)).

-type sampler_parameter_value() ::
    int() |
    [int()] |
    float() |
    [float()]
.

-doc """
Set sampler parameters.

It implements the following OpenGL commands:

- `glSamplerParameterfv`
- `glSamplerParameterf`
- `glSamplerParameteriv`
- `glSamplerParameteri`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glSamplerParameter) for more information.
""".
-spec sampler_parameter(
    Type :: f | i,
    Sampler :: sampler(),
    ParamName :: sampler_parameter_f(),
    Param :: sampler_parameter_value()
) -> ok | {error, atom()}.
sampler_parameter(f, Sampler, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD
    end,

    ?CALL_RAW_FUNC(glSamplerParameterfv_raw(Sampler, NewParamName, Param));
sampler_parameter(f, Sampler, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD
    end,

    ?CALL_RAW_FUNC(glSamplerParameterf_raw(Sampler, NewParamName, Param));
sampler_parameter(i, Sampler, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD
    end,

    ?CALL_RAW_FUNC(glSamplerParameteriv_raw(Sampler, NewParamName, Param));
sampler_parameter(i, Sampler, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD
    end,

    ?CALL_RAW_FUNC(glSamplerParameteri_raw(Sampler, NewParamName, Param)).

-doc """
XXX: To be written.

It implements the `glGetIntegeri_v` function

```
{ok, [R, G, B, A]} = gl:get_integer(blend_color, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetIntegeri_v) for more information.
""".
-spec get_integer(
    Target :: get_p_name(),
    Index :: gl:uint(),
    N :: pos_integer()
) -> {ok, Data :: [gl:int()]} | {error, atom()}.
get_integer(Target, Index, Data) ->
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

    ?CALL_RAW_FUNC(glGetIntegeri_v_raw(NewTarget, Index, Data)).

-doc """
Specify which color buffers are to be drawn into.

It implements the `glDrawBuffer` function

```
gl:draw_buffer(front_right).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawBuffer) for more information.
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

    ?CALL_RAW_FUNC(glDrawBuffer_raw(NewBuffer)).

-doc """
Set front and back function and reference value for stencil testing.

It implements the `glStencilFunc` function

```
gl:stencil_func(always, 1, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilFunc) for more information.
""".
-spec stencil_func(
    Function :: stencil_function(),
    Ref :: gl:int(),
    Mask :: gl:uint()
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

    ?CALL_RAW_FUNC(glStencilFunc_raw(NewFunction, Ref, Mask)).

-doc """
Reserve program pipeline object names.

It implements the `glGenProgramPipelines` function

```
{ok, [Pipeline]} = gl:gen_program_pipelines(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenProgramPipelines) for more information.
""".
-spec gen_program_pipelines(N :: pos_integer()) -> {ok, Pipelines :: [program_pipeline()]} | {error, atom()}.
gen_program_pipelines(N) ->

    ?CALL_RAW_FUNC(glGenProgramPipelines_raw(N)).

-doc """
Attach a buffer object's data store to a buffer texture object.

It implements the `glTexBuffer` function

```
gl:tex_buffer(texture_buffer, r32f, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexBuffer) for more information.
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

    ?CALL_RAW_FUNC(glTexBuffer_raw(NewTarget, NewInternalFormat, Buffer)).

-doc """
Render primitives from array data.

It implements the `glDrawArrays` function

```
gl:draw_arrays(triangles, 0, 3).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDrawArrays) for more information.
""".
-spec draw_arrays(
    Mode :: primitive_type(),
    First :: gl:int(),
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

    ?CALL_RAW_FUNC(glDrawArrays_raw(NewMode, First, Count)).

-doc """
Specify the width of rasterized lines.

It implements the `glLineWidth` function

```
gl:line_width(3.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glLineWidth) for more information.
""".
-spec line_width(Width :: gl:float()) -> ok | {error, atom()}.
line_width(Width) ->

    ?CALL_RAW_FUNC(glLineWidth_raw(Width)).

-doc """
Enable or disable writing into the depth buffer.

It implements the `glDepthMask` function

```
gl:depth_mask(true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthMask) for more information.
""".
-spec depth_mask(Flag :: boolean()) -> ok | {error, atom()}.
depth_mask(Flag) ->

    ?CALL_RAW_FUNC(glDepthMask_raw(Flag)).

-doc """
Copy a three-dimensional texture subimage.

It implements the `glCopyTexSubImage3D` function

```
  gl:copy_tex_sub_image_3d(
    texture_2d_array,
    0,
    32, 32, 8,
    0, 0,
    256, 256
  ).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexSubImage3D) for more information.
""".
-spec copy_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    OffsetZ :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
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

    ?CALL_RAW_FUNC(glCopyTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height)).

-doc """
Set the viewport.

It implements the `glViewport` function

```
gl:viewport(0, 0, 640, 480).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glViewport) for more information.
""".
-spec viewport(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
viewport(X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glViewport_raw(X, Y, Width, Height)).

-doc """
Specify a three-dimensional texture image.

It implements the `glTexImage3D` function

```
Pixels = [
  255,0,0,  0,255,0,
  0,255,0,  255,0,0,
  0,0,255,  255,255,0,
  255,255,0, 0,0,255
].
ok = gl:tex_image_3d(
    texture_3d, 0, rgb,
    2, 2, 2, 0,
    rgb, unsigned_byte,
    <<<<Pixel:8/little-signed-integer>> || Pixel <- Pixels>>
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage3D) for more information.
""".
-spec tex_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Height :: integer(),
    Depth :: integer(),
    Border :: gl:int(),
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

    ?CALL_RAW_FUNC(glTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, NewFormat, NewType, Pixels)).

-doc """
Start conditional rendering.

It implements the `glBeginConditionalRender` function

```
gl:begin_conditional_render(Query, query_wait).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginConditionalRender) for more information.
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

    ?CALL_RAW_FUNC(glBeginConditionalRender_raw(Query, NewMode)).

-doc """
Return a texture image.

It implements the `glGetTexImage` function

```
{ok, Pixels} = gl:get_tex_image(
    texture_2d, 0,
    rgb, unsigned_byte,
    Width * Height * 1
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTexImage) for more information.
""".
-spec get_tex_image(
    Target :: texture_target(),
    Level :: gl:int(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    PixelsSize :: non_neg_integer()
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

    ?CALL_RAW_FUNC(glGetTexImage_raw(NewTarget, Level, NewFormat, NewType, PixelsSize)).

-doc """
Bind a named buffer object.

It implements the `glBindBuffer` function

```
gl:bind_buffer(array_buffer, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindBuffer) for more information.
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

    ?CALL_RAW_FUNC(glBindBuffer_raw(NewTarget, Buffer)).

-doc """
Copy a one-dimensional texture subimage.

It implements the `glCopyTexSubImage1D` function

```
gl:copy_tex_sub_image_1d(
  texture_1d,
  0,
  64,
  0,
  256
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexSubImage1D) for more information.
""".
-spec copy_tex_sub_image_1d(
    Target :: texture_target(),
    Level :: gl:int(),
    Offset :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
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

    ?CALL_RAW_FUNC(glCopyTexSubImage1D_raw(NewTarget, Level, Offset, X, Y, Width)).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunci` function

```
gl:blend_func(BufferIndex, src_alpha, one_minus_src_alpha).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFunci) for more information.
""".
-spec blend_func(
    Buffer :: gl:uint(),
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

    ?CALL_RAW_FUNC(glBlendFunci_raw(Buffer, NewSourceFactor, NewDestinationFactor)).

-doc """
Bind an existing texture object to the specified texture unit.

It implements the `glBindTextureUnit` function

```
gl:bind_texture_unit().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindTextureUnit) for more information.
""".
-spec bind_texture_unit(
    Unit :: gl:uint(),
    Texture :: texture()
) -> ok | {error, atom()}.
bind_texture_unit(Unit, Texture) ->

    ?CALL_RAW_FUNC(glBindTextureUnit_raw(Unit, Texture)).

-doc """
Creates and initializes a buffer object's data
    store.

It implements the `glBufferData` function

```
ok = gl:buffer_data(array_buffer, size(Data), Data, static_draw).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBufferData) for more information.
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

    ?CALL_RAW_FUNC(glBufferData_raw(NewTarget, Size, Data, NewUsage)).

-doc """
Specify multisample coverage parameters.

It implements the `glSampleCoverage` function

```
gl:sample_coverage(0.5, false).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glSampleCoverage) for more information.
""".
-spec sample_coverage(
    Value :: gl:float(),
    Invert :: boolean()
) -> ok | {error, atom()}.
sample_coverage(Value, Invert) ->

    ?CALL_RAW_FUNC(glSampleCoverage_raw(Value, Invert)).

-doc """
Set front and/or back stencil test actions.

It implements the `glStencilOpSeparate` function

```
gl:stencil_op_separate(front, keep, incr, replace).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilOpSeparate) for more information.
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

    ?CALL_RAW_FUNC(glStencilOpSeparate_raw(NewFace, NewStencilFail, NewDepthPassFail, NewDepthPassPass)).

-doc """
Returns a parameter from a shader object.

It implements the following OpenGL commands:

- `glGetShaderiv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetShader) for more information.
""".
-spec get_shader(
    Type :: i,
    Shader :: shader(),
    PName :: shader_parameter_name(),
    N :: pos_integer()
) -> {ok, Params :: [gl_x]} | {error, atom()}.
get_shader(i, Shader, PName, N) ->
    NewPName = case PName of
        shader_type -> ?GL_SHADER_TYPE;
        delete_status -> ?GL_DELETE_STATUS;
        compile_status -> ?GL_COMPILE_STATUS;
        shader_source_length -> ?GL_SHADER_SOURCE_LENGTH;
        info_log_length -> ?GL_INFO_LOG_LENGTH
    end,

    ?CALL_RAW_FUNC(glGetShaderiv_raw(Shader, NewPName, N)).

-doc """
Specify pixel arithmetic.

It implements the `glBlendFunc` function

```
gl:blend_func(constant_color, one_minus_constant_color).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFunc) for more information.
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

    ?CALL_RAW_FUNC(glBlendFunc_raw(NewSourceFactor, NewDestinationFactor)).

-doc """
Specify implementation-specific hints.

It implements the `glHint` function

```
gl:hint(texture_compression_hint, nicest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glHint) for more information.
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

    ?CALL_RAW_FUNC(glHint_raw(NewTarget, NewMode)).

-doc """
XXX: To be written.

It implements the `glGetBooleanv` function

```
{ok, [true]} = gl:get_boolean(blend, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetBooleanv) for more information.
""".
-spec get_boolean(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [boolean()]} | {error, atom()}.
get_boolean(Name, Data) ->
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

    ?CALL_RAW_FUNC(glGetBooleanv_raw(NewName, Data)).

-doc """
Start transform feedback operation.

It implements the `glBeginTransformFeedback` function

```
gl:begin_transform_feedback(points).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginTransformFeedback) for more information.
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

    ?CALL_RAW_FUNC(glBeginTransformFeedback_raw(NewPrimitiveMode)).

-doc """
Set the blend color.

It implements the `glBlendColor` function

```
gl:blend_color(1.0, 0.0, 0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendColor) for more information.
""".
-spec blend_color(
    Red :: gl:float(),
    Green :: gl:float(),
    Blue :: gl:float(),
    Alpha :: gl:float()
) -> ok | {error, atom()}.
blend_color(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glBlendColor_raw(Red, Green, Blue, Alpha)).

-doc """
Determine if a name corresponds to a program pipeline object.

It implements the `glIsProgramPipeline` function

```
gl:is_program_pipeline(Pipeline).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsProgramPipeline) for more information.
""".
-spec is_program_pipeline(Pipeline :: program_pipeline()) -> {ok, IsPipeline :: boolean()} | {error, atom()}.
is_program_pipeline(Pipeline) ->

    ?CALL_RAW_FUNC(glIsProgramPipeline_raw(Pipeline)).

-doc """
Delimit the boundaries of a query object.

It implements the `glBeginQuery` function

```
gl:begin_query(time_elapsed, Query).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBeginQuery) for more information.
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

    ?CALL_RAW_FUNC(glBeginQuery_raw(NewTarget, Query)).

-type tex_parameter_i_value() ::
    [int()] |
    [uint()]
.

-doc """
Set texture parameters.

It implements the following OpenGL commands:

- `glTexParameterIuiv`
- `glTexParameterIiv`

```
gl:tex_parameter_i(i, texture_2d, texture_compare_mode, [?GL_COMPARE_REF_TO_TEXTURE]).
gl:tex_parameter_i(ui, texture_2d, depth_stencil_texture_mode, [?GL_STENCIL_INDEX]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexParameterI) for more information.
""".
-spec tex_parameter_i(
    Type :: i | ui,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    Param :: tex_parameter_i_value()
) -> ok | {error, atom()}.
tex_parameter_i(ui, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glTexParameterIuiv_raw(NewTarget, NewParamName, Param));
tex_parameter_i(i, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glTexParameterIiv_raw(NewTarget, NewParamName, Param)).

-type pixel_store_value() ::
    float() |
    int()
.

-doc """
Set pixel storage modes.

It implements the following OpenGL commands:

- `glPixelStorei`
- `glPixelStoref`

```
gl:pixel_store(pack_alignment, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPixelStore) for more information.
""".
-spec pixel_store(
    Type :: f | i,
    Name :: pixel_store_parameter(),
    Param :: pixel_store_value()
) -> ok | {error, atom()}.
pixel_store(i, Name, Param) ->
    NewName = case Name of
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS
    end,

    ?CALL_RAW_FUNC(glPixelStorei_raw(NewName, Param));
pixel_store(f, Name, Param) ->
    NewName = case Name of
        pack_image_height -> ?GL_PACK_IMAGE_HEIGHT;
        pack_lsb_first -> ?GL_PACK_LSB_FIRST;
        pack_skip_images -> ?GL_PACK_SKIP_IMAGES;
        pack_swap_bytes -> ?GL_PACK_SWAP_BYTES;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        unpack_swap_bytes -> ?GL_UNPACK_SWAP_BYTES;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        unpack_lsb_first -> ?GL_UNPACK_LSB_FIRST;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS
    end,

    ?CALL_RAW_FUNC(glPixelStoref_raw(NewName, Param)).

-doc """
XXX: To be written.

It implements the `glGetFloati_v` function

```
{ok, [R, G, B, A]} = gl:get_float(blend_color, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetFloati_v) for more information.
""".
-spec get_float(
    Target :: get_p_name(),
    Index :: gl:uint(),
    N :: pos_integer()
) -> {ok, Data :: [gl:float()]} | {error, atom()}.
get_float(Target, Index, Data) ->
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

    ?CALL_RAW_FUNC(glGetFloati_v_raw(NewTarget, Index, Data)).

-doc """
XXX: To be written.

It implements the `glEndQuery` function

```
gl:end_query(time_elapsed).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndQuery) for more information.
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

    ?CALL_RAW_FUNC(glEndQuery_raw(NewTarget)).

-doc """
Delete named sampler objects.

It implements the `glDeleteSamplers` function

```
gl:delete_samplers(1, Samplers).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteSamplers) for more information.
""".
-spec delete_samplers(
    N :: integer(),
    Samplers :: [sampler()]
) -> ok | {error, atom()}.
delete_samplers(N, Samplers) ->
    NewSamplers = << <<ID:32/native>> || ID <- Samplers >>,
    ?CALL_RAW_FUNC(glDeleteSamplers_raw(N, NewSamplers)).

-doc """
Replaces the source code in a shader object.

It implements the `glShaderSource` function

```
ok = gl:shader_source(Shader, [?SHADER_SRC]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glShaderSource) for more information.
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
    ?CALL_RAW_FUNC(glShaderSource_raw(Shader, SourceNew)).

-doc """
Clear buffers to preset values.

It implements the `glClear` function

```
gl:clear([color_buffer_bit, depth_buffer_bit]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClear) for more information.
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
    ?CALL_RAW_FUNC(glClear_raw(NewMask)).

-doc """
Copy a one-dimensional texture subimage.

It implements the `glCopyTextureSubImage1D` function

```
  gl:copy_texture_sub_image_1d(
    TextureID,
    0,
    64,
    0, 0,
    256
  ).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTextureSubImage1D) for more information.
""".
-spec copy_texture_sub_image_1d(
    Texture :: texture(),
    Level :: gl:int(),
    Offset :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: integer()
) -> ok | {error, atom()}.
copy_texture_sub_image_1d(Texture, Level, Offset, X, Y, Width) ->

    ?CALL_RAW_FUNC(glCopyTextureSubImage1D_raw(Texture, Level, Offset, X, Y, Width)).

-doc """
Specify a one-dimensional texture image.

It implements the `glTexImage1D` function

```
Pixels = [0,0,0, 85,85,85, 170,170,170, 255,255,255].
ok = gl:tex_image_1d(
    texture_1d, 0, rgb,
    4, 0,
    rgb, unsigned_byte,
    <<<<Pixel:8/little-signed-integer>> || Pixel <- Pixels>>
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage1D) for more information.
""".
-spec tex_image_1d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: integer(),
    Border :: gl:int(),
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

    ?CALL_RAW_FUNC(glTexImage1D_raw(NewTarget, Level, NewInternalFormat, Width, Border, NewFormat, NewType, Pixels)).

-doc """
Specifies minimum rate at which sample shading takes place.

It implements the `glMinSampleShading` function

```
gl:min_sample_shading(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glMinSampleShading) for more information.
""".
-spec min_sample_shading(Value :: gl:float()) -> ok | {error, atom()}.
min_sample_shading(Value) ->

    ?CALL_RAW_FUNC(glMinSampleShading_raw(Value)).

-type tex_parameter_value() ::
    float() |
    [float()] |
    int() |
    [int()]
.

-doc """
Set texture parameters.

It implements the following OpenGL commands:

- `glTexParameteriv`
- `glTexParameteri`
- `glTexParameterfv`
- `glTexParameterf`

```
gl:tex_parameter(f, texture_2d, texture_lod_bias, -0.5).
gl:tex_parameter(i, texture_2d, texture_min_filter, ?GL_LINEAR_MIPMAP_LINEAR).
BorderColor = [1.0, 0.0, 0.0, 1.0].
gl:tex_parameter(f, texture_2d, texture_border_color, BorderColor).
SwizzleMask = [?GL_RED, ?GL_GREEN, ?GL_BLUE, ?GL_ALPHA].
gl:tex_parameter(i, texture_2d, texture_swizzle_rgba, SwizzleMask).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexParameter) for more information.
""".
-spec tex_parameter(
    Type :: f | i,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    Param :: tex_parameter_value()
) -> ok | {error, atom()}.
tex_parameter(i, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glTexParameteriv_raw(NewTarget, NewParamName, Param));
tex_parameter(i, Target, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, NewParamName, Param));
tex_parameter(f, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glTexParameterfv_raw(NewTarget, NewParamName, Param));
tex_parameter(f, Target, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glTexParameterf_raw(NewTarget, NewParamName, Param)).

-doc """
Specify the primitive restart index.

It implements the `glPrimitiveRestartIndex` function

```
gl:primitive_restart_index(16#FFFF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPrimitiveRestartIndex) for more information.
""".
-spec primitive_restart_index(Index :: gl:uint()) -> ok | {error, atom()}.
primitive_restart_index(Index) ->

    ?CALL_RAW_FUNC(glPrimitiveRestartIndex_raw(Index)).

-doc """
Delete renderbuffer objects.

It implements the `glDeleteRenderbuffers` function

```
gl:delete_renderbuffers(1, Buffers).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteRenderbuffers) for more information.
""".
-spec delete_renderbuffers(
    N :: integer(),
    Buffers :: [render_buffer()]
) -> ok | {error, atom()}.
delete_renderbuffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    ?CALL_RAW_FUNC(glDeleteRenderbuffers_raw(N, NewBuffers)).

-doc """
Copy a two-dimensional texture subimage.

It implements the `glCopyTexSubImage2D` function

```
gl:copy_tex_sub_image_2d(
  texture_2d,
  0,
  64, 64,
  0,
  256
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexSubImage2D) for more information.
""".
-spec copy_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
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

    ?CALL_RAW_FUNC(glCopyTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, X, Y, Width, Height)).

-doc """
Set front and/or back function and reference value for stencil testing.

It implements the `glStencilFuncSeparate` function

```
gl:stencil_func_separate(back, less, 1, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glStencilFuncSeparate) for more information.
""".
-spec stencil_func_separate(
    Face :: triangle_face(),
    Function :: stencil_function(),
    Ref :: gl:int(),
    Mask :: gl:uint()
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

    ?CALL_RAW_FUNC(glStencilFuncSeparate_raw(NewFace, NewFunction, Ref, Mask)).

-doc """
XXX: To be written.

It implements the `glGetIntegerv` function

```
{ok, [X, Y, W, H]} = gl:get_integer(viewport, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetIntegerv) for more information.
""".
-spec get_integer(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [gl:int()]} | {error, atom()}.
get_integer(Name, Data) ->
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

    ?CALL_RAW_FUNC(glGetIntegerv_raw(NewName, Data)).

-doc """
Generate vertex array object names.

It implements the `glGenVertexArrays` function

```
{ok, [Array]} = gl:gen_vertex_arrays(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenVertexArrays) for more information.
""".
-spec gen_vertex_arrays(N :: pos_integer()) -> {ok, Arrays :: [vertex_array()]} | {error, atom()}.
gen_vertex_arrays(N) ->

    ?CALL_RAW_FUNC(glGenVertexArrays_raw(N)).

-doc """
Specify the value used for depth buffer comparisons.

It implements the `glDepthFunc` function

```
gl:depth_func(greater).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDepthFunc) for more information.
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

    ?CALL_RAW_FUNC(glDepthFunc_raw(NewFunction)).

-doc """
Generate framebuffer object names.

It implements the `glGenFramebuffers` function

```
{ok, [Buffer]} = gl:gen_framebuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenFramebuffers) for more information.
""".
-spec gen_framebuffers(N :: pos_integer()) -> {ok, Buffers :: [frame_buffer()]} | {error, atom()}.
gen_framebuffers(N) ->

    ?CALL_RAW_FUNC(glGenFramebuffers_raw(N)).

-doc """
Delete program pipeline objects.

It implements the `glDeleteProgramPipelines` function

```
gl:delete_program_pipelines(1, Pipelines).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteProgramPipelines) for more information.
""".
-spec delete_program_pipelines(
    N :: integer(),
    Pipelines :: [program_pipeline()]
) -> ok | {error, atom()}.
delete_program_pipelines(N, Pipelines) ->
    NewPipelines = << <<ID:32/native>> || ID <- Pipelines >>,
    ?CALL_RAW_FUNC(glDeleteProgramPipelines_raw(N, NewPipelines)).

-doc """
XXX: To be written.

It implements the `glGetFloatv` function

```
{ok, [X, Y, W, H]} = gl:get_float(viewport, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetFloatv) for more information.
""".
-spec get_float(
    Name :: get_p_name(),
    N :: pos_integer()
) -> {ok, Data :: [gl:float()]} | {error, atom()}.
get_float(Name, Data) ->
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

    ?CALL_RAW_FUNC(glGetFloatv_raw(NewName, Data)).

-type vertex_attrib_value() ::
    vector1(double()) |
    [vector1(double())] |
    vector1(float()) |
    [vector1(float())] |
    vector1(short()) |
    [vector1(short())] |
    vector2(double()) |
    [vector2(double())] |
    vector2(float()) |
    [vector2(float())] |
    vector2(short()) |
    [vector2(short())] |
    vector3(double()) |
    [vector3(double())] |
    vector3(float()) |
    [vector3(float())] |
    vector3(short()) |
    [vector3(short())] |
    [vector4(byte())] |
    vector4(double()) |
    [vector4(double())] |
    vector4(float()) |
    [vector4(float())] |
    [vector4(int())] |
    vector4(short()) |
    [vector4(short())] |
    [vector4(ubyte())] |
    [vector4(uint())] |
    [vector4(ushort())]
.

-doc """
Specifies the value of a generic vertex attribute.

It implements the following OpenGL commands:

- `glVertexAttrib4usv`
- `glVertexAttrib4uiv`
- `glVertexAttrib4ubv`
- `glVertexAttrib4sv`
- `glVertexAttrib4s`
- `glVertexAttrib4iv`
- `glVertexAttrib4fv`
- `glVertexAttrib4f`
- `glVertexAttrib4dv`
- `glVertexAttrib4d`
- `glVertexAttrib4bv`
- `glVertexAttrib3sv`
- `glVertexAttrib3s`
- `glVertexAttrib3fv`
- `glVertexAttrib3f`
- `glVertexAttrib3dv`
- `glVertexAttrib3d`
- `glVertexAttrib2sv`
- `glVertexAttrib2s`
- `glVertexAttrib2fv`
- `glVertexAttrib2f`
- `glVertexAttrib2dv`
- `glVertexAttrib2d`
- `glVertexAttrib1sv`
- `glVertexAttrib1s`
- `glVertexAttrib1fv`
- `glVertexAttrib1f`
- `glVertexAttrib1dv`
- `glVertexAttrib1d`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glVertexAttrib) for more information.
""".
-spec vertex_attrib(
    Type :: f | i | d | ui | s | b | ub | us,
    Index :: gl:uint(),
    Values :: vertex_attrib_value()
) -> ok | {error, atom()}.
vertex_attrib(us, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4usv_raw(Index, NewValues));
vertex_attrib(ui, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4uiv_raw(Index, NewValues));
vertex_attrib(ub, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4ubv_raw(Index, NewValues));
vertex_attrib(s, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4sv_raw(Index, NewValues));
vertex_attrib(s, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttrib4s_raw(Index, V1, V2, V3, V4));
vertex_attrib(i, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4iv_raw(Index, NewValues));
vertex_attrib(f, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4fv_raw(Index, NewValues));
vertex_attrib(f, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttrib4f_raw(Index, V1, V2, V3, V4));
vertex_attrib(d, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4dv_raw(Index, NewValues));
vertex_attrib(d, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4 
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttrib4d_raw(Index, V1, V2, V3, V4));
vertex_attrib(b, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 4 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib4bv_raw(Index, NewValues));
vertex_attrib(s, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 3 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib3sv_raw(Index, NewValues));
vertex_attrib(s, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttrib3s_raw(Index, V1, V2, V3));
vertex_attrib(f, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 3 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib3fv_raw(Index, NewValues));
vertex_attrib(f, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttrib3f_raw(Index, V1, V2, V3));
vertex_attrib(d, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 3 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib3dv_raw(Index, NewValues));
vertex_attrib(d, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3 
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttrib3d_raw(Index, V1, V2, V3));
vertex_attrib(s, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 2 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib2sv_raw(Index, NewValues));
vertex_attrib(s, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttrib2s_raw(Index, V1, V2));
vertex_attrib(f, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 2 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib2fv_raw(Index, NewValues));
vertex_attrib(f, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttrib2f_raw(Index, V1, V2));
vertex_attrib(d, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 2 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib2dv_raw(Index, NewValues));
vertex_attrib(d, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2 
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttrib2d_raw(Index, V1, V2));
vertex_attrib(s, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 1 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib1sv_raw(Index, NewValues));
vertex_attrib(s, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Values),

    ?CALL_RAW_FUNC(glVertexAttrib1s_raw(Index, V1));
vertex_attrib(f, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 1 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib1fv_raw(Index, NewValues));
vertex_attrib(f, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Values),

    ?CALL_RAW_FUNC(glVertexAttrib1f_raw(Index, V1));
vertex_attrib(d, Index, Values) when 
    is_list(Values) andalso
    is_tuple(hd(Values)) andalso
    tuple_size(hd(Values)) =:= 1 
->
    NewValues = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_1(Matrix) end, [], Values),

    ?CALL_RAW_FUNC(glVertexAttrib1dv_raw(Index, NewValues));
vertex_attrib(d, Index, Values) when 
    is_tuple(Values) andalso
    tuple_size(Values) =:= 1 
->
    [V1] = ?GL_PACK_VECTOR_1(Values),

    ?CALL_RAW_FUNC(glVertexAttrib1d_raw(Index, V1)).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMask` function

```
gl:color_mask(true, true, true, true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glColorMask) for more information.
""".
-spec color_mask(
    Red :: boolean(),
    Green :: boolean(),
    Blue :: boolean(),
    Alpha :: boolean()
) -> ok | {error, atom()}.
color_mask(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glColorMask_raw(Red, Green, Blue, Alpha)).

-doc """
Returns a subset of a buffer object's data store.

It implements the `glGetBufferSubData` function

```
{ok, Data} = gl:get_buffer_sub_data(array_buffer, Offset, Size).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetBufferSubData) for more information.
""".
-spec get_buffer_sub_data(
    Target :: buffer_target_a_r_b(),
    Offset :: integer(),
    DataSize :: non_neg_integer()
) -> {ok, Data :: binary()} | {error, atom()}.
get_buffer_sub_data(Target, Offset, Data) ->
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

    ?CALL_RAW_FUNC(glGetBufferSubData_raw(NewTarget, Offset, Data)).

-doc """
Establish data storage, format, dimensions and sample count of a renderbuffer object's image.

It implements the `glRenderbufferStorageMultisample` function

```
gl:renderbuffer_storage_multisample(
  renderbuffer, 
  4,
  depth24_stencil8,
  Width, Height
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glRenderbufferStorageMultisample) for more information.
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

    ?CALL_RAW_FUNC(glRenderbufferStorageMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height)).

-doc """
Determine if a name corresponds to a texture.

It implements the `glIsTexture` function

```
gl:is_texture(Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsTexture) for more information.
""".
-spec is_texture(Texture :: texture()) -> {ok, IsTexture :: boolean()} | {error, atom()}.
is_texture(Texture) ->

    ?CALL_RAW_FUNC(glIsTexture_raw(Texture)).

-doc """
Determine if a name corresponds to a framebuffer object.

It implements the `glIsFramebuffer` function

```
gl:is_framebuffer(Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsFramebuffer) for more information.
""".
-spec is_framebuffer(Buffer :: frame_buffer()) -> {ok, IsBuffer :: boolean()} | {error, atom()}.
is_framebuffer(Buffer) ->

    ?CALL_RAW_FUNC(glIsFramebuffer_raw(Buffer)).

-doc """
Generate sampler object names.

It implements the `glGenSamplers` function

```
{ok, [Sampler]} = gl:gen_samplers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenSamplers) for more information.
""".
-spec gen_samplers(N :: pos_integer()) -> {ok, Samplers :: [sampler()]} | {error, atom()}.
gen_samplers(N) ->

    ?CALL_RAW_FUNC(glGenSamplers_raw(N)).

-doc """
Reserve transform feedback object names.

It implements the `glGenTransformFeedbacks` function

```
{ok, [Feedback]} = gl:gen_transform_feedbacks(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenTransformFeedbacks) for more information.
""".
-spec gen_transform_feedbacks(N :: pos_integer()) -> {ok, Feedbacks :: [transform_feedback()]} | {error, atom()}.
gen_transform_feedbacks(N) ->

    ?CALL_RAW_FUNC(glGenTransformFeedbacks_raw(N)).

-doc """
Determine if a name corresponds to a sampler object.

It implements the `glIsSampler` function

```
gl:is_sampler(Sampler).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsSampler) for more information.
""".
-spec is_sampler(Sampler :: sampler()) -> {ok, IsSampler :: boolean()} | {error, atom()}.
is_sampler(Sampler) ->

    ?CALL_RAW_FUNC(glIsSampler_raw(Sampler)).

-doc """
Define front- and back-facing polygons.

It implements the `glFrontFace` function

```
gl:front_face(ccw).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFrontFace) for more information.
""".
-spec front_face(Mode :: front_face_direction()) -> ok | {error, atom()}.
front_face(Mode) ->
    NewMode = case Mode of
        ccw -> ?GL_CCW;
        cw -> ?GL_CW
    end,

    ?CALL_RAW_FUNC(glFrontFace_raw(NewMode)).

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquation` function

```
gl:blend_equation(func_reverse_subtract).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquation) for more information.
""".
-spec blend_equation(Mode :: blend_equation_mode()) -> ok | {error, atom()}.
blend_equation(Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    ?CALL_RAW_FUNC(glBlendEquation_raw(NewMode)).

-doc """
Return a string describing the current GL connection.

It implements the `glGetString` function

```
{ok, String} = gl:get_string(version).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetString) for more information.
""".
-spec get_string(Name :: string_name()) -> {ok, String :: string() | binary()} | {error, atom()}.
get_string(Name) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    ?CALL_RAW_FUNC(glGetString_raw(NewName)).

-doc """
Specify a logical pixel operation for rendering.

It implements the `glLogicOp` function

```
% Note that `and`, `or` and `xor` are reserved words in Erlang, so we
% use `and_`, `or_` and `xor_` instead.
gl:logic_op(noop).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glLogicOp) for more information.
""".
-spec logic_op(OpCode :: logic_op()) -> ok | {error, atom()}.
logic_op(OpCode) ->
    NewOpCode = case OpCode of
        set -> ?GL_SET;
        and_reverse -> ?GL_AND_REVERSE;
        copy_inverted -> ?GL_COPY_INVERTED;
        clear -> ?GL_CLEAR;
        or_reverse -> ?GL_OR_REVERSE;
        or_ -> ?GL_OR;
        equiv -> ?GL_EQUIV;
        nand -> ?GL_NAND;
        and_inverted -> ?GL_AND_INVERTED;
        copy -> ?GL_COPY;
        or_inverted -> ?GL_OR_INVERTED;
        nor -> ?GL_NOR;
        invert -> ?GL_INVERT;
        noop -> ?GL_NOOP;
        and_ -> ?GL_AND;
        xor_ -> ?GL_XOR
    end,

    ?CALL_RAW_FUNC(glLogicOp_raw(NewOpCode)).

-doc """
Returns the information log for a shader object.

It implements the `glGetShaderInfoLog` function

```
{ok, InfoLog} = gl:get_shader_info_log(Shader, 1024).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetShaderInfoLog) for more information.
""".
-spec get_shader_info_log(
    Shader :: shader(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_shader_info_log(Shader, InfoLog) ->

    ?CALL_RAW_FUNC(glGetShaderInfoLog_raw(Shader, InfoLog)).

-doc """
Generate query object names.

It implements the `glGenQueries` function

```
{ok, [Query]} = gl:gen_queries(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenQueries) for more information.
""".
-spec gen_queries(N :: pos_integer()) -> {ok, Queries :: [query()]} | {error, atom()}.
gen_queries(N) ->

    ?CALL_RAW_FUNC(glGenQueries_raw(N)).

-doc """
Enable or disable server-side GL capabilities.

It implements the `glEnable` function

```
gl:enable(line_smooth).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEnable) for more information.
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

    ?CALL_RAW_FUNC(glEnable_raw(NewCap)).

-doc """
Determine if a name corresponds to a buffer object.

It implements the `glIsBuffer` function

```
gl:is_buffer(Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsBuffer) for more information.
""".
-spec is_buffer(Buffer :: buffer()) -> {ok, IsBuffer :: boolean()} | {error, atom()}.
is_buffer(Buffer) ->

    ?CALL_RAW_FUNC(glIsBuffer_raw(Buffer)).

-doc """
Specify pixel arithmetic for RGB and alpha components separately.

It implements the `glBlendFuncSeparate` function

```
gl:blend_func_separate(
  source_alpha_saturate,
  one_minus_source_alpha_saturate,
  one,
  zero
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendFuncSeparate) for more information.
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

    ?CALL_RAW_FUNC(glBlendFuncSeparate_raw(NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha)).

-type get_tex_parameter_value() ::
    [float()] |
    [int()]
.

-doc """
Return texture parameter values.

It implements the following OpenGL commands:

- `glGetTexParameteriv`
- `glGetTexParameterfv`

```
{ok, [-0.5]} = gl:get_tex_parameter(f, texture_2d, texture_lod_bias, 1).
{ok, [?GL_LINEAR_MIPMAP_LINEAR]} = gl:get_tex_parameter(i, texture_2d, texture_min_filter, 1).
{ok, BorderColor} = gl:get_tex_parameter(f, texture_2d, texture_border_color, 4).
[1.0, 0.0, 0.0, 1.0] = BorderColor.
{ok, SwizzleMask} = gl:get_tex_parameter(i, texture_2d, texture_swizzle_rgba, 4).
[?GL_RED, ?GL_GREEN, ?GL_BLUE, ?GL_ALPHA] = SwizzleMask.
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTexParameter) for more information.
""".
-spec get_tex_parameter(
    Type :: f | i,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    N :: pos_integer()
) -> {ok, Param :: [gl_x]} | {error, atom()}.
get_tex_parameter(i, Target, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glGetTexParameteriv_raw(NewTarget, NewParamName, N));
get_tex_parameter(f, Target, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
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

    ?CALL_RAW_FUNC(glGetTexParameterfv_raw(NewTarget, NewParamName, N)).

-doc """
Bind a framebuffer to a framebuffer target.

It implements the `glBindFramebuffer` function

```
gl:bind_framebuffer(framebuffer, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindFramebuffer) for more information.
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

    ?CALL_RAW_FUNC(glBindFramebuffer_raw(NewTarget, Buffer)).

-type sampler_parameter_i_value() ::
    [int()] |
    [uint()]
.

-doc """
Set sampler parameters.

It implements the following OpenGL commands:

- `glSamplerParameterIuiv`
- `glSamplerParameterIiv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glSamplerParameterI) for more information.
""".
-spec sampler_parameter_i(
    Type :: i | ui,
    Sampler :: sampler(),
    ParamName :: sampler_parameter(),
    Param :: sampler_parameter_i_value()
) -> ok | {error, atom()}.
sampler_parameter_i(ui, Sampler, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glSamplerParameterIuiv_raw(Sampler, NewParamName, Param));
sampler_parameter_i(i, Sampler, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glSamplerParameterIiv_raw(Sampler, NewParamName, Param)).

-doc """
Bind a renderbuffer to a renderbuffer target.

It implements the `glBindRenderbuffer` function

```
gl:bind_renderbuffer(renderbuffer, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBindRenderbuffer) for more information.
""".
-spec bind_renderbuffer(
    Target :: renderbuffer_target(),
    Buffer :: render_buffer()
) -> ok | {error, atom()}.
bind_renderbuffer(Target, Buffer) ->
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glBindRenderbuffer_raw(NewTarget, Buffer)).

-doc """
Specify clear values for the color buffers.

It implements the `glClearColor` function

```
gl:clear_color(0.0, 0.0, 0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glClearColor) for more information.
""".
-spec clear_color(
    Red :: gl:float(),
    Green :: gl:float(),
    Blue :: gl:float(),
    Alpha :: gl:float()
) -> ok | {error, atom()}.
clear_color(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glClearColor_raw(Red, Green, Blue, Alpha)).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparatei` function

```
gl:blend_equation_separate(BufferIndex, func_add, func_subtract).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquationSeparatei) for more information.
""".
-spec blend_equation_separate(
    Buffer :: gl:uint(),
    ModeRGB :: blend_equation_mode(),
    ModeAlpha :: blend_equation_mode()
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

    ?CALL_RAW_FUNC(glBlendEquationSeparatei_raw(Buffer, NewModeRGB, NewModeAlpha)).

-type texture_parameter_value() ::
    float() |
    [float()] |
    int() |
    [int()]
.

-doc """
Set texture parameters.

It implements the following OpenGL commands:

- `glTextureParameteriv`
- `glTextureParameteri`
- `glTextureParameterfv`
- `glTextureParameterf`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTextureParameter) for more information.
""".
-spec texture_parameter(
    Type :: f | i,
    Texture :: texture(),
    ParamName :: texture_parameter_name(),
    Param :: texture_parameter_value()
) -> ok | {error, atom()}.
texture_parameter(i, Texture, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glTextureParameteriv_raw(Texture, NewParamName, Param));
texture_parameter(i, Texture, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glTextureParameteri_raw(Texture, NewParamName, Param));
texture_parameter(f, Texture, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glTextureParameterfv_raw(Texture, NewParamName, Param));
texture_parameter(f, Texture, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glTextureParameterf_raw(Texture, NewParamName, Param)).

-doc """
Delete named query objects.

It implements the `glDeleteQueries` function

```
gl:delete_queries(1, Queries).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteQueries) for more information.
""".
-spec delete_queries(
    N :: integer(),
    Queries :: [query()]
) -> ok | {error, atom()}.
delete_queries(N, Queries) ->
    NewQueries = << <<ID:32/native>> || ID <- Queries >>,
    ?CALL_RAW_FUNC(glDeleteQueries_raw(N, NewQueries)).

-doc """
Attach a level of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTexture` function

```
gl:framebuffer_texture(framebuffer, color_attachment0, Texture, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTexture) for more information.
""".
-spec framebuffer_texture(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: gl:int()
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

    ?CALL_RAW_FUNC(glFramebufferTexture_raw(NewTarget, NewAttachment, Texture, Level)).

-doc """
Delete named textures.

It implements the `glDeleteTextures` function

```
gl:delete_textures(1, Textures).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteTextures) for more information.
""".
-spec delete_textures(
    N :: integer(),
    Textures :: [texture()]
) -> ok | {error, atom()}.
delete_textures(N, Textures) ->
    NewTextures = << <<ID:32/native>> || ID <- Textures >>,
    ?CALL_RAW_FUNC(glDeleteTextures_raw(N, NewTextures)).

-doc """
Create renderbuffer objects.

It implements the `glCreateRenderbuffers` function

```
{ok, [Buffer]} = gl:create_renderbuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateRenderbuffers) for more information.
""".
-spec create_renderbuffers(N :: pos_integer()) -> {ok, Renderbuffers :: [render_buffer()]} | {error, atom()}.
create_renderbuffers(N) ->

    ?CALL_RAW_FUNC(glCreateRenderbuffers_raw(N)).

-doc """
Test whether a capability is enabled.

It implements the `glIsEnabled` function

```
{ok, true} = gl:is_enabled(line_smooth).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glIsEnabled) for more information.
""".
-spec is_enabled(Capability :: enable_cap()) -> {ok, IsEnabled :: boolean()} | {error, atom()}.
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

    ?CALL_RAW_FUNC(glIsEnabled_raw(NewCapability)).

-doc """
Select a polygon rasterization mode.

It implements the `glPolygonMode` function

```
gl:polygon_mode(fill, front_and_back).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glPolygonMode) for more information.
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

    ?CALL_RAW_FUNC(glPolygonMode_raw(NewFace, NewMode)).

-type get_vertex_attrib_value() ::
    [double()] |
    [float()] |
    [int()]
.

-doc """
Return a generic vertex attribute parameter.

It implements the following OpenGL commands:

- `glGetVertexAttribiv`
- `glGetVertexAttribfv`
- `glGetVertexAttribdv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetVertexAttrib) for more information.
""".
-spec get_vertex_attrib(
    Type :: f | i | d,
    Index :: gl:uint(),
    PName :: vertex_attrib_property_a_r_b(),
    N :: pos_integer()
) -> {ok, Values :: [gl_x]} | {error, atom()}.
get_vertex_attrib(i, Index, PName, N) ->
    NewPName = case PName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_relative_offset -> ?GL_VERTEX_ATTRIB_RELATIVE_OFFSET;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_binding -> ?GL_VERTEX_ATTRIB_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED;
        vertex_attrib_array_long -> ?GL_VERTEX_ATTRIB_ARRAY_LONG
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribiv_raw(Index, NewPName, N));
get_vertex_attrib(f, Index, PName, N) ->
    NewPName = case PName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_relative_offset -> ?GL_VERTEX_ATTRIB_RELATIVE_OFFSET;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_binding -> ?GL_VERTEX_ATTRIB_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED;
        vertex_attrib_array_long -> ?GL_VERTEX_ATTRIB_ARRAY_LONG
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribfv_raw(Index, NewPName, N));
get_vertex_attrib(d, Index, PName, N) ->
    NewPName = case PName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_relative_offset -> ?GL_VERTEX_ATTRIB_RELATIVE_OFFSET;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_binding -> ?GL_VERTEX_ATTRIB_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED;
        vertex_attrib_array_long -> ?GL_VERTEX_ATTRIB_ARRAY_LONG
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribdv_raw(Index, NewPName, N)).

-doc """
Delete named buffer objects.

It implements the `glDeleteBuffers` function

```
gl:delete_buffers(1, Buffers).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteBuffers) for more information.
""".
-spec delete_buffers(
    N :: integer(),
    Buffers :: [buffer()]
) -> ok | {error, atom()}.
delete_buffers(N, Buffers) ->
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    ?CALL_RAW_FUNC(glDeleteBuffers_raw(N, NewBuffers)).

-doc """
Generate buffer object names.

It implements the `glGenBuffers` function

```
{ok, [Buffer]} = gl:gen_buffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenBuffers) for more information.
""".
-spec gen_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
gen_buffers(N) ->

    ?CALL_RAW_FUNC(glGenBuffers_raw(N)).

-doc """
Select active texture unit.

It implements the `glActiveTexture` function

```
gl:active_texture(texture_0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glActiveTexture) for more information.
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

    ?CALL_RAW_FUNC(glActiveTexture_raw(NewTexture)).

-doc """
XXX: To be written.

It implements the `glGetInteger64i_v` function

```
{ok, [R, G, B, A]} = gl:get_integer64(blend_color, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetInteger64i_v) for more information.
""".
-spec get_integer64(
    Target :: get_p_name(),
    Index :: gl:uint(),
    N :: pos_integer()
) -> {ok, Data :: [integer()]} | {error, atom()}.
get_integer64(Target, Index, Data) ->
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

    ?CALL_RAW_FUNC(glGetInteger64i_v_raw(NewTarget, Index, Data)).

-doc """
Block until all GL execution is complete.

It implements the `glFinish` function

```
gl:finish().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFinish) for more information.
""".
-spec finish() -> ok | {error, atom()}.
finish() ->

    ?CALL_RAW_FUNC(glFinish_raw()).

-doc """
Copy pixels into a 1D texture image.

It implements the `glCopyTexImage1D` function

```
gl:copy_tex_image_1d(
  texture_1d,
  0,
  rgb,
  0, 0,
  512,
  0
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTexImage1D) for more information.
""".
-spec copy_tex_image_1d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: integer(),
    Border :: gl:int()
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

    ?CALL_RAW_FUNC(glCopyTexImage1D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Border)).

-type uniform_matrix_value() ::
    matrix2(float()) |
    matrix3(float()) |
    matrix4(float()) |
    matrix2x3(float()) |
    matrix3x2(float()) |
    matrix2x4(float()) |
    matrix4x2(float()) |
    matrix3x4(float()) |
    matrix4x3(float()) |
    matrix2(double()) |
    matrix3(double()) |
    matrix4(double()) |
    matrix2x3(double()) |
    matrix2x4(double()) |
    matrix3x2(double()) |
    matrix3x4(double()) |
    matrix4x2(double()) |
    matrix4x3(double())
.

-doc """
To be written.

It implements the following OpenGL commands:

- `glUniformMatrix4x3dv`
- `glUniformMatrix4x2dv`
- `glUniformMatrix3x4dv`
- `glUniformMatrix3x2dv`
- `glUniformMatrix2x4dv`
- `glUniformMatrix2x3dv`
- `glUniformMatrix4dv`
- `glUniformMatrix3dv`
- `glUniformMatrix2dv`
- `glUniformMatrix4x3fv`
- `glUniformMatrix3x4fv`
- `glUniformMatrix4x2fv`
- `glUniformMatrix2x4fv`
- `glUniformMatrix3x2fv`
- `glUniformMatrix2x3fv`
- `glUniformMatrix4fv`
- `glUniformMatrix3fv`
- `glUniformMatrix2fv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glUniformMatrix) for more information.
""".
-spec uniform_matrix(
    Type :: f | d,
    Location :: gl:int(),
    Count :: integer(),
    Transpose :: boolean(),
    Value :: uniform_matrix_value()
) -> ok | {error, atom()}.
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x3dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x2dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x4dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x2dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x4dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x3dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix4dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix3dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(d, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix2dv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x3fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x4fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x2fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x4fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x2fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x3fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x4(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix4fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x3(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix3fv_raw(Location, Count, Transpose, NewValue));
uniform_matrix(f, Location, Count, Transpose, Value) when 
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2 
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x2(Matrix) end, [], Value),

    ?CALL_RAW_FUNC(glUniformMatrix2fv_raw(Location, Count, Transpose, NewValue)).

-type get_texture_parameter_i_value() ::
    [int()] |
    [uint()]
.

-doc """
undefined

It implements the following OpenGL commands:

- `glGetTextureParameterIuiv`
- `glGetTextureParameterIiv`

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetTextureParameterI) for more information.
""".
-spec get_texture_parameter_i(
    Type :: i | ui,
    Texture :: texture(),
    ParamName :: texture_parameter_name(),
    N :: pos_integer()
) -> {ok, Param :: [gl_x]} | {error, atom()}.
get_texture_parameter_i(ui, Texture, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glGetTextureParameterIuiv_raw(Texture, NewParamName, N));
get_texture_parameter_i(i, Texture, ParamName, N) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_lod_bias -> ?GL_TEXTURE_LOD_BIAS;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_swizzle_rgba -> ?GL_TEXTURE_SWIZZLE_RGBA;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_border_color -> ?GL_TEXTURE_BORDER_COLOR;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_max_anisotropy -> ?GL_TEXTURE_MAX_ANISOTROPY;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,

    ?CALL_RAW_FUNC(glGetTextureParameterIiv_raw(Texture, NewParamName, N)).

-doc """
XXX: TO be written.

It implements the `glEndConditionalRender` function

```
gl:end_conditional_render().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glEndConditionalRender) for more information.
""".
-spec end_conditional_render() -> ok | {error, atom()}.
end_conditional_render() ->

    ?CALL_RAW_FUNC(glEndConditionalRender_raw()).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage3DMultisample` function

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage3DMultisample) for more information.
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

    ?CALL_RAW_FUNC(glTexImage3DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, Depth, FixedSampleLocations)).

-doc """
Specify the equation used for both the RGB blend equation and the Alpha blend equation.

It implements the `glBlendEquationi` function

```
gl:blend_equation(BufferIndex, func_add).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glBlendEquationi) for more information.
""".
-spec blend_equation(
    Buffer :: gl:uint(),
    Mode :: blend_equation_mode()
) -> ok | {error, atom()}.
blend_equation(Buffer, Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    ?CALL_RAW_FUNC(glBlendEquationi_raw(Buffer, NewMode)).

-doc """
Create program pipeline objects.

It implements the `glCreateProgram` function

```
{ok, Program} = gl:create_program().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCreateProgram) for more information.
""".
-spec create_program() -> {ok, Program :: program()} | {error, atom()}.
create_program() ->

    ?CALL_RAW_FUNC(glCreateProgram_raw()).

-doc """
Generate mipmaps for a specified texture object.

It implements the `glGenerateTextureMipmap` function

```
gl:generate_texture_mipmap(Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGenerateTextureMipmap) for more information.
""".
-spec generate_texture_mipmap(Texture :: texture()) -> ok | {error, atom()}.
generate_texture_mipmap(Texture) ->

    ?CALL_RAW_FUNC(glGenerateTextureMipmap_raw(Texture)).

-doc """
Attach a single layer of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTextureLayer` function

```
gl:framebuffer_texture_layer(
  framebuffer,
  color_attachment0m
  Texture,
  0,
  Layer
).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glFramebufferTextureLayer) for more information.
""".
-spec framebuffer_texture_layer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: gl:int(),
    Layer :: gl:int()
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

    ?CALL_RAW_FUNC(glFramebufferTextureLayer_raw(NewTarget, NewAttachment, Texture, Level, Layer)).

-doc """
Establish the data storage, format, dimensions, and number of samples of a multisample texture's image.

It implements the `glTexImage2DMultisample` function

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glTexImage2DMultisample) for more information.
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

    ?CALL_RAW_FUNC(glTexImage2DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, FixedSampleLocations)).

-doc """
Specify whether front- or back-facing facets can be culled.

It implements the `glCullFace` function

```
gl:cull_face(front_and_back).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCullFace) for more information.
""".
-spec cull_face(Mode :: triangle_face()) -> ok | {error, atom()}.
cull_face(Mode) ->
    NewMode = case Mode of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glCullFace_raw(NewMode)).

-doc """
Returns a parameter from a program object.

It implements the following OpenGL commands:

- `glGetProgramiv`

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetProgram) for more information.
""".
-spec get_program(
    Type :: i,
    Program :: program(),
    PName :: program_property_a_r_b(),
    N :: pos_integer()
) -> {ok, Params :: [gl_x]} | {error, atom()}.
get_program(i, Program, PName, N) ->
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

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, NewPName, N)).

-doc """
Delete vertex array objects.

It implements the `glDeleteVertexArrays` function

```
gl:delete_vertex_arrays(1, Arrays).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteVertexArrays) for more information.
""".
-spec delete_vertex_arrays(
    N :: integer(),
    Arrays :: [vertex_array()]
) -> ok | {error, atom()}.
delete_vertex_arrays(N, Arrays) ->
    NewArrays = << <<ID:32/native>> || ID <- Arrays >>,
    ?CALL_RAW_FUNC(glDeleteVertexArrays_raw(N, NewArrays)).

-doc """
Installs a program object as part of current rendering state.

It implements the `glUseProgram` function

```
ok = gl:use_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glUseProgram) for more information.
""".
-spec use_program(Program :: program()) -> ok | {error, atom()}.
use_program(Program) ->

    ?CALL_RAW_FUNC(glUseProgram_raw(Program)).

-doc """
Deletes a program object.

It implements the `glDeleteProgram` function

```
gl:delete_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glDeleteProgram) for more information.
""".
-spec delete_program(Program :: program()) -> ok | {error, atom()}.
delete_program(Program) ->

    ?CALL_RAW_FUNC(glDeleteProgram_raw(Program)).

-doc """
Returns the location of a uniform variable.

It implements the `glGetUniformLocation` function

```
gl:foobar(abc, xyz).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glGetUniformLocation) for more information.
""".
-spec get_uniform_location(
    Program :: program(),
    Name :: string()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_uniform_location(Program, Name) ->

    ?CALL_RAW_FUNC(glGetUniformLocation_raw(Program, Name)).

-doc """
Copy a two-dimensional texture subimage.

It implements the `glCopyTextureSubImage2D` function

```
  gl:copy_texture_sub_image_2d(
    TextureID,
    0,
    64, 64,
    0, 0,
    256, 256
  ).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/gl4/glCopyTextureSubImage2D) for more information.
""".
-spec copy_texture_sub_image_2d(
    Texture :: texture(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: integer(),
    Height :: integer()
) -> ok | {error, atom()}.
copy_texture_sub_image_2d(Texture, Level, OffsetX, OffsetY, X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glCopyTextureSubImage2D_raw(Texture, Level, OffsetX, OffsetY, X, Y, Width, Height)).


glDisable_raw(_Cap) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparatei_raw(_Buffer, _SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) ->
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexAttribArray_raw(_Index) ->
    erlang:nif_error(nif_library_not_loaded).

glClearStencil_raw(_Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInfoLog_raw(_Program, _InfoLog) ->
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

glFlush_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glIsQuery_raw(_Query) ->
    erlang:nif_error(nif_library_not_loaded).

glIsTransformFeedback_raw(_Feedback) ->
    erlang:nif_error(nif_library_not_loaded).

glReadBuffer_raw(_Source) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1d_raw(_Location, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1f_raw(_Location, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1i_raw(_Location, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1ui_raw(_Location, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2d_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2f_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2i_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2ui_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3d_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3f_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3i_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3ui_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4d_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4f_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4i_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4ui_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteTransformFeedbacks_raw(_N, _Feedbacks) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateShader_raw(_Type) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformdv_raw(_Program, _Location, _Params) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformfv_raw(_Program, _Location, _Params) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformiv_raw(_Program, _Location, _Params) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformuiv_raw(_Program, _Location, _Params) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribPointer_raw(_Index, _Size, _Type, _Normalized, _Stride, _Pointer) ->
    erlang:nif_error(nif_library_not_loaded).

glTextureParameterIiv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTextureParameterIuiv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64v_raw(_PName, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glGetSamplerParameterIiv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetSamplerParameterIuiv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawArraysInstanced_raw(_Mode, _First, _Count, _InstanceCount) ->
    erlang:nif_error(nif_library_not_loaded).

glBufferSubData_raw(_Target, _Offset, _Size, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteFramebuffers_raw(_N, _Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffset_raw(_Factor, _Units) ->
    erlang:nif_error(nif_library_not_loaded).

glEndTransformFeedback_raw() ->
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

glGetSamplerParameterfv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetSamplerParameteriv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glAttachShader_raw(_Program, _Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameterIiv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameterIuiv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGenerateMipmap_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateVertexArrays_raw(_Arrays) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTextureParameterfv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTextureParameteriv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glIsProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glDisablei_raw(_Capability, _Index) ->
    erlang:nif_error(nif_library_not_loaded).

glGetDoublei_v_raw(_Target, _Index, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glIsShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGenTextures_raw(_Textures) ->
    erlang:nif_error(nif_library_not_loaded).

glEnablei_raw(_Capability, _Index) ->
    erlang:nif_error(nif_library_not_loaded).

glGenRenderbuffers_raw(_Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glValidateProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage2D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Height, _Border) ->
    erlang:nif_error(nif_library_not_loaded).

glBindVertexArray_raw(_Array) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI1i_raw(_Index, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI1iv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI1ui_raw(_Index, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI1uiv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI2i_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI2iv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI2ui_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI2uiv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI3i_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI3iv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI3ui_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI3uiv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4bv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4i_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4iv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4sv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4ubv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4ui_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4uiv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4usv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBlitFramebuffer_raw(_SrcX0, _SrcY0, _SrcX1, _SrcY1, _DstX0, _DstY0, _DstX1, _DstY1, _Mask, _Filter) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilMaskSeparate_raw(_Face, _Mask) ->
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

glUniform1dv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2dv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3dv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4dv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameterf_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameterfv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameteri_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameteriv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegeri_v_raw(_Target, _Index, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawBuffer_raw(_Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilFunc_raw(_Function, _Ref, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glGenProgramPipelines_raw(_Pipelines) ->
    erlang:nif_error(nif_library_not_loaded).

glTexBuffer_raw(_Target, _InternalFormat, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawArrays_raw(_Mode, _First, _Count) ->
    erlang:nif_error(nif_library_not_loaded).

glLineWidth_raw(_Width) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthMask_raw(_Flag) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glViewport_raw(_X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glBeginConditionalRender_raw(_Query, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexImage_raw(_Target, _Level, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glBindBuffer_raw(_Target, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage1D_raw(_Target, _Level, _Offset, _X, _Y, _Width) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFunci_raw(_Buffer, _SourceFactor, _DestinationFactor) ->
    erlang:nif_error(nif_library_not_loaded).

glBindTextureUnit_raw(_Unit, _Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glBufferData_raw(_Target, _Size, _Data, _Usage) ->
    erlang:nif_error(nif_library_not_loaded).

glSampleCoverage_raw(_Value, _Invert) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilOpSeparate_raw(_Face, _StencilFail, _DepthPassFail, _DepthPassPass) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderiv_raw(_Shader, _PName, _Params) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFunc_raw(_SourceFactor, _DestinationFactor) ->
    erlang:nif_error(nif_library_not_loaded).

glHint_raw(_Target, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBooleanv_raw(_Name, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glBeginTransformFeedback_raw(_PrimitiveMode) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendColor_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glIsProgramPipeline_raw(_Pipeline) ->
    erlang:nif_error(nif_library_not_loaded).

glBeginQuery_raw(_Target, _Query) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterIiv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterIuiv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glPixelStoref_raw(_Name, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glPixelStorei_raw(_Name, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFloati_v_raw(_Target, _Index, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glEndQuery_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteSamplers_raw(_N, _Samplers) ->
    erlang:nif_error(nif_library_not_loaded).

glShaderSource_raw(_Shader, _Source) ->
    erlang:nif_error(nif_library_not_loaded).

glClear_raw(_Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTextureSubImage1D_raw(_Texture, _Level, _Offset, _X, _Y, _Width) ->
    erlang:nif_error(nif_library_not_loaded).

glTexImage1D_raw(_Target, _Level, _InternalFormat, _Width, _Border, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glMinSampleShading_raw(_Value) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterf_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterfv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameteri_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameteriv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glPrimitiveRestartIndex_raw(_Index) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteRenderbuffers_raw(_N, _Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilFuncSeparate_raw(_Face, _Function, _Ref, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegerv_raw(_Name, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glGenVertexArrays_raw(_Arrays) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthFunc_raw(_Function) ->
    erlang:nif_error(nif_library_not_loaded).

glGenFramebuffers_raw(_Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgramPipelines_raw(_N, _Pipelines) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFloatv_raw(_Name, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1d_raw(_Index, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1dv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1f_raw(_Index, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1fv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1s_raw(_Index, _V1) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1sv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2d_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2dv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2f_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2fv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2s_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2sv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3d_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3dv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3f_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3fv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3s_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3sv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4bv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4d_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4dv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4f_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4fv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4iv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4s_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4sv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4ubv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4uiv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4usv_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glColorMask_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBufferSubData_raw(_Target, _Offset, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorageMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glIsTexture_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glIsFramebuffer_raw(_Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glGenSamplers_raw(_Samplers) ->
    erlang:nif_error(nif_library_not_loaded).

glGenTransformFeedbacks_raw(_Feedbacks) ->
    erlang:nif_error(nif_library_not_loaded).

glIsSampler_raw(_Sampler) ->
    erlang:nif_error(nif_library_not_loaded).

glFrontFace_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquation_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetString_raw(_Name) ->
    erlang:nif_error(nif_library_not_loaded).

glLogicOp_raw(_OpCode) ->
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

glGetTexParameterfv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameteriv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glBindFramebuffer_raw(_Target, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameterIiv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameterIuiv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glBindRenderbuffer_raw(_Target, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glClearColor_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparatei_raw(_Buffer, _ModeRGB, _ModeAlpha) ->
    erlang:nif_error(nif_library_not_loaded).

glTextureParameterf_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTextureParameterfv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTextureParameteri_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTextureParameteriv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteQueries_raw(_N, _Queries) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture_raw(_Target, _Attachment, _Texture, _Level) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteTextures_raw(_N, _Textures) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateRenderbuffers_raw(_Renderbuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glIsEnabled_raw(_Capability) ->
    erlang:nif_error(nif_library_not_loaded).

glPolygonMode_raw(_Face, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribdv_raw(_Index, _PName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribfv_raw(_Index, _PName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribiv_raw(_Index, _PName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteBuffers_raw(_N, _Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGenBuffers_raw(_Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glActiveTexture_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64i_v_raw(_Target, _Index, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glFinish_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage1D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Border) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2x3dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2x3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2x4dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2x4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3x2dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3x2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3x4dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3x4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4x2dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4x2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4x3dv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4x3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTextureParameterIiv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTextureParameterIuiv_raw(_Texture, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glEndConditionalRender_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glTexImage3DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _Depth, _FixedSampleLocations) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationi_raw(_Buffer, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateProgram_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glGenerateTextureMipmap_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTextureLayer_raw(_Target, _Attachment, _Texture, _Level, _Layer) ->
    erlang:nif_error(nif_library_not_loaded).

glTexImage2DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _FixedSampleLocations) ->
    erlang:nif_error(nif_library_not_loaded).

glCullFace_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramiv_raw(_Program, _PName, _Params) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteVertexArrays_raw(_N, _Arrays) ->
    erlang:nif_error(nif_library_not_loaded).

glUseProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformLocation_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTextureSubImage2D_raw(_Texture, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

