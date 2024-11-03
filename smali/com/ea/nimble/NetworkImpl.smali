.class public Lcom/ea/nimble/NetworkImpl;
.super Lcom/ea/nimble/Component;
.source "NetworkImpl.java"

# interfaces
.implements Lcom/ea/nimble/INetwork;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/NetworkImpl$TimerTask;,
        Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;,
        Lcom/ea/nimble/NetworkImpl$DetectionState;
    }
.end annotation


# static fields
.field private static final DETECTION_TIMEOUT:I = 0x1e

.field private static final MAIN_NETWORK_REACHABILITY_CHECK_URL:Ljava/lang/String; = "https://www.ea.com"

.field private static final MAX_CONCURRENT_THREADS:I = 0x4

.field private static final PING_INTERVAL:[I

.field private static final QUICK_DETECTION_TIMEOUT:I = 0x5


# instance fields
.field private m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

.field private m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

.field private m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

.field private m_isWifi:Z

.field private m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

.field private m_pingIndex:I

.field private m_queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ea/nimble/NetworkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private m_status:Lcom/ea/nimble/Network$Status;

.field private m_timer:Lcom/ea/nimble/Timer;

.field private m_waitingToExecuteQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ea/nimble/NetworkConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ea/nimble/NetworkImpl;->PING_INTERVAL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0xa
        0x1e
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    sget-object v1, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    sget-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->NONE:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startWork()V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/NetworkImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/Timer;)Lcom/ea/nimble/Timer;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/NetworkImpl;Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->onReachabilityVerification(Lcom/ea/nimble/NetworkConnectionHandle;)V

    return-void
.end method

.method private detect(Z)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    invoke-virtual {v0}, Lcom/ea/nimble/NetworkConnection;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopPing()V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->reachabilityCheck()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v0, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    :cond_2
    sget-object p1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v0, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    :cond_4
    sget-object p1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_UNREACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    :goto_0
    const-string p1, "https://www.ea.com"

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-direct {p0, p1, v0, v1}, Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V

    return-void
.end method

