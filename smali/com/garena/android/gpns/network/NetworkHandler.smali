.class public Lcom/garena/android/gpns/network/NetworkHandler;
.super Landroid/os/Handler;
.source "NetworkHandler.java"

# interfaces
.implements Lcom/garena/android/gpns/network/NetworkRequestHandler;


# static fields
.field private static final AUTH_WITH_SERVER:I = 0x2

.field private static final CONNECT_REGION_SERVER:I = 0x3

.field public static final ON_PACKET_SEND:I = 0x0

.field public static final SETUP_CONNECTION:I = 0x1


# instance fields
.field private final mRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/garena/android/gpns/network/NetworkRequestHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/garena/android/gpns/network/NetworkHandler;->mRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    return-void
.end method


# virtual methods
.method public connectAuthenticationServer()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/garena/android/gpns/network/NetworkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public connectNotificationServer()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/garena/android/gpns/network/NetworkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public connectRegionServer()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/garena/android/gpns/network/NetworkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CONNECT_REGION_SERVER"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/network/NetworkHandler;->mRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {p1}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->connectRegionServer()V

    goto :goto_0

    :cond_1
    const-string p1, "AUTH_WITH_SERVER"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/network/NetworkHandler;->mRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {p1}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->connectAuthenticationServer()V

    goto :goto_0

    :cond_2
    const-string p1, "SETUP_CONNECTION"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/network/NetworkHandler;->mRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {p1}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->connectNotificationServer()V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ON_PACKET_SEND : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->getPacketName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkHandler;->mRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/network/NetworkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
