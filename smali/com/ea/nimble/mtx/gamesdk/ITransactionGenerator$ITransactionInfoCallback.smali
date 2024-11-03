.class public interface abstract Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;
.super Ljava/lang/Object;
.source "ITransactionGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITransactionInfoCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V
.end method
