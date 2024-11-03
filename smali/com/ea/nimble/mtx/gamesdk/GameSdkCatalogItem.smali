.class public Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;
.super Lcom/ea/nimble/mtx/NimbleCatalogItem;
.source "GameSdkCatalogItem.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field mAdditionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mCurrencyCode:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mIsFree:Z

.field mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

.field mLogPrice:J

.field mPriceDecimal:F

.field mPriceWithCurrencyAndFormat:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ea/nimble/mtx/NimbleCatalogItem;-><init>()V

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mLogPrice:J

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mCurrencyCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->UNKNOWN:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;)V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/mtx/NimbleCatalogItem;-><init>()V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    iget v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    iput v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    iget-wide v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mLogPrice:J

    iput-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mLogPrice:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    iget-object v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mUrl:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    return-object v0
.end method

.method public getLogPrice()J
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mLogPrice:J

    return-wide v0
.end method

.method public getMetaDataUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceDecimal()F
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    return v0
.end method

.method public getPriceWithCurrencyAndFormat()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSellId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    const-string v1, "sellId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFree()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mDescription:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mIsFree:Z

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SKU("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Title("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Price("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") Currency("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    const-string v2, "localCurrency"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") PriceStr("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ItemType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
