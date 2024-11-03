.class Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;
.super Ljava/lang/Object;
.source "PlayGamesService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/pgs/PlayGamesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private activityCancellationTokenSource:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

.field private activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

.field private callback:Lcom/beetalk/sdk/GGPlatform$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "TT;>;>;",
            "Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    iput-object p3, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->activityCancellationTokenSource:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    new-instance p2, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;)V

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/ActivityUtil;->doOnDestroy(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;)Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-beetalk-sdk-pgs-PlayGamesService$CallbackWrapper()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    return-void
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->callback:Lcom/beetalk/sdk/GGPlatform$Callback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    const-string v2, "Unknown error occurred"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p1}, Lcom/garena/android/model/Result;->failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/garena/android/model/Result;->success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;

    move-result-object p1

    :goto_2
    invoke-interface {v0, p1}, Lcom/beetalk/sdk/GGPlatform$Callback;->onPluginResult(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    invoke-virtual {p1}, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->tryRelease()V

    iput-object v1, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->activityLifecycleMonitor:Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    iget-object p1, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->activityCancellationTokenSource:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    invoke-virtual {p1}, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;->tryRelease()V

    iput-object v1, p0, Lcom/beetalk/sdk/pgs/PlayGamesService$CallbackWrapper;->activityCancellationTokenSource:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    return-object v1
.end method
