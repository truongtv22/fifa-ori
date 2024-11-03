.class Lcom/beetalk/sdk/VKAuthRequestHandler$2;
.super Ljava/lang/Object;
.source "VKAuthRequestHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/VKAuthRequestHandler;->onLoggedIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Lcom/beetalk/sdk/AuthClient$Result;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

.field final synthetic val$progress:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/VKAuthRequestHandler;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->val$progress:Landroid/app/Dialog;

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

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/AuthClient$Result;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->val$progress:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iget-object v0, v0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iget-object v1, v1, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "error"

    invoke-static {v1, v3, p1, v2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$2;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iget-object v0, v0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
