.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$7;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->networkCallGetAvailableItems()V
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

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$7;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 6
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

    const/4 v1, 0x0

    if-nez p2, :cond_4

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    new-instance v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-direct {v3}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;-><init>()V

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object v4

    iput-object v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getMetaDataUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mUrl:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->isFree()Z

    move-result v4

    iput-boolean v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v4

    const-string v5, "price"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    goto :goto_1

    :cond_0
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    goto :goto_1

    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Item : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Price is Unknow, skip it."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$7;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$800(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;ZLjava/lang/Exception;)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "GetAvailableItems error is "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$7;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const-string v0, "nimble.notification.mtx.refreshcatalogfinished"

    invoke-static {p2, v0, p1, v1, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method
