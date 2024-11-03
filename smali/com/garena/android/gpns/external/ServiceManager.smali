.class public Lcom/garena/android/gpns/external/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsBound:Z

.field private final mMessenger:Landroid/os/Messenger;

.field private mPushNotificationToken:Ljava/lang/String;

.field private mService:Landroid/os/Messenger;

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/garena/android/gpns/BaseService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/garena/android/gpns/GNotificationService;

    iput-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mServiceClass:Ljava/lang/Class;

    const-string v0, ""

    iput-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mPushNotificationToken:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    new-instance v0, Lcom/garena/android/gpns/external/ServiceManager$2;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/external/ServiceManager$2;-><init>(Lcom/garena/android/gpns/external/ServiceManager;)V

    iput-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;-><init>(Lcom/garena/android/gpns/external/ServiceManager;Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/garena/android/gpns/external/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/external/ServiceManager;->doStartService()V

    return-void
.end method

.method static synthetic access$100(Lcom/garena/android/gpns/external/ServiceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/garena/android/gpns/external/ServiceManager;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/external/ServiceManager;->doBindService(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$300(Lcom/garena/android/gpns/external/ServiceManager;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$302(Lcom/garena/android/gpns/external/ServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/garena/android/gpns/external/ServiceManager;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/garena/android/gpns/external/ServiceManager;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/external/ServiceManager;->send(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/garena/android/gpns/external/ServiceManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mPushNotificationToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/garena/android/gpns/external/ServiceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mPushNotificationToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/garena/android/gpns/external/ServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/external/ServiceManager;->unbind()V

    return-void
.end method

.method private doBindService(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "doBindService"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mIsBound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mIsBound:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/garena/android/gpns/external/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/16 v0, 0x2707

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private doStartService()V
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/garena/android/gpns/external/ServiceManager;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private doStopService()V
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/garena/android/gpns/external/ServiceManager;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelLongPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelShortPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelWakeConnect(Landroid/content/Context;)V

    return-void
.end method

.method private doUnbindService()V
    .locals 2

    iget-boolean v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mIsBound:Z

    if-eqz v0, :cond_1

    const-string v0, "doUnbindService"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2708

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mIsBound:Z

    :cond_1
    return-void
.end method

.method private send(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "intend to send message out "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mIsBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mIsBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const-string p1, "message delivered"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unbind()V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/external/ServiceManager;->doUnbindService()V

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 3

    const-string v0, "Starting service"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/garena/android/gpns/strategy/ServiceLoader;

    iget-object v1, p0, Lcom/garena/android/gpns/external/ServiceManager;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Lcom/garena/android/gpns/external/ServiceManager$1;

    invoke-direct {v2, p0}, Lcom/garena/android/gpns/external/ServiceManager$1;-><init>(Lcom/garena/android/gpns/external/ServiceManager;)V

    invoke-direct {v0, v1, v2}, Lcom/garena/android/gpns/strategy/ServiceLoader;-><init>(Landroid/content/Context;Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;)V

    invoke-virtual {v0}, Lcom/garena/android/gpns/strategy/ServiceLoader;->loadService()V

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mPushNotificationToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mPushNotificationToken:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "lock the worker thread"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "worker thread freed"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager;->mPushNotificationToken:Ljava/lang/String;

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/external/ServiceManager;->doStopService()V

    return-void
.end method
