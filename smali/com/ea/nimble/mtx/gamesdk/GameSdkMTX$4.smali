.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/games/gamesdk/SdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restoreSdkProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ea/games/gamesdk/SdkCallback<",
        "Ljava/util/List<",
        "Lcom/ea/games/gamesdk/TransactionInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const-string v1, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public OnFailed(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z

    return-void
.end method

.method public bridge synthetic OnSucceed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->OnSucceed(Ljava/util/List;)V

    return-void
.end method

.method public OnSucceed(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/TransactionInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/games/gamesdk/TransactionInfo;

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v2, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/TransactionInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/TransactionInfo;->getStampToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/TransactionInfo;->getStampToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$402(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;I)I

    const-string p1, "Restore Item Count = 0"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    sget-object v0, Lcom/ea/nimble/Error$Code;->BILLING_NO_RESTORE_BILL:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {v2, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$402(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;I)I

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v3

    const-string v4, "product_id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;

    iget-object v5, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {v4, v5}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    invoke-virtual {v4, v3}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->setProductId(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->setStampToken(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getLogPrice()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->setLogPrice(J)V

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->setCurrencyCode(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {v0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$600(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;)V

    return-void
.end method
