.class public Lcom/ea/blast/EglUtils;
.super Ljava/lang/Object;
.source "EglUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PrintConfig(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 36

    move-object/from16 v0, p0

    const/16 v1, 0x21

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v3, "EGL_BUFFER_SIZE"

    const-string v4, "EGL_RED_SIZE"

    const-string v5, "EGL_GREEN_SIZE"

    const-string v6, "EGL_BLUE_SIZE"

    const-string v7, "EGL_ALPHA_SIZE"

    const-string v8, "EGL_DEPTH_SIZE"

    const-string v9, "EGL_STENCIL_SIZE"

    const-string v10, "EGL_CONFIG_CAVEAT"

    const-string v11, "EGL_CONFIG_ID"

    const-string v12, "EGL_LEVEL"

    const-string v13, "EGL_MAX_PBUFFER_WIDTH"

    const-string v14, "EGL_MAX_PBUFFER_HEIGHT"

    const-string v15, "EGL_MAX_PBUFFER_PIXELS"

    const-string v16, "EGL_NATIVE_RENDERABLE"

    const-string v17, "EGL_NATIVE_VISUAL_ID"

    const-string v18, "EGL_NATIVE_VISUAL_TYPE"

    const-string v19, "EGL_PRESERVED_RESOURCES"

    const-string v20, "EGL_SAMPLES"

    const-string v21, "EGL_SAMPLE_BUFFERS"

    const-string v22, "EGL_SURFACE_TYPE"

    const-string v23, "EGL_TRANSPARENT_TYPE"

    const-string v24, "EGL_TRANSPARENT_RED_VALUE"

    const-string v25, "EGL_TRANSPARENT_GREEN_VALUE"

    const-string v26, "EGL_TRANSPARENT_BLUE_VALUE"

    const-string v27, "EGL_BIND_TO_TEXTURE_RGB"

    const-string v28, "EGL_BIND_TO_TEXTURE_RGBA"

    const-string v29, "EGL_MIN_SWAP_INTERVAL"

    const-string v30, "EGL_MAX_SWAP_INTERVAL"

    const-string v31, "EGL_LUMINANCE_SIZE"

    const-string v32, "EGL_ALPHA_MASK_SIZE"

    const-string v33, "EGL_COLOR_BUFFER_TYPE"

    const-string v34, "EGL_RENDERABLE_TYPE"

    const-string v35, "EGL_CONFORMANT"

    filled-new-array/range {v3 .. v35}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_1

    aget v8, v2, v7

    aget-object v9, v3, v7

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-interface {v10, v11, v12, v8, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aget v9, v5, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "  %s: %d\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v9, v8, v6

    const-string v9, "  %s: ???\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3020
        0x3024
        0x3023
        0x3022
        0x3021
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302c
        0x302a
        0x302b
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method public static PrintConfigs(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d configurations"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "Configuration %d:\n"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, p3, v1

    invoke-static {p0, p1, p2, v2}, Lcom/ea/blast/EglUtils;->PrintConfig(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
