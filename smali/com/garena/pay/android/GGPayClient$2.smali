.class Lcom/garena/pay/android/GGPayClient$2;
.super Ljava/lang/Object;
.source "GGPayClient.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGPayClient;->resumePayment()V
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

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/GGPayClient$2;->then(Lbolts/Task;)Ljava/lang/Void;

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

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getChosenChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$500(Lcom/garena/pay/android/GGPayClient;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequest;->getChosenChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/garena/pay/android/GGPayRequestHandler;

    invoke-static {p1, v0}, Lcom/garena/pay/android/GGPayClient;->access$402(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayRequestHandler;)Lcom/garena/pay/android/GGPayRequestHandler;

    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$500(Lcom/garena/pay/android/GGPayClient;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$600(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object p1

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$500(Lcom/garena/pay/android/GGPayClient;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/GGPayRequestHandler;

    iget-object v2, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v2, v1}, Lcom/garena/pay/android/GGPayClient;->access$402(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayRequestHandler;)Lcom/garena/pay/android/GGPayRequestHandler;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getChosenDenomination()Lcom/garena/pay/android/data/GGPayment$Denomination;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequestHandler;->isDirectPay()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {p1, v1}, Lcom/garena/pay/android/GGPayClient;->access$602(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->getBuyableItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/garena/pay/android/GGPayRequest;->setDenominations(Ljava/util/List;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {p1, v1}, Lcom/garena/pay/android/GGPayClient;->access$602(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getChosenDenomination()Lcom/garena/pay/android/data/GGPayment$Denomination;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->getBuyableItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/garena/pay/android/GGPayRequest;->setDenominations(Ljava/util/List;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {p1, v1}, Lcom/garena/pay/android/GGPayClient;->access$602(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    :cond_4
    sget-object p1, Lcom/garena/pay/android/GGPayClient$5;->$SwitchMap$com$garena$pay$android$GGPayClient$PaymentState:[I

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v1}, Lcom/garena/pay/android/GGPayClient;->access$600(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayClient$PaymentState;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$900(Lcom/garena/pay/android/GGPayClient;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getChosenDenomination()Lcom/garena/pay/android/data/GGPayment$Denomination;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getItemId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayClient;->access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v1}, Lcom/garena/pay/android/GGPayClient;->access$1200(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v2}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/garena/pay/android/GGPayRequestHandler;->startPay(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/garena/pay/android/GGPayClient$2$1;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/GGPayClient$2$1;-><init>(Lcom/garena/pay/android/GGPayClient$2;)V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0}, Lcom/garena/pay/android/GGPayClient;->access$100(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;)V

    :goto_2
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {p1, v0}, Lcom/garena/pay/android/GGPayClient;->access$602(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$800(Lcom/garena/pay/android/GGPayClient;)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient$2;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {p1}, Lcom/garena/pay/android/GGPayClient;->access$700(Lcom/garena/pay/android/GGPayClient;)V

    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
