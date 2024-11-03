.class Lcom/beetalk/sdk/networking/HttpRequestTask$3;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$3;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$3;->this$0:Lcom/beetalk/sdk/networking/HttpRequestTask;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$3;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->access$100(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/HttpRequestTask$3;->call()Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    move-result-object v0

    return-object v0
.end method
