.class public Lcom/beetalk/sdk/AuthClient;
.super Ljava/lang/Object;
.source "AuthClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/AuthClient$AuthClientRequest;,
        Lcom/beetalk/sdk/AuthClient$Result;,
        Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

.field private transient authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

.field private transient context:Landroid/app/Activity;

.field private transient onAuthCompleted:Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;

.field private pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/AuthClient;)Lcom/beetalk/sdk/AuthClient$AuthClientRequest;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    return-object p0
.end method

.method private commenceAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "request is null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "commenceAuth()"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthClient;->initHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/AuthClient;->tryHandler()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempted to authorize while a request is pending."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private failedToAuth()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private initHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
    .locals 2

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object p1

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "add facebook auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/FBAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_1

    const-string p1, "add garena auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/GasAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/GasAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_2

    const-string p1, "add guest auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/GuestRegistrationHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/GuestRegistrationHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->REFRESH_TOKEN:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_3

    const-string p1, "add refresh token handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/RefreshTokenHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/RefreshTokenHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_4

    const-string p1, "add vk auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/VKAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/VKAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_5

    const-string p1, "add line auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/LineAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/LineAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_6

    const-string p1, "add google auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/GoogleAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_7

    const-string p1, "Add Twitter auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_8

    const-string p1, "Add Email auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/EmailAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/EmailAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p1, v0, :cond_9

    const-string p1, "Add Google Play Games auth handler"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    :cond_9
    :goto_0
    return-void
.end method


# virtual methods
.method cancelCurrentHandler()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthRequestHandler;->cancel()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/beetalk/sdk/AuthClient$2;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/AuthClient$2;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentHandler()Lcom/beetalk/sdk/AuthRequestHandler;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    return-object v0
.end method

.method getInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    return-object v0
.end method

.method public notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->onAuthCompleted:Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;->onAuthComplete(Lcom/beetalk/sdk/AuthClient$Result;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "PendingRequest %s"

    invoke-static {v0, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/AuthClient;->getCurrentHandler()Lcom/beetalk/sdk/AuthRequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/beetalk/sdk/AuthRequestHandler;->onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public setActivityLauncher(Lcom/beetalk/sdk/ActivityLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->context:Landroid/app/Activity;

    new-instance v0, Lcom/beetalk/sdk/AuthClient$1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/AuthClient$1;-><init>(Lcom/beetalk/sdk/AuthClient;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/beetalk/sdk/AuthClient;->activityLauncher:Lcom/beetalk/sdk/ActivityLauncher;

    iget-object p1, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthClient;->initHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    :cond_0
    return-void
.end method

.method public setOnAuthCompleted(Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient;->onAuthCompleted:Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;

    return-void
.end method

.method startOrResumeAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/AuthClient;->getInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthClient;->commenceAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    :cond_0
    return-void
.end method

.method protected tryHandler()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "try one handler"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient;->authRequestHandler:Lcom/beetalk/sdk/AuthRequestHandler;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/AuthRequestHandler;->startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    if-eqz v1, :cond_1

    const-string v1, "all handlers fail, auth fail"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/beetalk/sdk/AuthClient;->failedToAuth()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v1, "handler started, return"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
