.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->getAppItems(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/AppItemsResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/AppItemsResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Connection Timed Out"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/AppItemsResp;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/AppItemsResp;->getErrorCode()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/AppItemsResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/AppItemsResp;->getAppItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/AppItemsResp;->getAppItems()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;

    invoke-interface {v0, p1, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$2;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;

    new-instance v0, Ljava/lang/Exception;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentAppItemsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1
.end method
