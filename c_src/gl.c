// This file is generated. Do not edit!

#include <string.h>
#include <stdio.h>
#include <pthread.h>
#include <dlfcn.h>
#include <erl_nif.h>
#include <EGL/egl.h>
#include <glad/glad.h>

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
char beam_egl_so_path[1024];
if (!enif_get_string(env, arg, beam_egl_so_path, sizeof(beam_egl_so_path), ERL_NIF_LATIN1)) {
    fprintf(stderr, "failed to read EGL binding library path from argument\n");
    return -1;
}

egl_nif_lib_handle = dlopen(beam_egl_so_path, RTLD_NOW);
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDisable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisable_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glClearStencil(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearStencil_command, env, argc, (ERL_NIF_TERM *)argv);
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsRenderbuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFlush_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glFlush();

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glReadBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateShader_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glValidateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgram_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glStencilMaskSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMaskSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDepthRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthRange_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDrawArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArrays_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexSubImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenVertexArrays_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glFrontFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFrontFace_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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

    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribiv_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTexImage1D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage1D_command, env, argc, (ERL_NIF_TERM *)argv);
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
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
    return enif_make_tuple2(env,
        enif_make_atom(env, "ok"),
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

    return enif_make_atom(env, "ok");
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glUseProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgram_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glDeleteProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgram_command, env, argc, (ERL_NIF_TERM *)argv);
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

    return enif_make_atom(env, "ok");
}

static ERL_NIF_TERM nif_glCopyTextureSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTextureSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}


static ErlNifFunc nif_functions[] = {
{"glad_load_gl", 0, nif_gladLoadGl, 0},
    {"glDisable_raw", 1, nif_glDisable, 0},
    {"glBlendFuncSeparatei_raw", 5, nif_glBlendFuncSeparatei, 0},
    {"glEnableVertexAttribArray_raw", 1, nif_glEnableVertexAttribArray, 0},
    {"glClearStencil_raw", 1, nif_glClearStencil, 0},
    {"glGetProgramInfoLog_raw", 2, nif_glGetProgramInfoLog, 0},
    {"glGetProgramPipelineInfoLog_raw", 2, nif_glGetProgramPipelineInfoLog, 0},
    {"glGetBooleani_v_raw", 3, nif_glGetBooleani_v, 0},
    {"glIsEnabledi_raw", 2, nif_glIsEnabledi, 0},
    {"glCreateBuffers_raw", 1, nif_glCreateBuffers, 0},
    {"glStencilOp_raw", 3, nif_glStencilOp, 0},
    {"glIsRenderbuffer_raw", 1, nif_glIsRenderbuffer, 0},
    {"glFlush_raw", 0, nif_glFlush, 0},
    {"glIsQuery_raw", 1, nif_glIsQuery, 0},
    {"glIsTransformFeedback_raw", 1, nif_glIsTransformFeedback, 0},
    {"glReadBuffer_raw", 1, nif_glReadBuffer, 0},
    {"glDeleteTransformFeedbacks_raw", 2, nif_glDeleteTransformFeedbacks, 0},
    {"glCreateShader_raw", 1, nif_glCreateShader, 0},
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
    {"glScissor_raw", 4, nif_glScissor, 0},
    {"glTexImage2D_raw", 9, nif_glTexImage2D, 0},
    {"glIsVertexArray_raw", 1, nif_glIsVertexArray, 0},
    {"glCreateTextures_raw", 2, nif_glCreateTextures, 0},
    {"glPointSize_raw", 1, nif_glPointSize, 0},
    {"glBindTexture_raw", 2, nif_glBindTexture, 0},
    {"glDeleteShader_raw", 1, nif_glDeleteShader, 0},
    {"glDepthRange_raw", 2, nif_glDepthRange, 0},
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
    {"glLineWidth_raw", 1, nif_glLineWidth, 0},
    {"glDepthMask_raw", 1, nif_glDepthMask, 0},
    {"glCopyTexSubImage3D_raw", 9, nif_glCopyTexSubImage3D, 0},
    {"glViewport_raw", 4, nif_glViewport, 0},
    {"glTexImage3D_raw", 10, nif_glTexImage3D, 0},
    {"glBeginConditionalRender_raw", 2, nif_glBeginConditionalRender, 0},
    {"glGetTexImage_raw", 5, nif_glGetTexImage, 0},
    {"glBindBuffer_raw", 2, nif_glBindBuffer, 0},
    {"glCopyTexSubImage1D_raw", 6, nif_glCopyTexSubImage1D, 0},
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
    {"glDeleteBuffers_raw", 2, nif_glDeleteBuffers, 0},
    {"glGenBuffers_raw", 1, nif_glGenBuffers, 0},
    {"glActiveTexture_raw", 1, nif_glActiveTexture, 0},
    {"glGetInteger64i_v_raw", 3, nif_glGetInteger64i_v, 0},
    {"glFinish_raw", 0, nif_glFinish, 0},
    {"glCopyTexImage1D_raw", 7, nif_glCopyTexImage1D, 0},
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
    {"glDeleteProgram_raw", 1, nif_glDeleteProgram, 0},
    {"glCopyTextureSubImage2D_raw", 8, nif_glCopyTextureSubImage2D, 0}
};

ERL_NIF_INIT(
    gl,
    nif_functions,
    nif_module_load,
    NULL,
    NULL,
    nif_module_unload
);