.method private declared-synchronized onReachabilityVerification(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "network verified reachable."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iput-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    const-string v1, "network verified unreachable, ERROR %s for detection state %s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    aput-object p1, v4, v2

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/ea/nimble/Error;

    if-eqz p1, :cond_2

    check-cast v0, Lcom/ea/nimble/Error;

    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NimbleError"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Network detection verification connection get cancelled for unknown reason (maybe reasonable for Android)"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object p1, Lcom/ea/nimble/NetworkImpl$2;->$SwitchMap$com$ea$nimble$NetworkImpl$DetectionState:[I

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    invoke-virtual {v0}, Lcom/ea/nimble/NetworkImpl$DetectionState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v5, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startPing()V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/ea/nimble/NetworkImpl$DetectionState;->PING:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object v0, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startPing()V

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    iput v2, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startPing()V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl;->setStatus(Lcom/ea/nimble/Network$Status;)V

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_BACKUP:Lcom/ea/nimble/NetworkImpl$DetectionState;

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_networkDetectionState:Lcom/ea/nimble/NetworkImpl$DetectionState;

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    const-string v0, "synergy.product"

    invoke-interface {p1, v0}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "https://www.ea.com"

    :cond_8
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-direct {p0, p1, v0, v1}, Lcom/ea/nimble/NetworkImpl;->verifyReachability(Ljava/lang/String;D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private reachabilityCheck()Z
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/NetworkImpl;->m_isWifi:Z

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "BaseCore not active yet. Postpone reachability check."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    :cond_5
    iput-boolean v2, p0, Lcom/ea/nimble/NetworkImpl;->m_isWifi:Z

    :cond_6
    return v2
.end method

.method private registerNetworkListener()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Register network reachability listener."

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setStatus(Lcom/ea/nimble/Network$Status;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "Status change %s -> %s"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    const-string p1, "nimble.notification.networkStatusChange"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startPing()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget v0, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    sget-object v1, Lcom/ea/nimble/NetworkImpl;->PING_INTERVAL:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    :cond_0
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v2, Lcom/ea/nimble/NetworkImpl$TimerTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ea/nimble/NetworkImpl$TimerTask;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V

    invoke-direct {v0, v2}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    iget v2, p0, Lcom/ea/nimble/NetworkImpl;->m_pingIndex:I

    aget v1, v1, v2

    int-to-double v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    return-void
.end method

.method private declared-synchronized startWork()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->registerNetworkListener()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NetworkConnections waiting to execute on new AsyncTaskManager. Executing."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/NetworkConnection;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing request URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ea/nimble/NetworkConnection;->getRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v3

    iget-object v3, v3, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string v0, "Could not get queued connection"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopPing()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_timer:Lcom/ea/nimble/Timer;

    :cond_0
    return-void
.end method

.method private stopWork()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopPing()V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->unregisterNetworkListener()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    check-cast v2, Lcom/ea/nimble/NetworkConnection;

    invoke-virtual {v2}, Lcom/ea/nimble/NetworkConnection;->cancelForAppSuspend()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private unregisterNetworkListener()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to unregister network reachability listener even it does exists"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_connectivityReceiver:Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;

    :cond_0
    return-void
.end method

.method private verifyReachability(Ljava/lang/String;D)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/ea/nimble/HttpRequest;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iput-wide p2, v1, Lcom/ea/nimble/HttpRequest;->timeout:D

    sget-object p1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p1, v1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance p1, Lcom/ea/nimble/NetworkConnection;

    invoke-direct {p1, p0, v1}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;)V

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    new-instance p2, Lcom/ea/nimble/NetworkImpl$1;

    invoke-direct {p2, p0}, Lcom/ea/nimble/NetworkImpl$1;-><init>(Lcom/ea/nimble/NetworkImpl;)V

    invoke-virtual {p1, p2}, Lcom/ea/nimble/NetworkConnection;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "AsyncTaskManager is not ready. Queueing networkconnection until AsyncTaskManager is started."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    iget-object p2, p0, Lcom/ea/nimble/NetworkImpl;->m_detectionConnection:Lcom/ea/nimble/NetworkConnection;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid url: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopWork()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cleanup"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized forceRedetectNetworkStatus()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.network"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Network"

    return-object v0
.end method

.method public getStatus()Lcom/ea/nimble/Network$Status;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    return-object v0
.end method

.method public isNetworkWifi()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/NetworkImpl;->m_isWifi:Z

    return v0
.end method

.method declared-synchronized removeConnection(Lcom/ea/nimble/NetworkConnection;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resume()V
    .locals 2

    const-string v0, "resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/ea/nimble/NetworkImpl;->detect(Z)V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->registerNetworkListener()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDeleteRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object p1, Lcom/ea/nimble/IHttpRequest$Method;->DELETE:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p2, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p3}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object p1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p2, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p3}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendPostRequest(Ljava/net/URL;Ljava/util/HashMap;[BLcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object p1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p2, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    :try_start_0
    iget-object p1, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0, v0, p4}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/nimble/NetworkImpl;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ea/nimble/BackgroundNetworkConnection;

    invoke-direct {v0, p0, p1, p3}, Lcom/ea/nimble/BackgroundNetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ea/nimble/NetworkConnection;

    invoke-direct {v0, p0, p1, p3}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    :goto_0
    invoke-virtual {v0, p2}, Lcom/ea/nimble/NetworkConnection;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    iget-object p2, p1, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    sget-object p2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq p1, p2, :cond_2

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "No network connection, network status "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_status:Lcom/ea/nimble/Network$Status;

    invoke-virtual {v1}, Lcom/ea/nimble/Network$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    return-object v0

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_asyncTaskManager:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    const-string p1, "AsyncTaskManager shutdown. Queueing networkconnection until AsyncTaskManager is started."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string p1, "AsyncTaskManager is not ready. Queueing networkconnection until AsyncTaskManager is started."

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    :cond_6
    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl;->m_waitingToExecuteQueue:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_4
    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string p3, "Sending request without valid url"

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ea/nimble/NetworkConnection;->finishWithError(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public setup()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setup"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->startWork()V

    return-void
.end method

.method public suspend()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->stopPing()V

    invoke-direct {p0}, Lcom/ea/nimble/NetworkImpl;->unregisterNetworkListener()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl;->m_queue:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/NetworkConnection;

    invoke-virtual {v1}, Lcom/ea/nimble/NetworkConnection;->cancelForAppSuspend()V

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "suspend"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
