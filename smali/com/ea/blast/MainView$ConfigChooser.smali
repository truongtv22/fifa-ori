.class Lcom/ea/blast/MainView$ConfigChooser;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGlApi:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    iput p1, p0, Lcom/ea/blast/MainView$ConfigChooser;->mRedSize:I

    iput p2, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGreenSize:I

    iput p3, p0, Lcom/ea/blast/MainView$ConfigChooser;->mBlueSize:I

    iput p4, p0, Lcom/ea/blast/MainView$ConfigChooser;->mAlphaSize:I

    iput p5, p0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    iput p6, p0, Lcom/ea/blast/MainView$ConfigChooser;->mStencilSize:I

    iput p7, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget v1, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aput v2, v0, v2

    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_1
    const/4 v1, 0x4

    aput v1, v0, v2

    :cond_2
    new-array v7, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v1, 0x0

    aget v5, v7, v1

    if-lez v5, :cond_4

    new-array v8, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v8

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-virtual {p0, p1, p2, v8}, Lcom/ea/blast/MainView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "EAMCore/MainView"

    invoke-static {v1, p1, p2, v0}, Lcom/ea/blast/EglUtils;->PrintConfig(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3040
        0x0
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    const/4 v8, 0x0

    move-object v9, v8

    :cond_0
    :goto_0
    if-nez v9, :cond_5

    array-length v10, v7

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, v7, v11

    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, v6, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    if-lt v13, v1, :cond_2

    iget v1, v6, Lcom/ea/blast/MainView$ConfigChooser;->mStencilSize:I

    if-ge v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    const/16 v4, 0x3021

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    iget v1, v6, Lcom/ea/blast/MainView$ConfigChooser;->mRedSize:I

    if-ne v13, v1, :cond_2

    iget v1, v6, Lcom/ea/blast/MainView$ConfigChooser;->mGreenSize:I

    if-ne v14, v1, :cond_2

    iget v1, v6, Lcom/ea/blast/MainView$ConfigChooser;->mBlueSize:I

    if-ne v15, v1, :cond_2

    iget v1, v6, Lcom/ea/blast/MainView$ConfigChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_2

    move-object v9, v12

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-nez v9, :cond_0

    iget v0, v6, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x8

    iput v0, v6, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    goto :goto_0

    :cond_4
    return-object v8

    :cond_5
    return-object v9
.end method
