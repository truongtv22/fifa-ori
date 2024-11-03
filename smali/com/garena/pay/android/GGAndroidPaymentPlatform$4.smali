.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGLoadEventConfigs(Landroid/content/Context;Ljava/lang/String;ZLcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activeOnly:Z

.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$version:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$activeOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    const-string p1, "getRebateIdList request timeout"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, "Connection Timed Out"

    invoke-direct {v1, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v2, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getErrorCode()I

    move-result v0

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getResultCode()I

    move-result v1

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_3
    return-object v2

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/Exception;

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v2, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_5
    return-object v2

    :cond_6
    iget-object v0, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->events:Ljava/util/List;

    iget-object v3, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->response:Ljava/lang/String;

    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$version:Ljava/lang/String;

    iget-object v5, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v4

    const-string v5, "KEY_EVENT_CONFIG_VERSION"

    iget-object v6, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/beetalk/sdk/cache/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v4

    iget-object p1, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    invoke-virtual {v4, p1, v3}, Lcom/beetalk/sdk/cache/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->version:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, p1, v3}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    move-result-object p1

    iget-object v0, p1, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->events:Ljava/util/List;

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "response = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;

    iget-boolean v5, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$activeOnly:Z

    if-eqz v5, :cond_9

    iget-wide v5, v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;->end_time:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_8

    iget-wide v5, v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;->start_time:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    goto :goto_2

    :cond_9
    iget-object v5, v1, Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;->configs:Ljava/util/List;

    if-eqz v5, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$4;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/Exception;

    sget-object v4, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v4}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p1, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;->onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V

    :cond_b
    return-object v2
.end method
