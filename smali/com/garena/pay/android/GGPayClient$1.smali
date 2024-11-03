.class Lcom/garena/pay/android/GGPayClient$1;
.super Ljava/lang/Object;
.source "GGPayClient.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGPayClient;->startPayment(Lcom/garena/pay/android/GGPayRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGPayClient;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient$1;->this$0:Lcom/garena/pay/android/GGPayClient;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGPayClient$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$1;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayClient;->access$000(Lcom/garena/pay/android/GGPayClient;)V

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string v2, "Response Recd from Server: %s"

    invoke-static {v2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$1;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/garena/pay/android/GGErrorCode;->getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/garena/pay/android/GGPayClient;->access$100(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;)V

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$1;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$200(Lcom/garena/pay/android/GGPayClient;)V

    return-object v1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$1;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0}, Lcom/garena/pay/android/GGPayClient;->access$100(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;)V

    return-object v1
.end method
