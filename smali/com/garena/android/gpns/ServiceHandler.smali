.class public Lcom/garena/android/gpns/ServiceHandler;
.super Landroid/os/Handler;
.source "ServiceHandler.java"

# interfaces
.implements Lcom/garena/android/gpns/network/NetworkResponseListener;


# static fields
.field private static final CONNECTION_DROPPED:I = 0x2

.field private static final CONNECTION_OK:I = 0x4

.field private static final ON_PACKET_ARRIVED:I = 0x0

.field private static final PACKET_FAILED:I = 0x3

.field private static final UNABLE_TO_CONNECT:I = 0x1


# instance fields
.field private final mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;


# direct methods
.method public constructor <init>(Lcom/garena/android/gpns/network/NetworkResponseListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/garena/android/gpns/ServiceHandler;->mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;

    return-void
.end method

.method private getConnectionName(I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "AUTH_SERVER"

    goto :goto_0

    :cond_0
    const-string p1, "NOTIFICATION_SERVER"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-string v0, "CONNECTION_OK : "

    const-string v1, "PACKET_FAILED : "

    const-string v2, "CONNECTION_DROPPED : "

    const-string v3, "UNABLE_TO_CONNECT : "

    const-string v4, "ON_PACKET_ARRIVED : "

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-eqz v5, :cond_4

    const/4 v4, 0x1

    if-eq v5, v4, :cond_3

    const/4 v3, 0x2

    if-eq v5, v3, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_1

    const/4 v1, 0x4

    if-eq v5, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/ServiceHandler;->getConnectionName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/ServiceHandler;->getConnectionName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/ServiceHandler;->mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onConnectionOK(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    if-eqz v0, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v2

    invoke-static {v2}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->getPacketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->getPacketName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/ServiceHandler;->mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/ServiceHandler;->getConnectionName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/ServiceHandler;->getConnectionName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/ServiceHandler;->mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onConnectionDropped(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/ServiceHandler;->getConnectionName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/ServiceHandler;->getConnectionName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/ServiceHandler;->mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onUnableToConnect(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    if-eqz v0, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->getPacketName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->getPacketName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/ServiceHandler;->mResponseListener:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onResponseArrived(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConnectionDropped(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConnectionOK(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onResponseArrived(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnableToConnect(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
