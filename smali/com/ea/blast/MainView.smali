.class public Lcom/ea/blast/MainView;
.super Landroid/opengl/GLSurfaceView;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/MainView$ConfigChooser;,
        Lcom/ea/blast/MainView$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/MainView"


# instance fields
.field private mActivity:Lcom/ea/blast/MainActivity;

.field private mRenderer:Lcom/ea/blast/AndroidRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/ea/blast/MainActivity;

    iput-object p1, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x18

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/ea/blast/MainView;->init(ZIII)V

    return-void
.end method

.method private init(ZIII)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/blast/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    new-instance v1, Lcom/ea/blast/MainView$ContextFactory;

    invoke-direct {v1, v0}, Lcom/ea/blast/MainView$ContextFactory;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    new-instance v1, Lcom/ea/blast/MainView$ContextFactory;

    invoke-direct {v1, v0}, Lcom/ea/blast/MainView$ContextFactory;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    :cond_2
    if-eqz p1, :cond_3

    new-instance v8, Lcom/ea/blast/MainView$ConfigChooser;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v0, v8

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;-><init>(IIIIIII)V

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/ea/blast/MainView$ConfigChooser;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object v0, v8

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;-><init>(IIIIIII)V

    :goto_0
    invoke-virtual {p0, v8}, Lcom/ea/blast/MainView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    new-instance v0, Lcom/ea/blast/AndroidRenderer;

    iget-object v1, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    invoke-direct {v0, v1}, Lcom/ea/blast/AndroidRenderer;-><init>(Lcom/ea/blast/MainActivity;)V

    iput-object v0, p0, Lcom/ea/blast/MainView;->mRenderer:Lcom/ea/blast/AndroidRenderer;

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method


# virtual methods
.method public Capture(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/MainView;->mRenderer:Lcom/ea/blast/AndroidRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/ea/blast/AndroidRenderer;->Capture(Landroid/view/View;Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "EAMCore/MainView"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
