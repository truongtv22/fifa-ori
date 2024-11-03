.class Lcom/garena/pay/android/GGBillingDataSource$2;
.super Ljava/lang/Object;
.source "GGBillingDataSource.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGBillingDataSource;->doCommit(Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/CommitResp;",
        "Lcom/beetalk/sdk/networking/model/CommitResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGBillingDataSource;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGBillingDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$2;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/CommitResp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;)",
            "Lcom/beetalk/sdk/networking/model/CommitResp;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/CommitResp;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource$2;->then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/CommitResp;

    move-result-object p1

    return-object p1
.end method
