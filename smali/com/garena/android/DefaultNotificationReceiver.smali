.class public Lcom/garena/android/DefaultNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultNotificationReceiver.java"


# static fields
.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_DATA:Ljava/lang/String; = "DATA"

.field public static final KEY_PARAMETER:Ljava/lang/String; = "parameter"

.field public static final NOTIFY_ID:Ljava/lang/String; = "NOTIFY_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "content"

    const-string v1, "parameter"

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DATA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v7, "Notification received, data: %s"

    invoke-static {v7, v5}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, ""

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v8, v5

    :goto_0
    :try_start_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v8, v5

    :catch_1
    :try_start_2
    const-string v7, "\': u\'"

    const-string v9, "\': \'"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "\', u\'"

    const-string v9, "\', \'"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "{u\'"

    const-string/jumbo v9, "{\'"

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :cond_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    new-instance v0, Lcom/garena/android/push/NotificationData$NotificationBuilder;

    invoke-direct {v0}, Lcom/garena/android/push/NotificationData$NotificationBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/garena/android/push/NotificationData$NotificationBuilder;->setMessage(Ljava/lang/String;)Lcom/garena/android/push/NotificationData$NotificationBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/garena/android/push/NotificationData$NotificationBuilder;->setTitle(Ljava/lang/String;)Lcom/garena/android/push/NotificationData$NotificationBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/garena/android/push/NotificationData$NotificationBuilder;->setPackageName(Ljava/lang/String;)Lcom/garena/android/push/NotificationData$NotificationBuilder;

    const-string v1, "NOTIFY_ID"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/garena/android/push/NotificationData$NotificationBuilder;->setNotificationId(I)Lcom/garena/android/push/NotificationData$NotificationBuilder;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->getPushAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x2710

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/garena/android/push/NotificationData$NotificationBuilder;->setNotificationId(I)Lcom/garena/android/push/NotificationData$NotificationBuilder;

    :goto_2
    invoke-virtual {v0}, Lcom/garena/android/push/NotificationData$NotificationBuilder;->build()Lcom/garena/android/push/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/garena/android/push/NotificationData;->queueNotification(Landroid/content/Context;)V

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p2, p1, v6

    const-string p2, "Notification queued: %s"

    invoke-static {p2, p1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
