.class Lcom/beetalk/sdk/TwitterAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "TwitterAuthRequestHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TwitterAuthRequestHandler"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private volatile authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private final callback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    new-instance v0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;-><init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;)V

    iput-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->callback:Lcom/twitter/sdk/android/core/Callback;

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    iput-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onError(Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method private exchangeTokenFromGOP(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
    .locals 2

    invoke-virtual {p3}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeTwitterToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    invoke-virtual {p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method private getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method

.method private onError(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbed

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbec

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->exchangeTokenFromGOP(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    iget-object p2, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$exchangeTokenFromGOP$0$com-beetalk-sdk-TwitterAuthRequestHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getErrorCode()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getErrorCode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getPlatform()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v3

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getPlatform()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getExpireTime()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->getPlatform()I

    move-result p2

    invoke-static {p1, v0, v2, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-object v1

    :cond_2
    :goto_1
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-object v1
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p4

    invoke-virtual {p4}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result p4

    if-ne p1, p4, :cond_0

    invoke-direct {p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Start twitter auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->callback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    const/4 p1, 0x1

    return p1
.end method
