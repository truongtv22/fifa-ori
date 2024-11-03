.class public Lcom/garena/pay/android/helper/UILoop;
.super Ljava/lang/Object;
.source "UILoop.java"


# static fields
.field private static volatile INSTANCE:Lcom/garena/pay/android/helper/UILoop;


# instance fields
.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/garena/pay/android/helper/UILoop;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/garena/pay/android/helper/UILoop;
    .locals 2

    sget-object v0, Lcom/garena/pay/android/helper/UILoop;->INSTANCE:Lcom/garena/pay/android/helper/UILoop;

    if-nez v0, :cond_1

    const-class v0, Lcom/garena/pay/android/helper/UILoop;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/garena/pay/android/helper/UILoop;->INSTANCE:Lcom/garena/pay/android/helper/UILoop;

    if-nez v1, :cond_0

    new-instance v1, Lcom/garena/pay/android/helper/UILoop;

    invoke-direct {v1}, Lcom/garena/pay/android/helper/UILoop;-><init>()V

    sput-object v1, Lcom/garena/pay/android/helper/UILoop;->INSTANCE:Lcom/garena/pay/android/helper/UILoop;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/garena/pay/android/helper/UILoop;->INSTANCE:Lcom/garena/pay/android/helper/UILoop;

    return-object v0
.end method


# virtual methods
.method public cancelPost(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/helper/UILoop;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public delayPost(Ljava/lang/Runnable;I)V
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/helper/UILoop;->uiHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/helper/UILoop;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
