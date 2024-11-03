.class public Lcom/garena/pay/android/GGPayRequest;
.super Ljava/lang/Object;
.source "GGPayRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5f86ae4065539bc2L


# instance fields
.field private chosenChannelId:Ljava/lang/String;

.field private chosenDenomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

.field private denominations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;"
        }
    .end annotation
.end field

.field private payment:Lcom/garena/pay/android/data/GGPayment;

.field private requestCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->chosenChannelId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->chosenDenomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

    return-void
.end method


# virtual methods
.method public getChosenChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->chosenChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChosenDenomination()Lcom/garena/pay/android/data/GGPayment$Denomination;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->chosenDenomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

    return-object v0
.end method

.method public getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->payment:Lcom/garena/pay/android/data/GGPayment;

    return-object v0
.end method

.method public getDenominationById(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$Denomination;
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->denominations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$Denomination;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDenominations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->denominations:Ljava/util/List;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/garena/pay/android/GGPayRequest;->requestCode:I

    return v0
.end method

.method public getVirtualCurrencyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequest;->payment:Lcom/garena/pay/android/data/GGPayment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->getVirtualCurrencyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChosenChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayRequest;->chosenChannelId:Ljava/lang/String;

    return-void
.end method

.method public setChosenDenomination(Lcom/garena/pay/android/data/GGPayment$Denomination;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayRequest;->chosenDenomination:Lcom/garena/pay/android/data/GGPayment$Denomination;

    return-void
.end method

.method public setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayRequest;->payment:Lcom/garena/pay/android/data/GGPayment;

    return-void
.end method

.method public setDenominations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/garena/pay/android/GGPayRequest;->denominations:Ljava/util/List;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/garena/pay/android/GGPayRequest;->requestCode:I

    return-void
.end method
