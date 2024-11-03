.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGPayEventsInit(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Ljava/lang/String;Lcom/garena/pay/android/data/GGPayment$Denomination;ILcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;Lcom/garena/pay/android/GGPayResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/EventInitResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$denomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

.field final synthetic val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

.field final synthetic val$payCallback:Lcom/garena/pay/android/GGPayResponseCallback;

.field final synthetic val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;I)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    iput-object p4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$payCallback:Lcom/garena/pay/android/GGPayResponseCallback;

    iput-object p5, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$denomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

    iput p6, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$requestCode:I

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventInitResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    const-string p1, "payEventInit request timeout"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Connection Timed Out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;->onResultObtained(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const-string v0, "payEventInit is faulted"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v3, v2, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;->onResultObtained(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/EventInitResp;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventInitResp;->getErrorCode()I

    move-result v0

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventInitResp;->getResultCode()I

    move-result v3

    new-instance v4, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventInitResp;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v2, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;->onResultObtained(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "payEventInit errorCode = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventInitResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v3, Ljava/lang/Exception;

    sget-object v4, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v4}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v2, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;->onResultObtained(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_5
    const-string p1, "payEventInit Network response parse failed"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_6
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/beetalk/sdk/cache/PreferenceHelper;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PreferenceHelper;

    move-result-object v0

    const-string v1, "KEY_EVENT_TXN_ID"

    iget-object v3, p1, Lcom/beetalk/sdk/networking/model/EventInitResp;->event_txn_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/beetalk/sdk/cache/PreferenceHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$initCallback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventInitResp;->getResultCode()I

    move-result v1

    iget-object v3, p1, Lcom/beetalk/sdk/networking/model/EventInitResp;->event_txn_id:Ljava/lang/String;

    new-instance v4, Ljava/lang/Exception;

    sget-object v5, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v5}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v3, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPayEventInitCallback;->onResultObtained(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    iget-object p1, p1, Lcom/beetalk/sdk/networking/model/EventInitResp;->event_txn_id:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    iget-object v1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$payCallback:Lcom/garena/pay/android/GGPayResponseCallback;

    iget-object v3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$denomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

    iget v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$7;->val$requestCode:I

    invoke-static {p1, v0, v1, v3, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPaymentWithItem(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;I)V

    :cond_8
    return-object v2
.end method
