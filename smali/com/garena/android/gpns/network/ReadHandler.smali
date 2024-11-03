.class public Lcom/garena/android/gpns/network/ReadHandler;
.super Landroid/os/Handler;
.source "ReadHandler.java"

# interfaces
.implements Lcom/garena/android/gpns/network/PacketReadListener;


# static fields
.field private static final ON_PACKET_READ:I = 0x0

.field private static final ON_READ_FAILED:I = 0x1


# instance fields
.field private final mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/garena/android/gpns/network/PacketReadListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/garena/android/gpns/network/ReadHandler;->mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/garena/android/gpns/network/ReadHandler;->mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/PacketReadListener;->onReadFailed(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    iget-object v0, p0, Lcom/garena/android/gpns/network/ReadHandler;->mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/PacketReadListener;->onPacketRead(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPacketRead(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/network/ReadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onReadFailed(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/network/ReadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
