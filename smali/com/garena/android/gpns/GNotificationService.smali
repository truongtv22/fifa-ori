.class public Lcom/garena/android/gpns/GNotificationService;
.super Lcom/garena/android/gpns/BaseService;
.source "GNotificationService.java"


# static fields
.field public static final INTENT_LOCAL_ACTION:Ljava/lang/String; = "com.garena.android.gpns.local"

.field public static final INTENT_LOCAL_ACTION_COMMAND:Ljava/lang/String; = "command"

.field public static IS_RUNNING:Z = false

.field public static final LOCAL_ACTION_KILL:I = 0x1


# instance fields
.field private mServiceController:Lcom/garena/android/gpns/logic/ServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/gpns/BaseService;-><init>()V

    return-void
.end method

.method private onDestroyService()V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/GNotificationService;->mServiceController:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/ServiceController;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/android/gpns/GNotificationService;->mServiceController:Lcom/garena/android/gpns/logic/ServiceController;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/garena/android/gpns/GNotificationService;->IS_RUNNING:Z

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/garena/android/gpns/BaseService;->onDestroy()V

    invoke-direct {p0}, Lcom/garena/android/gpns/GNotificationService;->onDestroyService()V

    return-void
.end method

.method public onReceiveMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getConnectionId(Landroid/content/Context;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REGISTRATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_service_version"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_is_running"

    sget-boolean v2, Lcom/garena/android/gpns/GNotificationService;->IS_RUNNING:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generate the reply "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getConnectionId(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p1, v0}, Lcom/garena/android/gpns/GNotificationService;->send(Landroid/os/Messenger;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/garena/android/gpns/GNotificationService;->IS_RUNNING:Z

    invoke-super {p0, p1, p2, p3}, Lcom/garena/android/gpns/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onStartService()V
    .locals 4

    invoke-static {p0}, Lcom/garena/android/gpns/network/PacketRouter;->registerProcessors(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/garena/android/gpns/utility/DeviceUtil;->generateDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEVICE_ID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/GNotificationService;->mServiceController:Lcom/garena/android/gpns/logic/ServiceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/ServiceController;->destroy()V

    :cond_0
    new-instance v0, Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/logic/ServiceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garena/android/gpns/GNotificationService;->mServiceController:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p0}, Lcom/garena/android/gpns/utility/DeviceUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/garena/android/gpns/GNotificationService;->mServiceController:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/ServiceController;->setupConnection()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/garena/android/gpns/GNotificationService;->mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/BroadcastManager;->registerNetworkChangeReceiver()V

    :goto_0
    sget-object v0, Lcom/garena/android/gpns/GNotificationService;->mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

    new-instance v1, Lcom/garena/android/gpns/GNotificationService$1;

    invoke-direct {v1, p0}, Lcom/garena/android/gpns/GNotificationService$1;-><init>(Lcom/garena/android/gpns/GNotificationService;)V

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/logic/BroadcastManager;->registerLocalHandler(Landroid/content/BroadcastReceiver;)V

    const-string v0, "Current Service Version: 4"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected registerReceivers()V
    .locals 0

    return-void
.end method

.method protected selfDestruct()V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/GNotificationService;->mServiceController:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/ServiceController;->cancelPendingAlarms()V

    invoke-virtual {p0}, Lcom/garena/android/gpns/GNotificationService;->stopSelf()V

    return-void
.end method

.method protected unregisterReceivers()V
    .locals 1

    sget-object v0, Lcom/garena/android/gpns/GNotificationService;->mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/BroadcastManager;->unregisterNetworkChangeReceiver()V

    sget-object v0, Lcom/garena/android/gpns/GNotificationService;->mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

    invoke-virtual {v0}, Lcom/garena/android/gpns/logic/BroadcastManager;->unregisterLocalHandler()V

    return-void
.end method
