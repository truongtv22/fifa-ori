.class public Lcom/garena/android/gpns/processor/RegionResponseProcessor;
.super Lcom/garena/android/gpns/processor/AbstractProcessor;
.source "RegionResponseProcessor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/processor/AbstractProcessor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public process([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/garena/android/gpns/utility/WireUtil;->parseGetRegionResponse([BII)Lcom/garena/android/gpnprotocol/gpush/GetRegionResponse;

    move-result-object p1

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/GetRegionResponse;->Region:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/garena/android/gpns/processor/RegionResponseProcessor;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/garena/android/gpns/storage/LocalStorage;->updateRegionRequestTime(Landroid/content/Context;J)V

    iget-object p2, p0, Lcom/garena/android/gpns/processor/RegionResponseProcessor;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/garena/android/gpns/storage/LocalStorage;->setAuthServerAddress(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p1

    const-string p2, "CONNECT_AUTHENTICATION_SERVER"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    return-void
.end method
