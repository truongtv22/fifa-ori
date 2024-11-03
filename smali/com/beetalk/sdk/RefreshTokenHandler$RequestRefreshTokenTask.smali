.class Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;
.super Landroid/os/AsyncTask;
.source "RefreshTokenHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/RefreshTokenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestRefreshTokenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/beetalk/sdk/AuthClient$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/RefreshTokenHandler;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/RefreshTokenHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->this$0:Lcom/beetalk/sdk/RefreshTokenHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/RefreshTokenHandler;Lcom/beetalk/sdk/RefreshTokenHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;-><init>(Lcom/beetalk/sdk/RefreshTokenHandler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->this$0:Lcom/beetalk/sdk/RefreshTokenHandler;

    iget-object v1, v0, Lcom/beetalk/sdk/RefreshTokenHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/RefreshTokenHandler;->access$100(Lcom/beetalk/sdk/RefreshTokenHandler;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->this$0:Lcom/beetalk/sdk/RefreshTokenHandler;

    iget-object p1, p1, Lcom/beetalk/sdk/RefreshTokenHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->doInBackground([Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->this$0:Lcom/beetalk/sdk/RefreshTokenHandler;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/RefreshTokenHandler;->access$200(Lcom/beetalk/sdk/RefreshTokenHandler;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->onPostExecute(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
