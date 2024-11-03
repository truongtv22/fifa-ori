.class public Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;
.super Ljava/lang/Object;
.source "ITransactionGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionInfo"
.end annotation


# instance fields
.field private accessKey:Ljava/lang/String;

.field private orderNumber:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->transactionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->accessKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->orderNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->transactionId:Ljava/lang/String;

    return-object v0
.end method
