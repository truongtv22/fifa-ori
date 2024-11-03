.class Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

.field private static s_instanceRefs:I


# instance fields
.field private m_executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;I)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
    .locals 1

    sget-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;-><init>()V

    sput-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    :cond_0
    sget v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    sget-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    return-object v0
.end method

.method static releaseInstance()V
    .locals 1

    sget v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instanceRefs:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->shutdown()V

    const/4 v0, 0x0

    sput-object v0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->s_instance:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method


# virtual methods
.method createTimer(DLjava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v1

    double-to-long p1, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method runInWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method runInWorkerThread(ZLjava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->m_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :catch_1
    :goto_0
    return-void
.end method
