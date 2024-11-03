.class Lcom/beetalk/sdk/networking/HttpRequestTask$2;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;->executeParallel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

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

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    iget-boolean v0, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->hasTimeOut:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;->onTimeout()V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object v0

    instance-of v0, v0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    iget-object v3, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->response:Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->response:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-interface {v0, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;->onResultObtained(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object v0

    instance-of v0, v0, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;

    iget-object p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->response:Lorg/json/JSONObject;

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;->onResultObtained(Lorg/json/JSONObject;)V

    :cond_4
    :goto_0
    return-object v2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    instance-of p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    invoke-interface {p1, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;->onResultObtained(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    instance-of p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;

    invoke-interface {p1, v2}, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;->onResultObtained(Lorg/json/JSONObject;)V

    :cond_7
    :goto_2
    return-object v2
.end method
