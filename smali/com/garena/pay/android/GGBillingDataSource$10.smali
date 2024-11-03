.class Lcom/garena/pay/android/GGBillingDataSource$10;
.super Ljava/lang/Object;
.source "GGBillingDataSource.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGBillingDataSource;->googleQueryPurchases(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGBillingDataSource;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGBillingDataSource;Lbolts/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$10;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    iput-object p2, p0, Lcom/garena/pay/android/GGBillingDataSource$10;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$10;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
