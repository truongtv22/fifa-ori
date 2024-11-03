.class public abstract Lcom/garena/android/beepost/service/PushTokenUpdateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushTokenUpdateBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract onNewPushToken(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "gpid_update_intent_extra_gpid"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/garena/android/beepost/service/PushTokenUpdateBroadcastReceiver;->onNewPushToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
