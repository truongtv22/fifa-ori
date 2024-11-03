.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->networkCallGetAvailableItemsNexonGarena()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    new-instance v2, Lcom/ea/games/gamesdk/CatalogInfo;

    invoke-direct {v2}, Lcom/ea/games/gamesdk/CatalogInfo;-><init>()V

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mSku:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getMetaDataUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->isFree()Z

    move-result v3

    iput-boolean v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mIsFree:Z

    const/4 v3, 0x0

    iput v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mPriceDecimal:F

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mLogPrice:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$700()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mPriceDecimal:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Item : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ea/games/gamesdk/CatalogInfo;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " found !!!!!!!!!!!!!!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/ea/games/gamesdk/CatalogInfo;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ea/nimble/GameSdk;->getComponent()Lcom/ea/nimble/INimbleGameSdk;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/INimbleGameSdk;->getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object p1

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;)V

    invoke-interface {p1, p2, v0}, Lcom/ea/games/gamesdk/GameSdkInterface;->requestCatalogItems(Ljava/util/List;Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "GetAvailableItems error is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const-string v0, "nimble.notification.mtx.refreshcatalogfinished"

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method
