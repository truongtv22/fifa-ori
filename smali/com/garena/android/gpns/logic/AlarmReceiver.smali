.class public Lcom/garena/android/gpns/logic/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DATA_BUNDLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/garena/android/gpns/GNotificationService;->IS_RUNNING:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/garena/android/gpns/GNotificationService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ALARM_RESTART_SERVICE_DIED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_1
    const-string p1, "KEY_ALARM_TYPE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "TYPE_WAKE_CONNECT"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p1

    const-string v0, "WAKE_CONNECT"

    invoke-virtual {p1, v0, p2}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    goto :goto_0

    :cond_3
    const-string p1, "TYPE_LONG_PING"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p1

    const-string v0, "LONG_PING"

    invoke-virtual {p1, v0, p2}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/garena/android/gpns/GNotificationService;->getBus()Lcom/garena/android/gpns/notification/NotificationBus;

    move-result-object p1

    const-string v0, "SHORT_PING"

    invoke-virtual {p1, v0, p2}, Lcom/garena/android/gpns/notification/NotificationBus;->fire(Ljava/lang/String;Lcom/garena/android/gpns/notification/event/NotifyEvent;)V

    :goto_0
    return-void
.end method
