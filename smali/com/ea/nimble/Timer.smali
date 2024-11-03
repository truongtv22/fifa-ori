.class public Lcom/ea/nimble/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/Timer$SingleRunTask;,
        Lcom/ea/nimble/Timer$RepeatingTask;
    }
.end annotation


# static fields
.field private static s_handler:Landroid/os/Handler;


# instance fields
.field private m_fireTime:J

.field private m_pauseTime:J

.field private m_paused:Z

.field private m_running:Z

.field private m_task:Ljava/lang/Runnable;

.field private m_taskToRun:Ljava/lang/Runnable;

.field private m_timeInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ea/nimble/Timer;->m_running:Z

    iput-boolean p1, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/Timer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ea/nimble/Timer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ea/nimble/Timer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/Timer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ea/nimble/Timer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/ea/nimble/Timer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/Timer;)J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    return-wide v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    :cond_1
    return-void
.end method

.method public fire()V
    .locals 4

    invoke-virtual {p0}, Lcom/ea/nimble/Timer;->cancel()V

    iget-object v0, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/ea/nimble/Timer$RepeatingTask;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_pauseTime:J

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return v0
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_pauseTime:J

    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ea/nimble/Timer;->m_pauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    sget-object v2, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    :cond_0
    return-void
.end method

.method public schedule(DZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/ea/nimble/Timer;->cancel()V

    const-wide v0, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpg-double v4, p1, v0

    if-gez v4, :cond_2

    if-eqz p3, :cond_0

    new-array p3, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "Timer scheduled to repeat for %.2f seconds, running only once"

    invoke-static {v3, p1, p3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    if-eqz p3, :cond_3

    new-instance p1, Lcom/ea/nimble/Timer$RepeatingTask;

    invoke-direct {p1, p0, v3}, Lcom/ea/nimble/Timer$RepeatingTask;-><init>(Lcom/ea/nimble/Timer;Lcom/ea/nimble/Timer$1;)V

    iput-object p1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/ea/nimble/Timer$SingleRunTask;

    invoke-direct {p1, p0, v3}, Lcom/ea/nimble/Timer$SingleRunTask;-><init>(Lcom/ea/nimble/Timer;Lcom/ea/nimble/Timer$1;)V

    iput-object p1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    :goto_1
    sget-object p1, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return-void
.end method
