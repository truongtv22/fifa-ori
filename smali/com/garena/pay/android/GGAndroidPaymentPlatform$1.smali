.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->getPaymentChannelList(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

.field final synthetic val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;Lcom/garena/pay/android/data/GGPayment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$activity:Landroid/app/Activity;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
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

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Connection Timed Out"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v0, Lcom/garena/pay/android/exception/ValidationException;

    const-string v2, "Response was null or not correct"

    invoke-direct {v0, v2}, Lcom/garena/pay/android/exception/ValidationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$paymentRequest:Lcom/garena/pay/android/data/GGPayment;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->isConvertGooglePlayPrices()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    invoke-static {v0, p1, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->access$000(Landroid/app/Activity;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    :goto_1
    return-object v1

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$1;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "parse response error"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1
.end method
