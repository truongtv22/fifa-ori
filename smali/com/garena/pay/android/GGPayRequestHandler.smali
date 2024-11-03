.class public abstract Lcom/garena/pay/android/GGPayRequestHandler;
.super Ljava/lang/Object;
.source "GGPayRequestHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3aa4a67d7a179410L


# instance fields
.field private mPaymentChannel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getBuyableItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequestHandler;->mPaymentChannel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPaymentChannel()Lcom/garena/pay/android/data/GGPayment$PaymentChannel;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequestHandler;->mPaymentChannel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    return-object v0
.end method

.method isDirectPay()Z
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayRequestHandler;->mPaymentChannel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->isDirectPay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract onDestroy()V
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method setPaymentChannel(Lcom/garena/pay/android/data/GGPayment$PaymentChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayRequestHandler;->mPaymentChannel:Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    return-void
.end method

.method abstract startPay(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/data/Result;",
            ">;"
        }
    .end annotation
.end method
