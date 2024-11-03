.class public final Lcom/garena/android/gpns/utility/TCPPacketFactory;
.super Ljava/lang/Object;
.source "TCPPacketFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPacketName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "REGION_RESPONSE"

    return-object p0

    :pswitch_1
    const-string p0, "PING_ACK"

    return-object p0

    :pswitch_2
    const-string p0, "PUSH_NOTIFICATION"

    return-object p0

    :pswitch_3
    const-string p0, "AUTH_RESPONSE"

    return-object p0

    :cond_0
    const-string p0, "REGION_REQUEST"

    return-object p0

    :cond_1
    const-string p0, "PING_REQUEST"

    return-object p0

    :cond_2
    const-string p0, "PUSH_ACK"

    return-object p0

    :cond_3
    const-string p0, "CONNECTION_REQUEST"

    return-object p0

    :cond_4
    const-string p0, "AUTH_REQUEST"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newAuthRequestPacket(Landroid/content/Context;)Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 3

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;-><init>()V

    invoke-static {p0}, Lcom/garena/android/gpns/utility/DeviceUtil;->getDeviceId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->Sign(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getConnectionId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->OldId(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    invoke-virtual {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    move-result-object p0

    new-instance v0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    invoke-static {p0}, Lcom/garena/android/gpns/utility/WireUtil;->marshall(Lcom/squareup/wire/Message;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;-><init>(I[B)V

    invoke-virtual {v0, v2}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->setTimed(Z)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->setTimeout(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth packet: Command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sign: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " oldid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newConnectionRequestPacket(J)Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 1

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;->GPid(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;

    invoke-virtual {v0}, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;

    move-result-object p0

    new-instance p1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    const/4 v0, 0x2

    invoke-static {p0}, Lcom/garena/android/gpns/utility/WireUtil;->marshall(Lcom/squareup/wire/Message;)[B

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/garena/android/gpns/network/tcp/TCPPacket;-><init>(I[B)V

    return-object p1
.end method

.method public static newPingRequestPacket()Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 3

    new-instance v0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;-><init>(I[B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->setTimed(Z)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->setTimeout(I)V

    return-object v0
.end method

.method public static newPushMessageAckPacket(I)Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 2

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;->Msgid(Ljava/lang/Integer;)Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;

    new-instance p0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    invoke-virtual {v0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/WireUtil;->marshall(Lcom/squareup/wire/Message;)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/garena/android/gpns/network/tcp/TCPPacket;-><init>(I[B)V

    return-object p0
.end method

.method public static newRegionRequestPacket()Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 3

    new-instance v0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;-><init>(I[B)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->setTimed(Z)V

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->setTimeout(I)V

    return-object v0
.end method
