.class Lcom/facebook/login/GetTokenLoginMethodHandler$2;
.super Ljava/lang/Object;
.source "GetTokenLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/GetTokenLoginMethodHandler;->complete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

.field final synthetic val$loginClient:Lcom/facebook/login/LoginClient;

.field final synthetic val$request:Lcom/facebook/login/LoginClient$Request;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/login/LoginClient;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$request:Lcom/facebook/login/LoginClient$Request;

    iput-object p4, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$loginClient:Lcom/facebook/login/LoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const-string v2, "Caught exception"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    const-string v1, "com.facebook.platform.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->this$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$request:Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$result:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->onComplete(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/facebook/login/GetTokenLoginMethodHandler$2;->val$loginClient:Lcom/facebook/login/LoginClient;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getPendingRequest()Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    const-string v2, "Caught exception"

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    :goto_0
    return-void
.end method
