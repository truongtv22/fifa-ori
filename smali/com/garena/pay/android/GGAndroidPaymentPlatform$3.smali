.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->localizeChannelDenominations(Landroid/app/Activity;Ljava/util/List;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/util/List<",
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

.field final synthetic val$channel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

.field final synthetic val$channelList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;Ljava/util/List;Lcom/garena/pay/android/data/GGPayment$PaymentChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$channelList:Ljava/util/List;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$channel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$channel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/garena/pay/android/data/GGPayment$Denomination;

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setPrice(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/garena/pay/android/data/GGPayment$Denomination;->setPriceCode(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$channel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->setItems(Ljava/util/List;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$channelList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$3;->val$channelList:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;->onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V

    return-object v1
.end method
