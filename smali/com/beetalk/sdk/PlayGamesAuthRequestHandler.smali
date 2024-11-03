.class public Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "PlayGamesAuthRequestHandler.java"


# instance fields
.field private gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;


# direct methods
.method protected constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    iput-object p1, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    return-void
.end method

.method private exchangeTokenFromGOP(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangePGSToken(Ljava/lang/String;Ljava/lang/String;I)Lbolts/Task;

    move-result-object p1

    new-instance v1, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method private getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    :goto_0
    return-object p1
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "error"

    invoke-static {v0, v2, p1, v1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->tryHandler()V

    :goto_0
    return-void
.end method

.method private requestAuthToken()V
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getGooglePlayGamesClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Invalid Google Play Games Client ID"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Failed to get Play Games OAuth token, reason: invalid Google Play Games Client ID"

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "Request Play Games OAuth token"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/games/GamesSignInClient;->requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private signIn()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Request Play Games sign in"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {v0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method synthetic lambda$exchangeTokenFromGOP$3$com-beetalk-sdk-PlayGamesAuthRequestHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lbolts/Task;)Ljava/lang/Void;
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

    invoke-virtual {p0, v3}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;

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
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

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

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-object v1
.end method

.method synthetic lambda$requestAuthToken$2$com-beetalk-sdk-PlayGamesAuthRequestHandler(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got google play games token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->exchangeTokenFromGOP(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get Play Games OAuth token, reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$signIn$1$com-beetalk-sdk-PlayGamesAuthRequestHandler(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {v0}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->requestAuthToken()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to sign in Play Games, reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$startAuth$0$com-beetalk-sdk-PlayGamesAuthRequestHandler(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AuthenticationResult;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AuthenticationResult;->isAuthenticated()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->requestAuthToken()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->signIn()V

    :goto_1
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGamesSdk;->initialize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "start Google Play Games Auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->hasGooglePlayGameAppId(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Invalid Google Play Games app id"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->gamesSignInClient:Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {p1}, Lcom/google/android/gms/games/GamesSignInClient;->isAuthenticated()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const/4 p1, 0x1

    return p1
.end method
