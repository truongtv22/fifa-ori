.class public Lcom/garena/android/gpns/logic/UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "======== Uninstall Received ========="

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/garena/android/gpns/strategy/ServiceLoaderIntentService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
