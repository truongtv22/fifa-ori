.class public Lcom/ea/nimble/mtx/gamesdk/LocalTransactionGenerator;
.super Ljava/lang/Object;
.source "LocalTransactionGenerator.java"

# interfaces
.implements Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTransactionInfo(Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 0

    return-void
.end method

.method public generateTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 1

    new-instance p1, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-direct {p1, p2, v0, v0}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;->onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V

    return-void
.end method

.method public getCatalogItem(Ljava/util/HashMap;Ljava/lang/String;)Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;"
        }
    .end annotation

    new-instance p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-direct {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;-><init>()V

    iput-object p2, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mSku:Ljava/lang/String;

    return-object p1
.end method
