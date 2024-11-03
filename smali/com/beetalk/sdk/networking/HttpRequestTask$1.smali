.class Lcom/beetalk/sdk/networking/HttpRequestTask$1;
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
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$1;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$1;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    instance-of p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$1;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;->onResultObtained(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$1;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    instance-of p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$1;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    invoke-static {p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;

    invoke-interface {p1, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;->onResultObtained(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-object v1
.end method
