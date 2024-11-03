.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGGetRebateOptions(Landroid/content/Context;Lcom/garena/pay/android/data/GGRebateOptionsRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/RebatesResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/RebatesResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "getRebateOptions request timeout"

    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;->onGetRebateOptions(ILjava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;->onGetRebateOptions(ILjava/util/List;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/RebatesResp;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RebatesResp;->getErrorCode()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RebatesResp;->getErrorCode()I

    move-result p1

    invoke-interface {v0, p1, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;->onGetRebateOptions(ILjava/util/List;)V

    return-object v1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RebatesResp;->getRebates()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RebatesResp;->getRebates()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;->onGetRebateOptions(ILjava/util/List;)V

    return-object v1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$9;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetRebateOptionsCallback;->onGetRebateOptions(ILjava/util/List;)V

    return-object v1
.end method
