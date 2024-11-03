.class Lcom/garena/pay/android/GGBillingDataSource$3$2;
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
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/garena/pay/android/GGBillingDataSource$3;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGBillingDataSource$3;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$2;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$2;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object p1, p1, Lcom/garena/pay/android/GGBillingDataSource$3;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource$3$2;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object v0, v0, Lcom/garena/pay/android/GGBillingDataSource$3;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {p1, v0}, Lcom/garena/pay/android/GGBillingDataSource;->access$300(Lcom/garena/pay/android/GGBillingDataSource;Lcom/android/billingclient/api/Purchase;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$3$2;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object p1, p1, Lcom/garena/pay/android/GGBillingDataSource$3;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource$3$2;->this$1:Lcom/garena/pay/android/GGBillingDataSource$3;

    iget-object v0, v0, Lcom/garena/pay/android/GGBillingDataSource$3;->val$purchase:Lcom/android/billingclient/api/Purchase;

    invoke-static {p1, v0}, Lcom/garena/pay/android/GGBillingDataSource;->access$200(Lcom/garena/pay/android/GGBillingDataSource;Lcom/android/billingclient/api/Purchase;)Lbolts/Task;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource$3$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
