.class Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;
.super Ljava/lang/Object;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/android/billingclient/api/BillingResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-virtual {p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->onBillingServiceDisconnected()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/billingclient/api/BillingResult;

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;->onChanged(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
