.class Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;
.super Ljava/lang/Object;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->querySkuDetails(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Lbolts/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "google-iab"

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
