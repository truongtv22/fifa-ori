.class public Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
.super Lcom/ea/nimble/mtx/NimbleCatalogItem;
.source "SynergyCatalogItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_additionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_description:Ljava/lang/String;

.field m_formattedPrice:Ljava/lang/String;

.field m_isFree:Z

.field m_metaDataUrl:Ljava/lang/String;

.field m_price:F

.field m_sku:Ljava/lang/String;

.field m_title:Ljava/lang/String;

.field m_type:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/mtx/NimbleCatalogItem;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_type:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    return-object v0
.end method

.method public getMetaDataUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_metaDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceDecimal()F
    .locals 1

    iget v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_price:F

    return v0
.end method

.method public getPriceWithCurrencyAndFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSellId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    const-string v1, "sellId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public isFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_isFree:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_description:Ljava/lang/String;

    return-void
.end method

.method public setPriceDecimal(F)V
    .locals 0

    iput p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_price:F

    return-void
.end method

.method public setPriceWithCurrencyAndFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_formattedPrice:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_title:Ljava/lang/String;

    return-void
.end method
