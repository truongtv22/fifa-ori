.class public Lcom/beetalk/sdk/EmailAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "EmailAuthRequestHandler.java"


# direct methods
.method protected constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$Result;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->tryHandler()V

    :goto_0
    return-void
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 1

    invoke-virtual {p4}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getAuthId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_1

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->REQUEST_ID_MISMATCH:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return v0

    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p4, -0x1

    if-ne p2, p4, :cond_3

    const-string p1, "email_auth_result"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    iget-object p2, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    iget-object p3, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p3}, Lcom/beetalk/sdk/data/AuthToken;->getMainPlatform()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/beetalk/sdk/EmailAuthRequestHandler;->getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/beetalk/sdk/data/AuthToken;->setTokenProvider(Lcom/beetalk/sdk/data/TokenProvider;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/EmailAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return v0
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "start email auth"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v2}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v2

    invoke-interface {v2}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/beetalk/sdk/EmailAuthActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "email_request_info"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v2}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v2

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result p1

    invoke-interface {v2, v1, p1}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    iput-boolean v0, p0, Lcom/beetalk/sdk/EmailAuthRequestHandler;->isNative:Z

    const/4 p1, 0x1

    return p1
.end method
