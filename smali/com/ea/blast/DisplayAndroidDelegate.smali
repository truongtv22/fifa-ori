.class Lcom/ea/blast/DisplayAndroidDelegate;
.super Ljava/lang/Object;
.source "DisplayAndroidDelegate.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = true

.field private static final WAIT_DURATION_MS:J = 0x96L

.field private static final WAIT_FOR_UI_THREAD_COMPLETION:Z = true

.field private static final kDisplayOrientationLockUnknown:I

.field private static final kDisplayOrientationLocked:I

.field private static final kDisplayOrientationUnlocked:I

.field private static final kOrientationNormal:I

.field private static final kOrientationRotatedLeft:I

.field private static final kOrientationRotatedRight:I

.field private static final kOrientationUnknown:I

.field private static final kOrientationUpsideDown:I


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private final mDpiX:F

.field private final mDpiY:F

.field private mLock:Ljava/lang/Object;

.field private final mPortraitByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationNormal()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationUpsideDown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationRotatedLeft()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationRotatedRight()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUnknown:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetDisplayOrientationLockUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLockUnknown:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetDisplayOrientationLocked()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLocked:I

    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetDisplayOrientationUnlocked()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationUnlocked:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiX:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiY:F

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getNaturalOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DisplayAndroidDelegate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native NativeGetDisplayOrientationLockUnknown()I
.end method

.method public static native NativeGetDisplayOrientationLocked()I
.end method

.method public static native NativeGetDisplayOrientationUnlocked()I
.end method

.method public static native NativeGetOrientationNormal()I
.end method

.method public static native NativeGetOrientationRotatedLeft()I
.end method

.method public static native NativeGetOrientationRotatedRight()I
.end method

.method public static native NativeGetOrientationUnknown()I
.end method

.method public static native NativeGetOrientationUpsideDown()I
.end method

.method static synthetic access$000(Lcom/ea/blast/DisplayAndroidDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public AttachView(Landroid/view/View;I)V
    .locals 0

    const-string p2, "DisplayAndroidDelegate.AttachView()"

    invoke-direct {p0, p2}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p2, Lcom/ea/blast/DisplayAndroidDelegate$1;

    invoke-direct {p2, p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate$1;-><init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/ea/blast/DisplayAndroidDelegate;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public BringToFront(Landroid/view/View;)V
    .locals 1

    const-string v0, "DisplayAndroidDelegate.BringToFront()"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ea/blast/DisplayAndroidDelegate$3;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate$3;-><init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public DetachView(Landroid/view/View;)V
    .locals 1

    const-string v0, "DisplayAndroidDelegate.DetachView()"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ea/blast/DisplayAndroidDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate$2;-><init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public GetCurrentHeight()I
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getDisplayHeight()I

    move-result v0

    return v0
.end method

.method public GetCurrentWidth()I
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getDisplayWidth()I

    move-result v0

    return v0
.end method

.method public GetDisplayOrientationLock()I
    .locals 2

    :try_start_0
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLockUnknown:I

    return v0

    :cond_0
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationUnlocked:I

    return v0

    :cond_1
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLocked:I

    return v0

    :catch_0
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLockUnknown:I

    return v0
.end method

.method public GetDpiX()F
    .locals 1

    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiX:F

    return v0
.end method

.method public GetDpiY()F
    .locals 1

    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiY:F

    return v0
.end method

.method public GetGLView()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v0, v0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    return-object v0
.end method

.method public GetStdOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUnknown:I

    return v0

    :cond_0
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    return v0

    :cond_1
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    return v0

    :cond_2
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    return v0

    :cond_3
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    return v0
.end method

.method public SetStdOrientation(I)V
    .locals 3

    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    const-string v0, "Request kOrientationNormal"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    const/16 v1, 0x9

    const/16 v2, 0x8

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    const-string v0, "Request kOrientationUpsideDown"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/16 p1, 0x9

    :goto_1
    const-string v0, "Request kOrientationRotatedRight"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    if-ne p1, v0, :cond_6

    iget-boolean p1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x8

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    :goto_2
    const-string v0, "Request kOrientationRotatedLeft"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string p1, "Request invalid orientation"

    invoke-direct {p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    const/4 p1, -0x1

    :goto_3
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public notifyUiThreadOperationCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DisplayAndroidDelegate.notify()"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public runOnUiThreadAndWait(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, p1}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const-string p1, "DisplayAndroidDelegate.wait()..."

    invoke-direct {p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Ljava/lang/Object;->wait(J)V

    const-string p1, "...DisplayAndroidDelegate.wait()"

    invoke-direct {p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
