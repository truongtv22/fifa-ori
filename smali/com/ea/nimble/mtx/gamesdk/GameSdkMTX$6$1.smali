.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/games/gamesdk/SdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;->callback(Ljava/util/List;Ljava/lang/Exception;)V
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
        "Lcom/ea/games/gamesdk/CatalogInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCatalogItems Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const-string v1, "nimble.notification.mtx.refreshcatalogfinished"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public OnFailed(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCatalogItems Failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const-string v1, "nimble.notification.mtx.refreshcatalogfinished"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic OnSucceed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;->OnSucceed(Ljava/util/List;)V

    return-void
.end method

.method public OnSucceed(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/CatalogInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/games/gamesdk/CatalogInfo;

    new-instance v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-direct {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;-><init>()V

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getSku()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getMetaDataUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->isFree()Z

    move-result v3

    iput-boolean v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getPriceDecimal()F

    move-result v3

    iput v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getLogPrice()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mLogPrice:J

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getPriceWithCurrencyAndFormat()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/CatalogInfo;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$800(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;ZLjava/lang/Exception;)V

    return-void
.end method
