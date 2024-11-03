.class public Lcom/beetalk/sdk/VKAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "VKAuthRequestHandler.java"

# interfaces
.implements Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;


# instance fields
.field private final mAuthHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    new-instance v0, Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->mAuthHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/vk/VKAuthHelper;->setOnAuthResultListener(Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;)V

    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    iput-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    return-void
.end method

.method private exchangeToken(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/AuthClient$Result;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/VKAuthRequestHandler$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/beetalk/sdk/VKAuthRequestHandler$3;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)V

    invoke-static {v1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->mAuthHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-virtual {p1, p2, p3}, Lcom/beetalk/sdk/vk/VKAuthHelper;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "vk auth err: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "error"

    invoke-static {v0, v3, p1, v2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_1
    return-void
.end method

.method public onLoggedIn()V
    .locals 5

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "vk auth success: %s"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v2}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/garena/msdk/R$style;->ProgressDialogTheme:I

    invoke-direct {v1, v2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/garena/msdk/R$layout;->msdk_progress_dialog:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v2, Lcom/beetalk/sdk/VKAuthRequestHandler$1;

    invoke-direct {v2, p0}, Lcom/beetalk/sdk/VKAuthRequestHandler$1;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/VKAuthRequestHandler;->exchangeToken(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/beetalk/sdk/VKAuthRequestHandler$2;

    invoke-direct {v2, p0, v1}, Lcom/beetalk/sdk/VKAuthRequestHandler$2;-><init>(Lcom/beetalk/sdk/VKAuthRequestHandler;Landroid/app/Dialog;)V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "error"

    const-string/jumbo v4, "vk access token is null"

    invoke-static {v1, v3, v4, v2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "start VK Auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKUtils;->lookUpAppId(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler;->mAuthHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-virtual {p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->startLogin()V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Forget add <integer name=\"com_vk_sdk_AppId\">your_app_id</integer> in your values dir?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
