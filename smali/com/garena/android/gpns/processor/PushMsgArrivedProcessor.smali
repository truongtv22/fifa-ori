.class public Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;
.super Lcom/garena/android/gpns/processor/AbstractProcessor;
.source "PushMsgArrivedProcessor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/processor/AbstractProcessor;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private filterMessagesToShow(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/storage/LocalStorage;->getAcknowledgedMsgList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/garena/android/gpnprotocol/gpush/MsgType;

    iget-object v4, v3, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, v3, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/garena/android/gpns/storage/LocalStorage;->putAcknowledgedMsgList(Landroid/content/Context;Ljava/util/List;)V

    return-object v2
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public process([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/garena/android/gpns/utility/WireUtil;->parsePushMsg([BII)Lcom/garena/android/gpnprotocol/gpush/PushMsg;

    move-result-object p1

    iget-object p2, p1, Lcom/garena/android/gpnprotocol/gpush/PushMsg;->Msg:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;->filterMessagesToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/garena/android/gpnprotocol/gpush/MsgType;

    iget-object v0, p0, Lcom/garena/android/gpns/processor/PushMsgArrivedProcessor;->context:Landroid/content/Context;

    iget-object v1, p3, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p3, p3, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    invoke-static {v0, v1, p3}, Lcom/garena/android/gpns/ui/NotificationBroadcaster;->broadcast(Landroid/content/Context;ILokio/ByteString;)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/PushMsg;->Msg:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->newPushMessageAckPacket(I)Lcom/garena/android/gpns/network/tcp/TCPPacket;

    move-result-object p1

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p2

    new-instance p3, Lcom/garena/android/gpns/notification/event/NotifyEvent;

    invoke-direct {p3, p1}, Lcom/garena/android/gpns/notification/event/NotifyEvent;-><init>(Ljava/lang/Object;)V

    const-string p1, "ACK_PUSH_MSG"

    invoke-virtual {p2, p1, p3}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    return-void
.end method
