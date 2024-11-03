.class Lcom/beetalk/sdk/FBAuthRequestHandler$1;
.super Ljava/lang/Object;
.source "FBAuthRequestHandler.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/FBAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/FBAuthRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string/jumbo v1, "user_cancelled"

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/FBAuthRequestHandler;->access$100(Lcom/beetalk/sdk/FBAuthRequestHandler;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string v1, "Login Failed for some reason"

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/FBAuthRequestHandler;->access$100(Lcom/beetalk/sdk/FBAuthRequestHandler;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->access$100(Lcom/beetalk/sdk/FBAuthRequestHandler;Ljava/lang/Exception;)V

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "exception is null"

    :goto_1
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FB login fail CLOSED_LOGIN_FAILED, exception: "

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-static {p1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->access$000(Lcom/beetalk/sdk/FBAuthRequestHandler;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
