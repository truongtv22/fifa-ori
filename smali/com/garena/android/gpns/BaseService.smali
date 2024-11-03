.class public abstract Lcom/garena/android/gpns/BaseService;
.super Landroid/app/Service;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpns/BaseService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final MSG_REGISTER_CLIENT:I = 0x2707

.field public static final MSG_SELFDESTRUCT:I = 0x2709

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2708

.field protected static mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

.field protected static mBus:Lcom/garena/android/gpns/notification/NotificationBus;


# instance fields
.field final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/garena/android/gpns/BaseService$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/garena/android/gpns/BaseService$IncomingHandler;-><init>(Lcom/garena/android/gpns/BaseService;Lcom/garena/android/gpns/BaseService$1;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/garena/android/gpns/BaseService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static getBroadcastManager()Lcom/garena/android/gpns/logic/BroadcastManager;
    .locals 1

    sget-object v0, Lcom/garena/android/gpns/BaseService;->mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

    return-object v0
.end method

.method public static getBus()Lcom/garena/android/gpns/notification/NotificationBus;
    .locals 1

    sget-object v0, Lcom/garena/android/gpns/BaseService;->mBus:Lcom/garena/android/gpns/notification/NotificationBus;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/garena/android/gpns/BaseService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "======== OnCreated "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/garena/android/gpns/BaseService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/garena/android/gpns/notification/NotificationBus;

    invoke-direct {v0}, Lcom/garena/android/gpns/notification/NotificationBus;-><init>()V

    sput-object v0, Lcom/garena/android/gpns/BaseService;->mBus:Lcom/garena/android/gpns/notification/NotificationBus;

    new-instance v0, Lcom/garena/android/gpns/logic/BroadcastManager;

    invoke-virtual {p0}, Lcom/garena/android/gpns/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/garena/android/gpns/logic/BroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/garena/android/gpns/BaseService;->mBroadcastManager:Lcom/garena/android/gpns/logic/BroadcastManager;

    invoke-virtual {p0}, Lcom/garena/android/gpns/BaseService;->onStartService()V

    invoke-virtual {p0}, Lcom/garena/android/gpns/BaseService;->registerReceivers()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/garena/android/gpns/BaseService;->unregisterReceivers()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "======== OnDestroy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/garena/android/gpns/BaseService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public abstract onReceiveMessage(Landroid/os/Message;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onStartService()V
.end method

.method protected abstract registerReceivers()V
.end method

.method protected abstract selfDestruct()V
.end method

.method protected send(Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected abstract unregisterReceivers()V
.end method
