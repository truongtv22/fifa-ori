.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGGetEventsPricing(Landroid/content/Context;Lcom/garena/pay/android/data/GGPayment;Ljava/lang/String;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/EventPricingResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;Lcom/garena/pay/android/data/GGPayment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$context:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventPricingResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    const-string p1, "getEventsPricing request timeout"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    const-string v3, "Connection Timed Out"

    invoke-direct {v1, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, v2, v2, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/EventPricingResp;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getErrorCode()I

    move-result v0

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getResultCode()I

    move-result v1

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v2, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    :cond_3
    return-object v2

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

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

    invoke-interface {p1, v0, v2, v2, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    :cond_5
    return-object v2

    :cond_6
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->isConvertGooglePlayPrices()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getChannels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getEvents()Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    invoke-static {v0, v1, p1, v3}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->access$100(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$5;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getChannels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/EventPricingResp;->getEvents()Ljava/util/List;

    move-result-object p1

    new-instance v4, Ljava/lang/Exception;

    sget-object v5, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v5}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3, v1, p1, v4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;->onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V

    :cond_8
    :goto_1
    return-object v2
.end method
