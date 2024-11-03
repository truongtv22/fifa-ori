.class public Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;
.super Ljava/lang/Object;
.source "GameSdkTransaction.java"

# interfaces
.implements Lcom/ea/nimble/mtx/NimbleMTXTransaction;
.implements Ljava/io/Externalizable;


# instance fields
.field mAdditionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

.field mDeveloperPayload:Ljava/lang/String;

.field mError:Ljava/lang/Exception;

.field mItemSku:Ljava/lang/String;

.field mPriceDecimal:F

.field mReceipt:Ljava/lang/String;

.field mTimeStamp:Ljava/util/Date;

.field mTransactionId:Ljava/lang/String;

.field mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mReceipt:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mItemSku:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mPriceDecimal:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTimeStamp:Ljava/util/Date;

    iput-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iput-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    iput-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mDeveloperPayload:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mAdditionalInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mAdditionalInfo:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getCatalogItem()Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    return-object v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    return-object v0
.end method

.method public getItemSku()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mItemSku:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceDecimal()F
    .locals 1

    iget v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mPriceDecimal:F

    return v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTimeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionState()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    return-object v0
.end method

.method public getTransactionType()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mItemSku:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mPriceDecimal:F

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTimeStamp:Ljava/util/Date;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mReceipt:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Error;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mDeveloperPayload:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSdkTransaction: SKU("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") State("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") Receipt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getReceipt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") TimeStamp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getTimeStamp()Ljava/util/Date;

    move-result-object v1

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

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mItemSku:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mPriceDecimal:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTimeStamp:Ljava/util/Date;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mReceipt:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mDeveloperPayload:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
