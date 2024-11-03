.class Lcom/garena/pay/android/GGPayClient$2$1;
.super Ljava/lang/Object;
.source "GGPayClient.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGPayClient$2;->then(Lbolts/Task;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/data/Result;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/garena/pay/android/GGPayClient$2;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGPayClient$2;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient$2$1;->this$1:Lcom/garena/pay/android/GGPayClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGPayClient$2$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/data/Result;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$2$1;->this$1:Lcom/garena/pay/android/GGPayClient$2;

    iget-object v0, v0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayClient;->access$000(Lcom/garena/pay/android/GGPayClient;)V

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$2$1;->this$1:Lcom/garena/pay/android/GGPayClient$2;

    iget-object v0, v0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/data/Result;

    invoke-static {v0, p1}, Lcom/garena/pay/android/GGPayClient;->access$1100(Lcom/garena/pay/android/GGPayClient;Lcom/beetalk/sdk/data/Result;)V

    return-object v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$2$1;->this$1:Lcom/garena/pay/android/GGPayClient$2;

    iget-object v0, v0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-static {v0, v2, p1}, Lcom/garena/pay/android/GGPayClient;->access$1000(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    return-object v1
.end method
