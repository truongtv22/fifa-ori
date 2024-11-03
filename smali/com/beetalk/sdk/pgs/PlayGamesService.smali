.class public final Lcom/beetalk/sdk/pgs/PlayGamesService;
.super Ljava/lang/Object;
.source "PlayGamesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recall(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/beetalk/sdk/pgs/PgsController;->recallToken(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;

    invoke-direct {v2, p0, p1, v0}, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method public static restoreToken(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 4

    new-instance v0, Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPlatform()I

    move-result v2

    invoke-static {v2}, Lcom/beetalk/sdk/data/TokenProvider;->getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getPlatform()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/RecallToken;->getExpiryTime()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    new-instance p1, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :cond_0
    return-void
.end method

.method public static save(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->of(Landroid/app/Activity;)Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/beetalk/sdk/pgs/PgsController;->saveToken(Landroid/app/Activity;Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;

    invoke-direct {v2, p0, p1, v0}, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method
