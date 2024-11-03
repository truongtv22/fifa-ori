.class public Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;
.super Ljava/lang/Object;
.source "TCPPacketTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mOnTimeoutListener:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

.field private final mOnTimeoutRunnable:Ljava/lang/Runnable;

.field private final mPacket:Lcom/garena/android/gpns/network/tcp/TCPPacket;


# direct methods
.method public constructor <init>(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;-><init>(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)V

    iput-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mPacket:Lcom/garena/android/gpns/network/tcp/TCPPacket;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutListener:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mPacket:Lcom/garena/android/gpns/network/tcp/TCPPacket;

    return-object p0
.end method


# virtual methods
.method public isWaitingFor(Lcom/garena/android/gpns/network/tcp/TCPPacket;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setOnTimeoutListener(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutListener:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutListener:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mPacket:Lcom/garena/android/gpns/network/tcp/TCPPacket;

    invoke-virtual {v2}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutListener:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->mOnTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
