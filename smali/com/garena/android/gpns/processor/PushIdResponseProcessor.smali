.class public Lcom/garena/android/gpns/processor/PushIdResponseProcessor;
.super Lcom/garena/android/gpns/processor/AbstractProcessor;
.source "PushIdResponseProcessor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/processor/AbstractProcessor;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private broadcastGPIDChange(J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.garena.android.gpns.GPID_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "gpid_update_intent_extra_gpid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/garena/android/gpns/processor/PushIdResponseProcessor;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public process([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/garena/android/gpns/utility/WireUtil;->parseGetGPidResponse([BII)Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;

    move-result-object p1

    iget-object p2, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetGPidResponse gPid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/garena/android/gpns/processor/PushIdResponseProcessor;->broadcastGPIDChange(J)V

    :cond_0
    iget-object v0, p0, Lcom/garena/android/gpns/processor/PushIdResponseProcessor;->context:Landroid/content/Context;

    invoke-static {v0, p2, p3}, Lcom/garena/android/gpns/storage/LocalStorage;->saveConnectionId(Landroid/content/Context;J)V

    iget-object p2, p0, Lcom/garena/android/gpns/processor/PushIdResponseProcessor;->context:Landroid/content/Context;

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/garena/android/gpns/storage/LocalStorage;->saveConnectionAddress(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p1

    const-string p2, "CONNECT_NOTIFICATION_SERVER"

    invoke-virtual {p1, p2, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p1

    const-string p2, "RECONNECT_WHEN_INVALID_GIP_RECEIVED"

    invoke-virtual {p1, p2, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    :goto_0
    return-void
.end method
