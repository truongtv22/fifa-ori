.class Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;
.super Ljava/lang/Object;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->startPay(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lbolts/Task;
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
        "Lcom/beetalk/sdk/data/Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/data/Result;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-static {v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$100(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Lbolts/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object p1, p1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object p1, p1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-static {p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$300(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Lcom/garena/pay/android/GGBillingDataSource;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v0, v0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->openId:Ljava/lang/String;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-static {v1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$200(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v2, v2, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v3, v3, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/garena/pay/android/GGBillingDataSource;->unregisterOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-static {p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$100(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Lbolts/TaskCompletionSource;

    move-result-object p1

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
