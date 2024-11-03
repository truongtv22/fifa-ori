.class public interface abstract Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;
.super Ljava/lang/Object;
.source "ITransactionGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;,
        Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;
    }
.end annotation


# virtual methods
.method public abstract generateTransactionInfo(Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
.end method

.method public abstract generateTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
.end method

.method public abstract getCatalogItem(Ljava/util/HashMap;Ljava/lang/String;)Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;
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
.end method
