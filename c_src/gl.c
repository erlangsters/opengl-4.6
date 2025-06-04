// This file is generated. Do not edit!

#include <string.h>
#include <stdio.h>
#include <pthread.h>
#include <dlfcn.h>
#include <erl_nif.h>
#include <EGL/egl.h>
#include <GL/gl.h>

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
    egl_nif_lib_handle = dlopen("/home/intjelic/Workspace/erlangsters/opengl-pilot/_checkouts/egl/priv/beam-egl.so", RTLD_LAZY);
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

    return 0;
}

static int nif_module_unload(ErlNifEnv* caller_env, void** priv_data)
{
    return 0;
}
ERL_NIF_TERM gl_bool_to_erl_boolean(ErlNifEnv* env, GLboolean val) {
    // return enif_make_atom(env, "tmp");
    return enif_make_atom(env, val == GL_TRUE ? "true" : "false");
}

static ERL_NIF_TERM nif_glDisable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glDisable(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisable_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glMemoryBarrierByRegion_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLbitfield arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glMemoryBarrierByRegion(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glMemoryBarrierByRegion(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glMemoryBarrierByRegion_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendFuncSeparatei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glBlendFuncSeparatei(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendFuncSeparatei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFuncSeparatei_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glQueryCounter_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glQueryCounter(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glQueryCounter(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glQueryCounter_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindRenderbuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindRenderbuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glEnableVertexAttribArray(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnableVertexAttribArray_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClearStencil_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glClearStencil(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClearStencil(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearStencil_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBeginQueryIndexed_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glBeginQueryIndexed(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBeginQueryIndexed(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginQueryIndexed_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribBinding_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexAttribBinding(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribBinding(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribBinding_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetProgramInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetProgramInfoLog(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramInfoLog_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexStorage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glTexStorage2D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexStorage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetProgramPipelineInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetProgramPipelineInfoLog(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramPipelineInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramPipelineInfoLog_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetBooleani_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLboolean* arg_2 = enif_alloc(sizeof(GLboolean) * arg_2_n);

    glGetBooleani_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, gl_bool_to_erl_boolean(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleani_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleani_v_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsEnabledi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    GLboolean ret = glIsEnabledi(arg_0, arg_1);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsEnabledi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsEnabledi_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateBuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateBuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilOp_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glStencilOp(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilOp(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOp_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsRenderbuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsRenderbuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetShaderiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetShaderiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetShaderiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderiv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_6;
    if (!enif_inspect_binary(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glTexSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFlush_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glFlush();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFlush(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFlush_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPauseTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glPauseTransformFeedback();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPauseTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPauseTransformFeedback_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsQuery(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsQuery_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glFramebufferTexture1D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferTexture1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTransformFeedback(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTransformFeedback_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glReadBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glReadBuffer(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glReadBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateProgramPipelines(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateProgramPipelines_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTextureSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTransformFeedbacks(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTransformFeedbacks_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    GLuint ret = glCreateShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glBindProgramPipeline(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindProgramPipeline_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindImageTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glBindImageTexture(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindImageTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindImageTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribPointer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_5;
    if (!enif_get_uint(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }


    glVertexAttribPointer(arg_0, arg_1, arg_2, arg_3, arg_4, (GLvoid*)arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribPointer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribPointer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCheckNamedFramebufferStatus_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    GLenum ret = glCheckNamedFramebufferStatus(arg_0, arg_1);

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCheckNamedFramebufferStatus(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCheckNamedFramebufferStatus_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetInteger64v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLint64* arg_1 = enif_alloc(sizeof(GLint64) * arg_1_n);

    glGetInteger64v(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64v_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureStorage2DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_5;
    if (enif_compare(argv[5], enif_make_atom(env, "true")) == 0) {
        arg_5 = GL_TRUE;
    } else if (enif_compare(argv[5], enif_make_atom(env, "false")) == 0) {
        arg_5 = GL_FALSE;
    }

    glTextureStorage2DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureStorage2DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureStorage2DMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawArraysInstanced_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glDrawArraysInstanced(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawArraysInstanced(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArraysInstanced_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteFramebuffers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteFramebuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPolygonOffset_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPolygonOffset(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonOffset_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEndTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glEndTransformFeedback();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEndTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndTransformFeedback_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glActiveShaderProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glActiveShaderProgram(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glActiveShaderProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glActiveShaderProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glStencilMask(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMask_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClampColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glClampColor(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClampColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClampColor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLintptr arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLintptr arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glCopyBufferSubData(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyBufferSubData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDisableVertexAttribArray(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisableVertexAttribArray_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLuint* arg_1 = enif_alloc(sizeof(GLuint) * arg_1_n);

    glCreateQueries(arg_0, arg_1_n, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_uint(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glCreateQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateQueries_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClearDepth_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLdouble arg_0;
    if (!enif_get_double(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glClearDepth(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClearDepth(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearDepth_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glLinkProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glLinkProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glLinkProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLinkProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompileShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glCompileShader(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompileShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompileShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDetachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDetachShader(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDetachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDetachShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetDoublev_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLdouble* arg_1 = enif_alloc(sizeof(GLdouble) * arg_1_n);

    glGetDoublev(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_double(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetDoublev(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetDoublev_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glScissorIndexed_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glScissorIndexed(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glScissorIndexed(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glScissorIndexed_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyImageSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLuint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLuint)arg_6_tmp;
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLint arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLint arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    GLint arg_10;
    if (!enif_get_int(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }
    GLint arg_11;
    if (!enif_get_int(env, argv[11], &arg_11)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_12;
    if (!enif_get_int(env, argv[12], &arg_12)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_13;
    if (!enif_get_int(env, argv[13], &arg_13)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_14;
    if (!enif_get_int(env, argv[14], &arg_14)) {
        return enif_make_badarg(env);
    }

    glCopyImageSubData(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10, arg_11, arg_12, arg_13, arg_14);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyImageSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyImageSubData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_7;
    if (!enif_inspect_binary(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCompressedTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glAttachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glAttachShader(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glAttachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glAttachShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTransformFeedbackBufferRange_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLintptr arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glTransformFeedbackBufferRange(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTransformFeedbackBufferRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTransformFeedbackBufferRange_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTransformFeedbackBufferBase_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glTransformFeedbackBufferBase(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTransformFeedbackBufferBase(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTransformFeedbackBufferBase_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenerateMipmap_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glGenerateMipmap(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glGenerateMipmap(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenerateMipmap_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateVertexArrays(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateVertexArrays_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCheckFramebufferStatus_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    GLenum ret = glCheckFramebufferStatus(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCheckFramebufferStatus(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCheckFramebufferStatus_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlitNamedFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLint arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLint arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLint arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    GLbitfield arg_10;
    if (!enif_get_int(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }
    GLenum arg_11;
    if (!enif_get_int(env, argv[11], &arg_11)) {
        return enif_make_badarg(env);
    }

    glBlitNamedFramebuffer(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10, arg_11);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlitNamedFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlitNamedFramebuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgram(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDisablei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDisablei(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisablei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisablei_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFenceSync_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLbitfield arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    GLuint ret = glFenceSync(arg_0, arg_1);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glFenceSync(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFenceSync_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetDoublei_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLdouble* arg_2 = enif_alloc(sizeof(GLdouble) * arg_2_n);

    glGetDoublei_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetDoublei_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetDoublei_v_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glWaitSync_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLbitfield arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glWaitSync(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glWaitSync(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glWaitSync_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTextures(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTextures_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEnablei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glEnablei(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEnablei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnablei_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glValidateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glValidateProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glValidateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindVertexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLintptr arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glBindVertexBuffer(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindVertexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindVertexBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetStringi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    const GLubyte* ret = glGetStringi(arg_0, arg_1);

    size_t ret_len = strlen((const char*)ret);
    ErlNifBinary ret_tmp;
    enif_alloc_binary(ret_len, &ret_tmp);
    memcpy(ret_tmp.data, ret, ret_len);
    ERL_NIF_TERM ret_0 = enif_make_binary(env, &ret_tmp);

    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetStringi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetStringi_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLenum arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLenum arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_10;
    if (!enif_inspect_binary(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glMemoryBarrier_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLbitfield arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glMemoryBarrier(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glMemoryBarrier(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glMemoryBarrier_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetnTexImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_size;
    enif_get_uint(env, argv[4], &arg_4_size);
    ErlNifBinary arg_4;

    glGetnTexImage(arg_0, arg_1, arg_2, arg_3, arg_4_size, arg_4.data);

    ERL_NIF_TERM arg_4_ret = enif_make_binary(env, &arg_4);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_4_ret
    );
}

static ERL_NIF_TERM nif_glGetnTexImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetnTexImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLint arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCopyTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindVertexArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glBindVertexArray(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindVertexArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindVertexArray_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_6;
    if (!enif_inspect_binary(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glTextureSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureSubImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateTransformFeedbacks(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateTransformFeedbacks_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDepthRangeIndexed_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLdouble arg_1;
    if (!enif_get_double(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLdouble arg_2;
    if (!enif_get_double(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glDepthRangeIndexed(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthRangeIndexed(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthRangeIndexed_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlitFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLint arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLbitfield arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLenum arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }

    glBlitFramebuffer(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlitFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlitFramebuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glNamedRenderbufferStorageMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glNamedRenderbufferStorageMultisample(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glNamedRenderbufferStorageMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glNamedRenderbufferStorageMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetCompressedTextureSubImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_8_size;
    enif_get_uint(env, argv[8], &arg_8_size);
    ErlNifBinary arg_8;

    glGetCompressedTextureSubImage(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8_size, arg_8.data);

    ERL_NIF_TERM arg_8_ret = enif_make_binary(env, &arg_8);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_8_ret
    );
}

static ERL_NIF_TERM nif_glGetCompressedTextureSubImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetCompressedTextureSubImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilMaskSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glStencilMaskSeparate(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilMaskSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMaskSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }
    GLuint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexAttribFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribFormat_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureStorage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glTextureStorage1D(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureStorage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureStorage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glScissor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glScissor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glScissor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glScissor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetError_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    GLenum ret = glGetError();

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetError(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetError_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsVertexArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsVertexArray(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsVertexArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsVertexArray_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLuint* arg_1 = enif_alloc(sizeof(GLuint) * arg_1_n);

    glCreateTextures(arg_0, arg_1_n, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_uint(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glCreateTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateTextures_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPointSize_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glPointSize(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPointSize(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPointSize_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTexture(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteShader(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteShader_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDepthRange_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLdouble arg_0;
    if (!enif_get_double(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLdouble arg_1;
    if (!enif_get_double(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDepthRange(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthRange_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetIntegeri_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetIntegeri_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegeri_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegeri_v_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glDrawBuffer(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glStencilFunc(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFunc_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayElementBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexArrayElementBuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayElementBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayElementBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenProgramPipelines(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenProgramPipelines_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsSync_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsSync(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsSync(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsSync_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexStorage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glTexStorage1D(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexStorage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glTexBuffer(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glDrawArrays(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArrays_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glFramebufferTexture2D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferTexture2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribIFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glVertexAttribIFormat(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribIFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribIFormat_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glProvokingVertex_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glProvokingVertex(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glProvokingVertex(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProvokingVertex_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glLineWidth_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glLineWidth(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glLineWidth(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLineWidth_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDepthMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    }

    glDepthMask(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthMask_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendEquationSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glBlendEquationSeparate(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendEquationSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureBufferRange_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLintptr arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glTextureBufferRange(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureBufferRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureBufferRange_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCopyTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glTextureBuffer(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glViewport_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glViewport(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glViewport(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glViewport_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetTextureImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_size;
    enif_get_uint(env, argv[4], &arg_4_size);
    ErlNifBinary arg_4;

    glGetTextureImage(arg_0, arg_1, arg_2, arg_3, arg_4_size, arg_4.data);

    ERL_NIF_TERM arg_4_ret = enif_make_binary(env, &arg_4);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_4_ret
    );
}

static ERL_NIF_TERM nif_glGetTextureImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTextureImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glInvalidateTexImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glInvalidateTexImage(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glInvalidateTexImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glInvalidateTexImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLenum arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLenum arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_9;
    if (!enif_inspect_binary(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }

    glTexImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBeginConditionalRender_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glBeginConditionalRender(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBeginConditionalRender(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginConditionalRender_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureStorage3DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_6;
    if (enif_compare(argv[6], enif_make_atom(env, "true")) == 0) {
        arg_6 = GL_TRUE;
    } else if (enif_compare(argv[6], enif_make_atom(env, "false")) == 0) {
        arg_6 = GL_FALSE;
    }

    glTextureStorage3DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureStorage3DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureStorage3DMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetTexImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_size;
    enif_get_uint(env, argv[4], &arg_4_size);
    ErlNifBinary arg_4;

    glGetTexImage(arg_0, arg_1, arg_2, arg_3, arg_4.data);

    ERL_NIF_TERM arg_4_ret = enif_make_binary(env, &arg_4);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_4_ret
    );
}

static ERL_NIF_TERM nif_glGetTexImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawTransformFeedbackInstanced_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glDrawTransformFeedbackInstanced(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawTransformFeedbackInstanced(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawTransformFeedbackInstanced_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteRenderbuffers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteRenderbuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCompressedTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindBuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    glCopyTexSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawArraysInstancedBaseInstance_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLuint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glDrawArraysInstancedBaseInstance(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawArraysInstancedBaseInstance(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArraysInstancedBaseInstance_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexBindingDivisor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexBindingDivisor(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexBindingDivisor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexBindingDivisor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendFunci_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glBlendFunci(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendFunci(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFunci_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBufferData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    const void* arg_2 = NULL;
    ErlNifBinary arg_2_bin;
    if (enif_is_identical(argv[2], enif_make_atom(env, "undefined"))) {
        arg_2 = NULL;
    }
    else if (enif_inspect_binary(env, argv[2], &arg_2_bin)) {
        arg_2 = arg_2_bin.data;
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glBufferData(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBufferData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBufferData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_6;
    if (!enif_inspect_binary(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glCompressedTexSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexSubImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetShaderSource(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderSource_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glSampleCoverage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
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
    }

    glSampleCoverage(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glSampleCoverage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSampleCoverage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilOpSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glStencilOpSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilOpSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOpSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLint arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_10;
    if (!enif_get_int(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glCopyTextureSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTextureSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTextureSubImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyNamedBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLintptr arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLintptr arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glCopyNamedBufferSubData(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyNamedBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyNamedBufferSubData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glBlendFunc(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFunc_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glUseProgramStages_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLbitfield arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glUseProgramStages(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glUseProgramStages(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgramStages_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glHint_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glHint(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glHint(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glHint_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribLPointer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glVertexAttribLPointer();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribLPointer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribLPointer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateSamplers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateSamplers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetBooleanv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLboolean* arg_1 = enif_alloc(sizeof(GLboolean) * arg_1_n);

    glGetBooleanv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, gl_bool_to_erl_boolean(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleanv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleanv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBeginTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glBeginTransformFeedback(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBeginTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginTransformFeedback_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetGraphicsResetStatus_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    GLenum ret = glGetGraphicsResetStatus();

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetGraphicsResetStatus(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetGraphicsResetStatus_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPolygonOffsetClamp_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
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

    glPolygonOffsetClamp(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPolygonOffsetClamp(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonOffsetClamp_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayBindingDivisor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glVertexArrayBindingDivisor(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayBindingDivisor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayBindingDivisor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendColor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexStorage2DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_5;
    if (enif_compare(argv[5], enif_make_atom(env, "true")) == 0) {
        arg_5 = GL_TRUE;
    } else if (enif_compare(argv[5], enif_make_atom(env, "false")) == 0) {
        arg_5 = GL_FALSE;
    }

    glTexStorage2DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexStorage2DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage2DMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEndQueryIndexed_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glEndQueryIndexed(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEndQueryIndexed(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndQueryIndexed_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgramPipeline(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgramPipeline_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBeginQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBeginQuery(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBeginQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginQuery_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTextureSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCompressedTextureSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTextureSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTextureSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexBufferRange_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLintptr arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glTexBufferRange(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexBufferRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexBufferRange_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glReleaseShaderCompiler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glReleaseShaderCompiler();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glReleaseShaderCompiler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReleaseShaderCompiler_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetFloati_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLfloat* arg_2 = enif_alloc(sizeof(GLfloat) * arg_2_n);

    glGetFloati_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetFloati_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFloati_v_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEndQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glEndQuery(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEndQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndQuery_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glNamedFramebufferTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glNamedFramebufferTexture(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glNamedFramebufferTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glNamedFramebufferTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteSamplers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteSamplers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glShaderSource_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClear_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLbitfield arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glClear(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClear(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClear_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glFramebufferRenderbuffer(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferRenderbuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribBinding_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glVertexArrayAttribBinding(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayAttribBinding(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribBinding_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    glCopyTextureSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTextureSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTextureSubImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glValidateProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glValidateProgramPipeline(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glValidateProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgramPipeline_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureStorage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glTextureStorage2D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureStorage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureStorage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLenum arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_7;
    if (!enif_inspect_binary(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glTexImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glInvalidateBufferData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glInvalidateBufferData(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glInvalidateBufferData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glInvalidateBufferData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glMinSampleShading_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glMinSampleShading(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glMinSampleShading(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glMinSampleShading_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawTransformFeedbackStreamInstanced_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glDrawTransformFeedbackStreamInstanced(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawTransformFeedbackStreamInstanced(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawTransformFeedbackStreamInstanced_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteSync_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteSync(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteSync(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteSync_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPrimitiveRestartIndex_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glPrimitiveRestartIndex(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPrimitiveRestartIndex(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPrimitiveRestartIndex_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDrawTransformFeedback(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawTransformFeedback_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glReadnPixels_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_6_size;
    enif_get_uint(env, argv[6], &arg_6_size);
    ErlNifBinary arg_6;

    glReadnPixels(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6_size, arg_6.data);

    ERL_NIF_TERM arg_6_ret = enif_make_binary(env, &arg_6);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_6_ret
    );
}

static ERL_NIF_TERM nif_glReadnPixels(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadnPixels_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCopyTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glStencilFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glStencilFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFuncSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetIntegerv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLint* arg_1 = enif_alloc(sizeof(GLint) * arg_1_n);

    glGetIntegerv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegerv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegerv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLenum arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLenum arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_10;
    if (!enif_inspect_binary(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glTextureSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureSubImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenVertexArrays(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenVertexArrays_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenRenderbuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenRenderbuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTextureSubImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_6;
    if (!enif_inspect_binary(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glCompressedTextureSubImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTextureSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTextureSubImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayVertexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLintptr arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glVertexArrayVertexBuffer(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayVertexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayVertexBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDepthFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glDepthFunc(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthFunc_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenFramebuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenFramebuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribDivisor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexAttribDivisor(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribDivisor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribDivisor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteProgramPipelines(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgramPipelines_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetFloatv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_n;
    enif_get_uint(env, argv[1], &arg_1_n);
    GLfloat* arg_1 = enif_alloc(sizeof(GLfloat) * arg_1_n);

    glGetFloatv(arg_0, arg_1);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_n-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_double(env, arg_1[i]), arg_1_ret);
    }
    enif_free(arg_1);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetFloatv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFloatv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexStorage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    glTexStorage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexStorage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glColorMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    }
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    }
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }

    glColorMask(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glColorMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glColorMask_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glInvalidateBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLintptr arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glInvalidateBufferSubData(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glInvalidateBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glInvalidateBufferSubData_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glRenderbufferStorageMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glRenderbufferStorageMultisample(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glRenderbufferStorageMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glRenderbufferStorageMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTexture(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureView_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLuint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;
    GLuint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLuint)arg_5_tmp;
    GLuint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLuint)arg_6_tmp;
    GLuint arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLuint)arg_7_tmp;

    glTextureView(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureView(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureView_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsFramebuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsFramebuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenSamplers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenSamplers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTransformFeedbacks(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTransformFeedbacks_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDisableVertexArrayAttrib_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDisableVertexArrayAttrib(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisableVertexArrayAttrib(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisableVertexArrayAttrib_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsSampler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsSampler(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsSampler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsSampler_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_6;
    if (!enif_inspect_binary(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glCompressedTexImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFrontFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glFrontFace(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFrontFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFrontFace_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureBarrier_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glTextureBarrier();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureBarrier(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureBarrier_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_4;
    if (enif_compare(argv[4], enif_make_atom(env, "true")) == 0) {
        arg_4 = GL_TRUE;
    } else if (enif_compare(argv[4], enif_make_atom(env, "false")) == 0) {
        arg_4 = GL_FALSE;
    }
    GLuint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLuint)arg_5_tmp;

    glVertexArrayAttribFormat(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayAttribFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribFormat_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendEquation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glBlendEquation(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendEquation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquation_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetString_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    const GLubyte* ret = glGetString(arg_0);

    size_t ret_len = strlen((const char*)ret);
    ErlNifBinary ret_tmp;
    enif_alloc_binary(ret_len, &ret_tmp);
    memcpy(ret_tmp.data, ret, ret_len);
    ERL_NIF_TERM ret_0 = enif_make_binary(env, &ret_tmp);

    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetString(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetString_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClientWaitSync_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLbitfield arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    GLenum ret = glClientWaitSync(arg_0, arg_1, arg_2);

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glClientWaitSync(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClientWaitSync_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetShaderInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_size;
    if (!enif_get_uint(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }

    ErlNifBinary arg_1_bin;
    if (!enif_alloc_binary(arg_1_size, &arg_1_bin)) {
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;


    glGetShaderInfoLog(arg_0, (GLsizei)arg_1_size, arg_1_length, (GLchar*)arg_1_bin.data);

    if (arg_1_length <= 0) {
        enif_release_binary(&arg_1_bin);
        return enif_make_tuple2(env, 
            enif_make_atom(env, "error"),
            enif_make_atom(env, "no_source_available")
        );
    }
    if ((GLsizei)arg_1_bin.size > arg_1_length) {
        if (!enif_realloc_binary(&arg_1_bin, arg_1_length)) {
            enif_release_binary(&arg_1_bin);
            return enif_make_tuple2(env, 
                enif_make_atom(env, "error"),
                enif_make_atom(env, "realloc_failed")
            );
        }
    }
    ERL_NIF_TERM arg_1_result = enif_make_binary(env, &arg_1_bin);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderInfoLog_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenQueries(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenQueries_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEnable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glEnable(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEnable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnable_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsBuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsBuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glBlendFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFuncSeparate_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTextureStorage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    glTextureStorage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTextureStorage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTextureStorage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindFramebuffer(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindFramebuffer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClipControl_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glClipControl(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClipControl(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClipControl_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glClearColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClearColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearColor_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendEquationSeparatei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glBlendEquationSeparatei(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendEquationSeparatei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationSeparatei_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCompressedTexImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteQueries(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteQueries_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glColorMaski_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    }
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    }
    GLboolean arg_4;
    if (enif_compare(argv[4], enif_make_atom(env, "true")) == 0) {
        arg_4 = GL_TRUE;
    } else if (enif_compare(argv[4], enif_make_atom(env, "false")) == 0) {
        arg_4 = GL_FALSE;
    }

    glColorMaski(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glColorMaski(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glColorMaski_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glFramebufferTexture(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTextures(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTextures_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glCreateRenderbuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glCreateRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateRenderbuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glRenderbufferStorage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glRenderbufferStorage(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glRenderbufferStorage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glRenderbufferStorage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glIsEnabled_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    GLboolean ret = glIsEnabled(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsEnabled(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsEnabled_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glPolygonMode_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glPolygonMode(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glPolygonMode(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonMode_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDispatchCompute_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glDispatchCompute(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDispatchCompute(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDispatchCompute_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribLFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLuint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexArrayAttribLFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayAttribLFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribLFormat_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLenum arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_10;
    if (!enif_inspect_binary(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glCompressedTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexSubImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteBuffers(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteBuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0_n;
    enif_get_uint(env, argv[0], &arg_0_n);
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenBuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenBuffers_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glActiveTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glActiveTexture(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glActiveTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glActiveTexture_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glResumeTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glResumeTransformFeedback();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glResumeTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glResumeTransformFeedback_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetInteger64i_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLint64* arg_2 = enif_alloc(sizeof(GLint64) * arg_2_n);

    glGetInteger64i_v(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64i_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64i_v_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFinish_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glFinish();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFinish(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFinish_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTexImage1D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLint arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }

    glCopyTexImage1D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage1D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEnableVertexArrayAttrib_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glEnableVertexArrayAttrib(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEnableVertexArrayAttrib(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnableVertexArrayAttrib_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glEndConditionalRender_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    glEndConditionalRender();

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glEndConditionalRender(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndConditionalRender_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexImage3DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_6;
    if (enif_compare(argv[6], enif_make_atom(env, "true")) == 0) {
        arg_6 = GL_TRUE;
    } else if (enif_compare(argv[6], enif_make_atom(env, "false")) == 0) {
        arg_6 = GL_FALSE;
    }

    glTexImage3DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage3DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage3DMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCompressedTextureSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLenum arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLsizeiptr arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_10;
    if (!enif_inspect_binary(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glCompressedTextureSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCompressedTextureSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTextureSubImage3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBlendEquationi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glBlendEquationi(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBlendEquationi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationi_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glInvalidateTexSubImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glInvalidateTexSubImage(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glInvalidateTexSubImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glInvalidateTexSubImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetTextureSubImage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }
    GLenum arg_8;
    if (!enif_get_int(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }
    GLenum arg_9;
    if (!enif_get_int(env, argv[9], &arg_9)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_10_size;
    enif_get_uint(env, argv[10], &arg_10_size);
    ErlNifBinary arg_10;

    glGetTextureSubImage(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, arg_10_size, arg_10.data);

    ERL_NIF_TERM arg_10_ret = enif_make_binary(env, &arg_10);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_10_ret
    );
}

static ERL_NIF_TERM nif_glGetTextureSubImage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTextureSubImage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCreateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{

    GLuint ret = glCreateProgram();

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDrawTransformFeedbackStream_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glDrawTransformFeedbackStream(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawTransformFeedbackStream(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawTransformFeedbackStream_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGenerateTextureMipmap_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glGenerateTextureMipmap(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glGenerateTextureMipmap(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenerateTextureMipmap_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexStorage3DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_6;
    if (enif_compare(argv[6], enif_make_atom(env, "true")) == 0) {
        arg_6 = GL_TRUE;
    } else if (enif_compare(argv[6], enif_make_atom(env, "false")) == 0) {
        arg_6 = GL_FALSE;
    }

    glTexStorage3DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexStorage3DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage3DMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferTextureLayer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    glFramebufferTextureLayer(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferTextureLayer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTextureLayer_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    glFramebufferTexture3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFramebufferTexture3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture3D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glTexImage2DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLboolean arg_5;
    if (enif_compare(argv[5], enif_make_atom(env, "true")) == 0) {
        arg_5 = GL_TRUE;
    } else if (enif_compare(argv[5], enif_make_atom(env, "false")) == 0) {
        arg_5 = GL_FALSE;
    }

    glTexImage2DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage2DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2DMultisample_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDispatchComputeIndirect_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLintptr arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glDispatchComputeIndirect(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDispatchComputeIndirect(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDispatchComputeIndirect_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCullFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }

    glCullFace(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCullFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCullFace_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLsizei arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteVertexArrays(arg_0, arg_1.data);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteVertexArrays_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glShaderStorageBlockBinding_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glShaderStorageBlockBinding(arg_0, arg_1, arg_2);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glShaderStorageBlockBinding(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glShaderStorageBlockBinding_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glGetProgramiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_n;
    enif_get_uint(env, argv[2], &arg_2_n);
    GLint* arg_2 = enif_alloc(sizeof(GLint) * arg_2_n);

    glGetProgramiv(arg_0, arg_1, arg_2);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_n-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2[i]), arg_2_ret);
    }
    enif_free(arg_2);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramiv_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glUseProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glUseProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glUseProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glReadPixels_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLint arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLenum arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLenum arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    unsigned int arg_6_size;
    enif_get_uint(env, argv[6], &arg_6_size);
    ErlNifBinary arg_6;

    glReadPixels(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6.data);

    ERL_NIF_TERM arg_6_ret = enif_make_binary(env, &arg_6);
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_6_ret
    );
}

static ERL_NIF_TERM nif_glReadPixels(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadPixels_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glDeleteProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteProgram(arg_0);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgram_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glNamedRenderbufferStorage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glNamedRenderbufferStorage(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glNamedRenderbufferStorage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glNamedRenderbufferStorage_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexAttribLFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLenum arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLuint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glVertexAttribLFormat(arg_0, arg_1, arg_2, arg_3);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexAttribLFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribLFormat_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glCopyTextureSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    if (!enif_get_int(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    if (!enif_get_int(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }
    GLint arg_5;
    if (!enif_get_int(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_6;
    if (!enif_get_int(env, argv[6], &arg_6)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_7;
    if (!enif_get_int(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCopyTextureSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTextureSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTextureSubImage2D_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glVertexArrayAttribIFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLuint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    if (!enif_get_int(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    if (!enif_get_int(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    GLuint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexArrayAttribIFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glVertexArrayAttribIFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexArrayAttribIFormat_command, env, argc, argv);
}

static ERL_NIF_TERM nif_glBindTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    GLenum arg_0;
    if (!enif_get_int(env, argv[0], &arg_0)) {
        return enif_make_badarg(env);
    }
    GLuint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTransformFeedback(arg_0, arg_1);

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glBindTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTransformFeedback_command, env, argc, argv);
}


static ErlNifFunc nif_functions[] = {
    {"glDisable_raw", 1, nif_glDisable},
    {"glMemoryBarrierByRegion_raw", 1, nif_glMemoryBarrierByRegion},
    {"glTexSubImage2D_raw", 9, nif_glTexSubImage2D},
    {"glBlendFuncSeparatei_raw", 5, nif_glBlendFuncSeparatei},
    {"glQueryCounter_raw", 2, nif_glQueryCounter},
    {"glBindRenderbuffer_raw", 2, nif_glBindRenderbuffer},
    {"glEnableVertexAttribArray_raw", 1, nif_glEnableVertexAttribArray},
    {"glClearStencil_raw", 1, nif_glClearStencil},
    {"glBeginQueryIndexed_raw", 3, nif_glBeginQueryIndexed},
    {"glVertexAttribBinding_raw", 2, nif_glVertexAttribBinding},
    {"glGetProgramInfoLog_raw", 2, nif_glGetProgramInfoLog},
    {"glTexStorage2D_raw", 5, nif_glTexStorage2D},
    {"glGetProgramPipelineInfoLog_raw", 2, nif_glGetProgramPipelineInfoLog},
    {"glGetBooleani_v_raw", 3, nif_glGetBooleani_v},
    {"glIsEnabledi_raw", 2, nif_glIsEnabledi},
    {"glCreateBuffers_raw", 1, nif_glCreateBuffers},
    {"glStencilOp_raw", 3, nif_glStencilOp},
    {"glIsRenderbuffer_raw", 1, nif_glIsRenderbuffer},
    {"glGetShaderiv_raw", 3, nif_glGetShaderiv},
    {"glTexSubImage1D_raw", 7, nif_glTexSubImage1D},
    {"glFlush_raw", 0, nif_glFlush},
    {"glPauseTransformFeedback_raw", 0, nif_glPauseTransformFeedback},
    {"glIsQuery_raw", 1, nif_glIsQuery},
    {"glFramebufferTexture1D_raw", 5, nif_glFramebufferTexture1D},
    {"glIsTransformFeedback_raw", 1, nif_glIsTransformFeedback},
    {"glReadBuffer_raw", 1, nif_glReadBuffer},
    {"glCreateProgramPipelines_raw", 1, nif_glCreateProgramPipelines},
    {"glTextureSubImage2D_raw", 9, nif_glTextureSubImage2D},
    {"glDeleteTransformFeedbacks_raw", 2, nif_glDeleteTransformFeedbacks},
    {"glCreateShader_raw", 1, nif_glCreateShader},
    {"glBindProgramPipeline_raw", 1, nif_glBindProgramPipeline},
    {"glBindImageTexture_raw", 7, nif_glBindImageTexture},
    {"glVertexAttribPointer_raw", 6, nif_glVertexAttribPointer},
    {"glCheckNamedFramebufferStatus_raw", 2, nif_glCheckNamedFramebufferStatus},
    {"glGetInteger64v_raw", 2, nif_glGetInteger64v},
    {"glTextureStorage2DMultisample_raw", 6, nif_glTextureStorage2DMultisample},
    {"glDrawArraysInstanced_raw", 4, nif_glDrawArraysInstanced},
    {"glDeleteFramebuffers_raw", 2, nif_glDeleteFramebuffers},
    {"glPolygonOffset_raw", 2, nif_glPolygonOffset},
    {"glEndTransformFeedback_raw", 0, nif_glEndTransformFeedback},
    {"glActiveShaderProgram_raw", 2, nif_glActiveShaderProgram},
    {"glStencilMask_raw", 1, nif_glStencilMask},
    {"glClampColor_raw", 2, nif_glClampColor},
    {"glCopyBufferSubData_raw", 5, nif_glCopyBufferSubData},
    {"glDisableVertexAttribArray_raw", 1, nif_glDisableVertexAttribArray},
    {"glCreateQueries_raw", 2, nif_glCreateQueries},
    {"glClearDepth_raw", 1, nif_glClearDepth},
    {"glLinkProgram_raw", 1, nif_glLinkProgram},
    {"glCompileShader_raw", 1, nif_glCompileShader},
    {"glDetachShader_raw", 2, nif_glDetachShader},
    {"glGetDoublev_raw", 2, nif_glGetDoublev},
    {"glScissorIndexed_raw", 5, nif_glScissorIndexed},
    {"glCopyImageSubData_raw", 15, nif_glCopyImageSubData},
    {"glCompressedTexImage2D_raw", 8, nif_glCompressedTexImage2D},
    {"glAttachShader_raw", 2, nif_glAttachShader},
    {"glTransformFeedbackBufferRange_raw", 5, nif_glTransformFeedbackBufferRange},
    {"glTransformFeedbackBufferBase_raw", 3, nif_glTransformFeedbackBufferBase},
    {"glGenerateMipmap_raw", 1, nif_glGenerateMipmap},
    {"glCreateVertexArrays_raw", 1, nif_glCreateVertexArrays},
    {"glCheckFramebufferStatus_raw", 1, nif_glCheckFramebufferStatus},
    {"glBlitNamedFramebuffer_raw", 12, nif_glBlitNamedFramebuffer},
    {"glIsProgram_raw", 1, nif_glIsProgram},
    {"glDisablei_raw", 2, nif_glDisablei},
    {"glFenceSync_raw", 2, nif_glFenceSync},
    {"glGetDoublei_v_raw", 3, nif_glGetDoublei_v},
    {"glIsShader_raw", 1, nif_glIsShader},
    {"glWaitSync_raw", 3, nif_glWaitSync},
    {"glGenTextures_raw", 1, nif_glGenTextures},
    {"glEnablei_raw", 2, nif_glEnablei},
    {"glValidateProgram_raw", 1, nif_glValidateProgram},
    {"glBindVertexBuffer_raw", 4, nif_glBindVertexBuffer},
    {"glGetStringi_raw", 2, nif_glGetStringi},
    {"glTexSubImage3D_raw", 11, nif_glTexSubImage3D},
    {"glMemoryBarrier_raw", 1, nif_glMemoryBarrier},
    {"glGetnTexImage_raw", 5, nif_glGetnTexImage},
    {"glCopyTexImage2D_raw", 8, nif_glCopyTexImage2D},
    {"glBindVertexArray_raw", 1, nif_glBindVertexArray},
    {"glTextureSubImage1D_raw", 7, nif_glTextureSubImage1D},
    {"glCreateTransformFeedbacks_raw", 1, nif_glCreateTransformFeedbacks},
    {"glDepthRangeIndexed_raw", 3, nif_glDepthRangeIndexed},
    {"glBlitFramebuffer_raw", 10, nif_glBlitFramebuffer},
    {"glNamedRenderbufferStorageMultisample_raw", 5, nif_glNamedRenderbufferStorageMultisample},
    {"glGetCompressedTextureSubImage_raw", 9, nif_glGetCompressedTextureSubImage},
    {"glStencilMaskSeparate_raw", 2, nif_glStencilMaskSeparate},
    {"glVertexAttribFormat_raw", 5, nif_glVertexAttribFormat},
    {"glTextureStorage1D_raw", 4, nif_glTextureStorage1D},
    {"glScissor_raw", 4, nif_glScissor},
    {"glTexImage2D_raw", 9, nif_glTexImage2D},
    {"glGetError_raw", 0, nif_glGetError},
    {"glIsVertexArray_raw", 1, nif_glIsVertexArray},
    {"glCreateTextures_raw", 2, nif_glCreateTextures},
    {"glPointSize_raw", 1, nif_glPointSize},
    {"glBindTexture_raw", 2, nif_glBindTexture},
    {"glDeleteShader_raw", 1, nif_glDeleteShader},
    {"glDepthRange_raw", 2, nif_glDepthRange},
    {"glGetIntegeri_v_raw", 3, nif_glGetIntegeri_v},
    {"glDrawBuffer_raw", 1, nif_glDrawBuffer},
    {"glStencilFunc_raw", 3, nif_glStencilFunc},
    {"glVertexArrayElementBuffer_raw", 2, nif_glVertexArrayElementBuffer},
    {"glGenProgramPipelines_raw", 1, nif_glGenProgramPipelines},
    {"glIsSync_raw", 1, nif_glIsSync},
    {"glTexStorage1D_raw", 4, nif_glTexStorage1D},
    {"glTexBuffer_raw", 3, nif_glTexBuffer},
    {"glDrawArrays_raw", 3, nif_glDrawArrays},
    {"glFramebufferTexture2D_raw", 5, nif_glFramebufferTexture2D},
    {"glVertexAttribIFormat_raw", 4, nif_glVertexAttribIFormat},
    {"glProvokingVertex_raw", 1, nif_glProvokingVertex},
    {"glLineWidth_raw", 1, nif_glLineWidth},
    {"glDepthMask_raw", 1, nif_glDepthMask},
    {"glBlendEquationSeparate_raw", 2, nif_glBlendEquationSeparate},
    {"glTextureBufferRange_raw", 5, nif_glTextureBufferRange},
    {"glCopyTexSubImage3D_raw", 9, nif_glCopyTexSubImage3D},
    {"glTextureBuffer_raw", 3, nif_glTextureBuffer},
    {"glViewport_raw", 4, nif_glViewport},
    {"glGetTextureImage_raw", 5, nif_glGetTextureImage},
    {"glInvalidateTexImage_raw", 2, nif_glInvalidateTexImage},
    {"glTexImage3D_raw", 10, nif_glTexImage3D},
    {"glBeginConditionalRender_raw", 2, nif_glBeginConditionalRender},
    {"glTextureStorage3DMultisample_raw", 7, nif_glTextureStorage3DMultisample},
    {"glGetTexImage_raw", 5, nif_glGetTexImage},
    {"glDrawTransformFeedbackInstanced_raw", 3, nif_glDrawTransformFeedbackInstanced},
    {"glDeleteRenderbuffers_raw", 2, nif_glDeleteRenderbuffers},
    {"glCompressedTexSubImage2D_raw", 9, nif_glCompressedTexSubImage2D},
    {"glBindBuffer_raw", 2, nif_glBindBuffer},
    {"glCopyTexSubImage1D_raw", 6, nif_glCopyTexSubImage1D},
    {"glDrawArraysInstancedBaseInstance_raw", 5, nif_glDrawArraysInstancedBaseInstance},
    {"glVertexBindingDivisor_raw", 2, nif_glVertexBindingDivisor},
    {"glBlendFunci_raw", 3, nif_glBlendFunci},
    {"glBufferData_raw", 4, nif_glBufferData},
    {"glCompressedTexSubImage1D_raw", 7, nif_glCompressedTexSubImage1D},
    {"glGetShaderSource_raw", 2, nif_glGetShaderSource},
    {"glSampleCoverage_raw", 2, nif_glSampleCoverage},
    {"glStencilOpSeparate_raw", 4, nif_glStencilOpSeparate},
    {"glCopyTextureSubImage3D_raw", 11, nif_glCopyTextureSubImage3D},
    {"glCopyNamedBufferSubData_raw", 5, nif_glCopyNamedBufferSubData},
    {"glBlendFunc_raw", 2, nif_glBlendFunc},
    {"glUseProgramStages_raw", 3, nif_glUseProgramStages},
    {"glHint_raw", 2, nif_glHint},
    {"glVertexAttribLPointer_raw", 0, nif_glVertexAttribLPointer},
    {"glCreateSamplers_raw", 1, nif_glCreateSamplers},
    {"glGetBooleanv_raw", 2, nif_glGetBooleanv},
    {"glBeginTransformFeedback_raw", 1, nif_glBeginTransformFeedback},
    {"glGetGraphicsResetStatus_raw", 0, nif_glGetGraphicsResetStatus},
    {"glPolygonOffsetClamp_raw", 3, nif_glPolygonOffsetClamp},
    {"glVertexArrayBindingDivisor_raw", 3, nif_glVertexArrayBindingDivisor},
    {"glBlendColor_raw", 4, nif_glBlendColor},
    {"glTexStorage2DMultisample_raw", 6, nif_glTexStorage2DMultisample},
    {"glEndQueryIndexed_raw", 2, nif_glEndQueryIndexed},
    {"glIsProgramPipeline_raw", 1, nif_glIsProgramPipeline},
    {"glBeginQuery_raw", 2, nif_glBeginQuery},
    {"glCompressedTextureSubImage2D_raw", 9, nif_glCompressedTextureSubImage2D},
    {"glTexBufferRange_raw", 5, nif_glTexBufferRange},
    {"glReleaseShaderCompiler_raw", 0, nif_glReleaseShaderCompiler},
    {"glGetFloati_v_raw", 3, nif_glGetFloati_v},
    {"glEndQuery_raw", 1, nif_glEndQuery},
    {"glNamedFramebufferTexture_raw", 4, nif_glNamedFramebufferTexture},
    {"glDeleteSamplers_raw", 2, nif_glDeleteSamplers},
    {"glShaderSource_raw", 2, nif_glShaderSource},
    {"glClear_raw", 1, nif_glClear},
    {"glFramebufferRenderbuffer_raw", 4, nif_glFramebufferRenderbuffer},
    {"glVertexArrayAttribBinding_raw", 3, nif_glVertexArrayAttribBinding},
    {"glCopyTextureSubImage1D_raw", 6, nif_glCopyTextureSubImage1D},
    {"glValidateProgramPipeline_raw", 1, nif_glValidateProgramPipeline},
    {"glTextureStorage2D_raw", 5, nif_glTextureStorage2D},
    {"glTexImage1D_raw", 8, nif_glTexImage1D},
    {"glInvalidateBufferData_raw", 1, nif_glInvalidateBufferData},
    {"glMinSampleShading_raw", 1, nif_glMinSampleShading},
    {"glDrawTransformFeedbackStreamInstanced_raw", 4, nif_glDrawTransformFeedbackStreamInstanced},
    {"glDeleteSync_raw", 1, nif_glDeleteSync},
    {"glPrimitiveRestartIndex_raw", 1, nif_glPrimitiveRestartIndex},
    {"glDrawTransformFeedback_raw", 2, nif_glDrawTransformFeedback},
    {"glReadnPixels_raw", 7, nif_glReadnPixels},
    {"glCopyTexSubImage2D_raw", 8, nif_glCopyTexSubImage2D},
    {"glStencilFuncSeparate_raw", 4, nif_glStencilFuncSeparate},
    {"glGetIntegerv_raw", 2, nif_glGetIntegerv},
    {"glTextureSubImage3D_raw", 11, nif_glTextureSubImage3D},
    {"glGenVertexArrays_raw", 1, nif_glGenVertexArrays},
    {"glGenRenderbuffers_raw", 1, nif_glGenRenderbuffers},
    {"glCompressedTextureSubImage1D_raw", 7, nif_glCompressedTextureSubImage1D},
    {"glVertexArrayVertexBuffer_raw", 5, nif_glVertexArrayVertexBuffer},
    {"glDepthFunc_raw", 1, nif_glDepthFunc},
    {"glGenFramebuffers_raw", 1, nif_glGenFramebuffers},
    {"glVertexAttribDivisor_raw", 2, nif_glVertexAttribDivisor},
    {"glDeleteProgramPipelines_raw", 2, nif_glDeleteProgramPipelines},
    {"glGetFloatv_raw", 2, nif_glGetFloatv},
    {"glTexStorage3D_raw", 6, nif_glTexStorage3D},
    {"glColorMask_raw", 4, nif_glColorMask},
    {"glInvalidateBufferSubData_raw", 3, nif_glInvalidateBufferSubData},
    {"glRenderbufferStorageMultisample_raw", 5, nif_glRenderbufferStorageMultisample},
    {"glIsTexture_raw", 1, nif_glIsTexture},
    {"glTextureView_raw", 8, nif_glTextureView},
    {"glIsFramebuffer_raw", 1, nif_glIsFramebuffer},
    {"glGenSamplers_raw", 1, nif_glGenSamplers},
    {"glGenTransformFeedbacks_raw", 1, nif_glGenTransformFeedbacks},
    {"glDisableVertexArrayAttrib_raw", 2, nif_glDisableVertexArrayAttrib},
    {"glIsSampler_raw", 1, nif_glIsSampler},
    {"glCompressedTexImage1D_raw", 7, nif_glCompressedTexImage1D},
    {"glFrontFace_raw", 1, nif_glFrontFace},
    {"glTextureBarrier_raw", 0, nif_glTextureBarrier},
    {"glVertexArrayAttribFormat_raw", 6, nif_glVertexArrayAttribFormat},
    {"glBlendEquation_raw", 1, nif_glBlendEquation},
    {"glGetString_raw", 1, nif_glGetString},
    {"glClientWaitSync_raw", 3, nif_glClientWaitSync},
    {"glGetShaderInfoLog_raw", 2, nif_glGetShaderInfoLog},
    {"glGenQueries_raw", 1, nif_glGenQueries},
    {"glEnable_raw", 1, nif_glEnable},
    {"glIsBuffer_raw", 1, nif_glIsBuffer},
    {"glBlendFuncSeparate_raw", 4, nif_glBlendFuncSeparate},
    {"glTextureStorage3D_raw", 6, nif_glTextureStorage3D},
    {"glBindFramebuffer_raw", 2, nif_glBindFramebuffer},
    {"glClipControl_raw", 2, nif_glClipControl},
    {"glClearColor_raw", 4, nif_glClearColor},
    {"glBlendEquationSeparatei_raw", 3, nif_glBlendEquationSeparatei},
    {"glCompressedTexImage3D_raw", 9, nif_glCompressedTexImage3D},
    {"glDeleteQueries_raw", 2, nif_glDeleteQueries},
    {"glColorMaski_raw", 5, nif_glColorMaski},
    {"glFramebufferTexture_raw", 4, nif_glFramebufferTexture},
    {"glDeleteTextures_raw", 2, nif_glDeleteTextures},
    {"glCreateRenderbuffers_raw", 1, nif_glCreateRenderbuffers},
    {"glRenderbufferStorage_raw", 4, nif_glRenderbufferStorage},
    {"glIsEnabled_raw", 1, nif_glIsEnabled},
    {"glPolygonMode_raw", 2, nif_glPolygonMode},
    {"glDispatchCompute_raw", 3, nif_glDispatchCompute},
    {"glVertexArrayAttribLFormat_raw", 5, nif_glVertexArrayAttribLFormat},
    {"glCompressedTexSubImage3D_raw", 11, nif_glCompressedTexSubImage3D},
    {"glDeleteBuffers_raw", 2, nif_glDeleteBuffers},
    {"glGenBuffers_raw", 1, nif_glGenBuffers},
    {"glActiveTexture_raw", 1, nif_glActiveTexture},
    {"glResumeTransformFeedback_raw", 0, nif_glResumeTransformFeedback},
    {"glGetInteger64i_v_raw", 3, nif_glGetInteger64i_v},
    {"glFinish_raw", 0, nif_glFinish},
    {"glCopyTexImage1D_raw", 7, nif_glCopyTexImage1D},
    {"glEnableVertexArrayAttrib_raw", 2, nif_glEnableVertexArrayAttrib},
    {"glEndConditionalRender_raw", 0, nif_glEndConditionalRender},
    {"glTexImage3DMultisample_raw", 7, nif_glTexImage3DMultisample},
    {"glCompressedTextureSubImage3D_raw", 11, nif_glCompressedTextureSubImage3D},
    {"glBlendEquationi_raw", 2, nif_glBlendEquationi},
    {"glInvalidateTexSubImage_raw", 8, nif_glInvalidateTexSubImage},
    {"glGetTextureSubImage_raw", 11, nif_glGetTextureSubImage},
    {"glCreateProgram_raw", 0, nif_glCreateProgram},
    {"glDrawTransformFeedbackStream_raw", 3, nif_glDrawTransformFeedbackStream},
    {"glGenerateTextureMipmap_raw", 1, nif_glGenerateTextureMipmap},
    {"glTexStorage3DMultisample_raw", 7, nif_glTexStorage3DMultisample},
    {"glFramebufferTextureLayer_raw", 5, nif_glFramebufferTextureLayer},
    {"glFramebufferTexture3D_raw", 6, nif_glFramebufferTexture3D},
    {"glTexImage2DMultisample_raw", 6, nif_glTexImage2DMultisample},
    {"glDispatchComputeIndirect_raw", 1, nif_glDispatchComputeIndirect},
    {"glCullFace_raw", 1, nif_glCullFace},
    {"glDeleteVertexArrays_raw", 2, nif_glDeleteVertexArrays},
    {"glShaderStorageBlockBinding_raw", 3, nif_glShaderStorageBlockBinding},
    {"glGetProgramiv_raw", 3, nif_glGetProgramiv},
    {"glUseProgram_raw", 1, nif_glUseProgram},
    {"glReadPixels_raw", 7, nif_glReadPixels},
    {"glDeleteProgram_raw", 1, nif_glDeleteProgram},
    {"glNamedRenderbufferStorage_raw", 4, nif_glNamedRenderbufferStorage},
    {"glVertexAttribLFormat_raw", 4, nif_glVertexAttribLFormat},
    {"glCopyTextureSubImage2D_raw", 8, nif_glCopyTextureSubImage2D},
    {"glVertexArrayAttribIFormat_raw", 5, nif_glVertexArrayAttribIFormat},
    {"glBindTransformFeedback_raw", 2, nif_glBindTransformFeedback}
};

ERL_NIF_INIT(
    gl,
    nif_functions,
    nif_module_load,
    NULL,
    NULL,
    nif_module_unload
);
