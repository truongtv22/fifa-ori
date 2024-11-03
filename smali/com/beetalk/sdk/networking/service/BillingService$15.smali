.class Lcom/beetalk/sdk/networking/service/BillingService$15;
.super Ljava/lang/Object;
.source "BillingService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/BillingService;->getLessIsMoreEvents(Ljava/util/Map;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;",
        "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;",
            ">;)",
            "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    iget-boolean v0, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/service/BillingService$15;->then(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;

    move-result-object p1

    return-object p1
.end method
