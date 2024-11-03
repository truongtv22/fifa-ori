.class public Lcom/garena/android/gpns/logic/ServiceController;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Lcom/garena/android/gpns/network/NetworkResponseListener;


# static fields
.field private static final RECONNECT_TIME_WHEN_INVALID_GIP_RECEIVED:I = 0x927c0


# instance fields
.field private final mAckPushMessage:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mConnectToAuthServer:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mConnectToLiveServer:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mContext:Landroid/content/Context;

.field private final mExceptionHandler:Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;

.field private mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

.field private mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

.field private final mOnLongPing:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mOnShortPing:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mOnWakeConnect:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mPerformPing:Lcom/garena/android/gpns/notification/NotifyItem;

.field private final mScheduleReconnectWhenInvalidGIPReceived:Lcom/garena/android/gpns/notification/NotifyItem;

.field private mServiceHandler:Lcom/garena/android/gpns/ServiceHandler;

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mTimeout:I

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$1;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$1;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mScheduleReconnectWhenInvalidGIPReceived:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$2;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$2;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mOnWakeConnect:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$3;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$3;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mOnShortPing:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$4;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$4;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mOnLongPing:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$5;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$5;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mConnectToAuthServer:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$6;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$6;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mConnectToLiveServer:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$7;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$7;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mAckPushMessage:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$8;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$8;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mPerformPing:Lcom/garena/android/gpns/notification/NotifyItem;

    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController$9;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController$9;-><init>(Lcom/garena/android/gpns/logic/ServiceController;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mExceptionHandler:Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/garena/android/gpns/ServiceHandler;

    invoke-direct {p1, p0}, Lcom/garena/android/gpns/ServiceHandler;-><init>(Lcom/garena/android/gpns/network/NetworkResponseListener;)V

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mServiceHandler:Lcom/garena/android/gpns/ServiceHandler;

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->registerNotifications()V

    return-void
.end method

.method static synthetic access$000(Lcom/garena/android/gpns/logic/ServiceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->connectToRegionServer()V

    return-void
.end method

.method static synthetic access$200(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->connectToAuthServer()V

    return-void
.end method

.method static synthetic access$300(Lcom/garena/android/gpns/logic/ServiceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->isStateValid()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/garena/android/gpns/logic/ServiceController;)Lcom/garena/android/gpns/network/NetworkThread;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    return-object p0
.end method

.method static synthetic access$500(Lcom/garena/android/gpns/logic/ServiceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/logic/ServiceController;->scheduleWakeConnect(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->notifyInternetDisconnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/garena/android/gpns/logic/ServiceController;)Lcom/garena/android/gpns/network/NetworkRequestHandler;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->connectToNotificationServer()V

    return-void
.end method

.method static synthetic access$900(Lcom/garena/android/gpns/logic/ServiceController;)I
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->getTimeout()I

    move-result p0

    return p0
.end method

.method private connectToAuthServer()V
    .locals 3

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/garena/android/gpns/network/NetworkThread;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mServiceHandler:Lcom/garena/android/gpns/ServiceHandler;

    invoke-direct {v0, v1, v2}, Lcom/garena/android/gpns/network/NetworkThread;-><init>(Landroid/content/Context;Lcom/garena/android/gpns/network/NetworkResponseListener;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->start()V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mExceptionHandler:Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/NetworkThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->getHandler()Lcom/garena/android/gpns/network/NetworkRequestHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    :cond_1
    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v0}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->connectAuthenticationServer()V

    return-void
.end method

.method private connectToNotificationServer()V
    .locals 3

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/garena/android/gpns/network/NetworkThread;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mServiceHandler:Lcom/garena/android/gpns/ServiceHandler;

    invoke-direct {v0, v1, v2}, Lcom/garena/android/gpns/network/NetworkThread;-><init>(Landroid/content/Context;Lcom/garena/android/gpns/network/NetworkResponseListener;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->start()V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mExceptionHandler:Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/NetworkThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->getHandler()Lcom/garena/android/gpns/network/NetworkRequestHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    :cond_1
    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v0}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->connectNotificationServer()V

    return-void
.end method

.method private connectToRegionServer()V
    .locals 3

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/garena/android/gpns/network/NetworkThread;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mServiceHandler:Lcom/garena/android/gpns/ServiceHandler;

    invoke-direct {v0, v1, v2}, Lcom/garena/android/gpns/network/NetworkThread;-><init>(Landroid/content/Context;Lcom/garena/android/gpns/network/NetworkResponseListener;)V

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->start()V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mExceptionHandler:Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/NetworkThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->getHandler()Lcom/garena/android/gpns/network/NetworkRequestHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    :cond_1
    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v0}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->connectRegionServer()V

    return-void
.end method

.method private getTimeout()I
    .locals 2

    iget v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mTimeout:I

    const v1, 0x927c0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mTimeout:I

    return v1
.end method

.method private isStateValid()Z
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyInternetDisconnected()V
    .locals 1

    const-string v0, "NOTIFY_INTERNET_DISCONNECTED"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelShortPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelLongPing(Landroid/content/Context;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBroadcastManager()Lcom/garena/android/gpns/logic/BroadcastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/BroadcastManager;->registerNetworkChangeReceiver()V

    return-void
.end method

.method private registerNotifications()V
    .locals 3

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "WAKE_CONNECT"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mOnWakeConnect:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "SHORT_PING"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mOnShortPing:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "LONG_PING"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mOnLongPing:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "CONNECT_NOTIFICATION_SERVER"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mConnectToLiveServer:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "ACK_PUSH_MSG"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mAckPushMessage:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "PERFORM_PING"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mPerformPing:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "CONNECT_AUTHENTICATION_SERVER"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mConnectToAuthServer:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    const-string v1, "RECONNECT_WHEN_INVALID_GIP_RECEIVED"

    iget-object v2, p0, Lcom/garena/android/gpns/logic/ServiceController;->mScheduleReconnectWhenInvalidGIPReceived:Lcom/garena/android/gpns/notification/NotifyItem;

    invoke-virtual {v0, v1, v2}, Lcom/garena/android/gpns/notification/NotificationBus;->register(Ljava/lang/String;Lcom/garena/android/gpns/notification/NotifyItem;)V

    return-void
.end method

.method private requestNotification()V
    .locals 2

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/storage/LocalStorage;->getConnectionId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->newConnectionRequestPacket(J)Lcom/garena/android/gpns/network/tcp/TCPPacket;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v1, v0}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    return-void
.end method

.method private resetTimeout()V
    .locals 1

    const/16 v0, 0x7530

    iput v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mTimeout:I

    return-void
.end method

.method private schedulePingAlarms()V
    .locals 1

    const-string v0, "SCHEDULE_PING_ALARM"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->scheduleShortPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->scheduleLongPing(Landroid/content/Context;)V

    return-void
.end method

.method private scheduleWakeConnect(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SCHEDULE_WAKE_CONNECT : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelShortPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelLongPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/garena/android/gpns/utility/AlarmUtil;->scheduleWakeConnect(Landroid/content/Context;I)V

    return-void
.end method

.method private sendAuthPacket()V
    .locals 2

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->newAuthRequestPacket(Landroid/content/Context;)Lcom/garena/android/gpns/network/tcp/TCPPacket;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v1, v0}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    return-void
.end method

.method private sendRegionPacket()V
    .locals 2

    invoke-static {}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->newRegionRequestPacket()Lcom/garena/android/gpns/network/tcp/TCPPacket;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkRequestHandler:Lcom/garena/android/gpns/network/NetworkRequestHandler;

    invoke-interface {v1, v0}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    return-void
.end method


# virtual methods
.method public cancelPendingAlarms()V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelLongPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelShortPing(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->cancelWakeConnect(Landroid/content/Context;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/android/gpns/notification/NotificationBus;->clearAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mServiceHandler:Lcom/garena/android/gpns/ServiceHandler;

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController;->mNetworkThread:Lcom/garena/android/gpns/network/NetworkThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/NetworkThread;->quit()Z

    :cond_0
    return-void
.end method

.method public onConnectionDropped(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/garena/android/gpns/utility/DeviceUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->getTimeout()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/logic/ServiceController;->scheduleWakeConnect(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->notifyInternetDisconnected()V

    :goto_0
    return-void
.end method

.method public onConnectionOK(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "onConnectionOK, sendRegionPacket()"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->sendRegionPacket()V

    goto :goto_0

    :cond_1
    const-string p1, "onConnectionOK, requestNotification()"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->requestNotification()V

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->schedulePingAlarms()V

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->resetTimeout()V

    goto :goto_0

    :cond_2
    const-string p1, "onConnectionOK, sendAuthPacket()"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->sendAuthPacket()V

    :goto_0
    return-void
.end method

.method public onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 0

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/garena/android/gpns/utility/DeviceUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->getTimeout()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/logic/ServiceController;->scheduleWakeConnect(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->notifyInternetDisconnected()V

    :goto_0
    return-void
.end method

.method public onResponseArrived(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 0

    invoke-static {p1}, Lcom/garena/android/gpns/network/PacketRouter;->route(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    return-void
.end method

.method public onUnableToConnect(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/garena/android/gpns/utility/DeviceUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->getTimeout()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/logic/ServiceController;->scheduleWakeConnect(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/garena/android/gpns/logic/ServiceController;->notifyInternetDisconnected()V

    :goto_0
    return-void
.end method

.method public setupConnection()V
    .locals 1

    const/16 v0, 0x2710

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/logic/ServiceController;->scheduleWakeConnect(I)V

    return-void
.end method
