.class public abstract Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BlockingRunner"
.end annotation


# instance fields
.field private m_done:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;->m_done:Z

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;->run()V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;->waitUntilDone()V

    return-void
.end method

.method private waitUntilDone()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;->m_done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;->m_done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract run()V
.end method

.method protected setDone()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;->m_done:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
