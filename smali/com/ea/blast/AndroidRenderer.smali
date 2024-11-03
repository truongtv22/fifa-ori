.class public Lcom/ea/blast/AndroidRenderer;
.super Ljava/lang/Object;
.source "AndroidRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/AndroidRenderer"


# instance fields
.field private mActivity:Lcom/ea/blast/MainActivity;

.field private mCapture:Z

.field private mExceptionSet:Z

.field private mFile:Ljava/io/File;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ea/blast/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    iput-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mCapture:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/blast/AndroidRenderer;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/ea/blast/AndroidRenderer;->mFile:Ljava/io/File;

    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer;->mActivity:Lcom/ea/blast/MainActivity;

    return-void
.end method

.method private DoCapture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/AndroidRenderer;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ea/blast/AndroidRenderer;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, v2, v0, v1, p1}, Lcom/ea/blast/AndroidRenderer;->createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/ea/blast/AndroidRenderer;->mFile:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/ea/blast/AndroidRenderer;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    iput-boolean v2, p0, Lcom/ea/blast/AndroidRenderer;->mCapture:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer;->mView:Landroid/view/View;

    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer;->mFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$002(Lcom/ea/blast/AndroidRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    return p1
.end method

.method private static createBitmapFromGLSurface(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    mul-int v0, p2, p3

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object v2, p4

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    :try_start_0
    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p3, :cond_1

    mul-int p1, p0, p2

    sub-int p4, p3, p0

    add-int/lit8 p4, p4, -0x1

    mul-int p4, p4, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v3, p1, v2

    aget v3, v1, v3

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    const v6, -0xff0100

    and-int/2addr v3, v6

    or-int/2addr v3, v5

    or-int/2addr v3, v4

    add-int v4, p4, v2

    aput v3, v0, v4
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public Capture(Landroid/view/View;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mCapture:Z

    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/ea/blast/AndroidRenderer;->mFile:Ljava/io/File;

    return-void
.end method

.method public native NativeOnDrawFrame()V
.end method

.method public native NativeOnSurfaceChanged(II)V
.end method

.method public native NativeOnSurfaceCreated()V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/AndroidRenderer;->NativeOnDrawFrame()V

    iget-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mCapture:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/AndroidRenderer;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/AndroidRenderer;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ea/blast/AndroidRenderer;->DoCapture(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/ea/blast/AndroidRenderer;->NativeOnSurfaceChanged(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    iget-boolean p1, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance p2, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;

    invoke-direct {p2, p0}, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;-><init>(Lcom/ea/blast/AndroidRenderer;)V

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/AndroidRenderer;->NativeOnSurfaceCreated()V

    return-void
.end method
