.class public Lcom/beetalk/sdk/pgs/PgsController;
.super Ljava/lang/Object;
.source "PgsController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentSessionAccessToken(Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getRecallSessionId(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PgsController;->signIn(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getCurrentSessionAccessToken$7()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->hasGooglePlayGameAppId(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Google Play Games app id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$getRecallSessionId$5(Lbolts/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/RecallAccess;

    invoke-virtual {p1}, Lcom/google/android/gms/games/RecallAccess;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "retrieve session id failed"

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$getRecallSessionId$6(Landroid/app/Activity;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lbolts/TaskCompletionSource;

    invoke-direct {p1}, Lbolts/TaskCompletionSource;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getRecallClient(Landroid/app/Activity;)Lcom/google/android/gms/games/RecallClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/games/RecallClient;->requestRecallAccess()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda0;-><init>(Lbolts/TaskCompletionSource;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$recallToken$1(Lbolts/Task;)Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/beetalk/sdk/networking/service/AuthService;->recallPGSSessionToken(Ljava/lang/String;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$saveToken$0(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/beetalk/sdk/networking/service/AuthService;->uploadPGSSessionId(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$signIn$2(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/games/PlayGames;->getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$signIn$3(Lbolts/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
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
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Authenticate failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$signIn$4(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/games/GamesSignInClient;

    invoke-interface {p0}, Lcom/google/android/gms/games/GamesSignInClient;->signIn()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v1, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda7;-><init>(Lbolts/TaskCompletionSource;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static recallToken(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PgsController;->getRecallSessionId(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static saveToken(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lbolts/Task;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/beetalk/sdk/pgs/PgsController;->getCurrentSessionAccessToken(Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PgsController;->getRecallSessionId(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lbolts/Task;->whenAllResult(Ljava/util/Collection;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static signIn(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, p1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method
