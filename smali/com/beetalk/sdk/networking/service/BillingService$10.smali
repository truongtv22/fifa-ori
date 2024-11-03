.class Lcom/beetalk/sdk/networking/service/BillingService$10;
.super Ljava/lang/Object;
.source "BillingService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/BillingService;->payEventCancel(Ljava/util/Map;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/BillingService$10;->val$params:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    iget-object v2, p0, Lcom/beetalk/sdk/networking/service/BillingService$10;->val$params:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getPayEventCancel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

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

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/service/BillingService$10;->call()Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    move-result-object v0

    return-object v0
.end method
