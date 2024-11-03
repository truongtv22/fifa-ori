.class Lcom/ea/games/gamesdk/GarenaSdk$4$1;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;


# direct methods
.method constructor <init>(Lcom/ea/games/gamesdk/GarenaSdk$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=====[PAYMENT] = error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk;->mRequestCatalogCB:Lcom/ea/games/gamesdk/SdkCallback;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    iget-object p2, p2, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p2, p2, Lcom/ea/games/gamesdk/GarenaSdk;->mDenominations:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/garena/pay/android/data/GGPayment$Denomination;

    sget-object v1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=====[PAYMENT] denom.getItemId() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=====[PAYMENT] denom.getPrice() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ea/games/gamesdk/CatalogInfo;

    invoke-direct {v1}, Lcom/ea/games/gamesdk/CatalogInfo;-><init>()V

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ea/games/gamesdk/CatalogInfo;->mDescription:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    iget-object v3, v3, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v3}, Lcom/ea/games/gamesdk/GarenaSdk;->access$500(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ea/games/gamesdk/CatalogInfo;->mSku:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ea/games/gamesdk/CatalogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPrice()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ea/games/gamesdk/CatalogInfo;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    iget-object v2, v2, Lcom/ea/games/gamesdk/GarenaSdk$4;->val$items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/games/gamesdk/CatalogInfo;

    invoke-virtual {v3}, Lcom/ea/games/gamesdk/CatalogInfo;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/ea/games/gamesdk/CatalogInfo;->mAdditionalInfo:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/ea/games/gamesdk/CatalogInfo;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    iget-object v2, v2, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object v2, v2, Lcom/ea/games/gamesdk/GarenaSdk;->mDenominations:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/ea/games/gamesdk/CatalogInfo;->mSku:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=====[PAYMENT] GarenaSdk.this.mRequestCatalogCB.OnSucceed"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$4;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk;->mRequestCatalogCB:Lcom/ea/games/gamesdk/SdkCallback;

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    return-void
.end method
