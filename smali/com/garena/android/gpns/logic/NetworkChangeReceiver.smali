.class public Lcom/garena/android/gpns/logic/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/garena/android/gpns/utility/DeviceUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "NETWORK_CHANGED : true"

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    const-string p2, "SCHEDULE_WAKE_CONNECT"

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    const/16 p2, 0x7530

    invoke-static {p1, p2}, Lcom/garena/android/gpns/utility/AlarmUtil;->scheduleWakeConnect(Landroid/content/Context;I)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBroadcastManager()Lcom/garena/android/gpns/logic/BroadcastManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/android/gpns/logic/BroadcastManager;->unregisterNetworkChangeReceiver()V

    :cond_0
    return-void
.end method
