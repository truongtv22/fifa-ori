.class Lcom/garena/pay/android/GGBillingDataSource$11;
.super Ljava/lang/Object;
.source "GGBillingDataSource.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGBillingDataSource;->queryPurchasesAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/util/Set<",
        "Lcom/android/billingclient/api/Purchase;",
        ">;",
        "Lbolts/Task<",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Lcom/android/billingclient/api/Purchase;",
        "Lcom/beetalk/sdk/networking/model/CommitResp;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGBillingDataSource;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGBillingDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$11;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/util/Set<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;)",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource$11;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-static {v0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->access$500(Lcom/garena/pay/android/GGBillingDataSource;Ljava/util/Collection;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
