.class Lcom/garena/pay/android/GGBillingDataSource$3$1;
.super Ljava/lang/Object;
.source "GGBillingDataSource.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGBillingDataSource$3;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/lang/Boolean;",
        "Lbolts/Task<",
        "Landroid/util/Pair<",
        "Lcom/android/billingclient/api/Purchase;",
        "Lcom/beetalk/sdk/networking/model/CommitResp;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

.field final synthetic val$commitResp:Lcom/beetalk/sdk/networking/model/CommitResp;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGBillingDataSource$3;Lcom/beetalk/sdk/networking/model/CommitResp;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iput-object p2, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->val$commitResp:Lcom/beetalk/sdk/networking/model/CommitResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->val$commitResp:Lcom/beetalk/sdk/networking/model/CommitResp;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/CommitResp;->isError()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/garena/pay/android/GGBillingDataSource;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no commitResp.isError(), before cache, result code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->val$commitResp:Lcom/beetalk/sdk/networking/model/CommitResp;

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/model/CommitResp;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object p1, p1, Lcom/garena/pay/android/GGBillingDataSource$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object v0, v0, Lcom/garena/pay/android/GGBillingDataSource$3;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/cache/PayCachePreference;->cache(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;)V

    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object v0, v0, Lcom/garena/pay/android/GGBillingDataSource$3;->val$purchase:Lcom/android/billingclient/api/Purchase;

    iget-object v1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$1;->val$commitResp:Lcom/beetalk/sdk/networking/model/CommitResp;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource$3$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
