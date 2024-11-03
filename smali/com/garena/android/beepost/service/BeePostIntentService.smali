.class public Lcom/garena/android/beepost/service/BeePostIntentService;
.super Landroid/app/IntentService;
.source "BeePostIntentService.java"


# static fields
.field protected static final INTENT_APP_ACCOUNT:Ljava/lang/String; = "account"

.field protected static final INTENT_APP_GCM_DEFAULT_SENDER_ID:Ljava/lang/String; = "service_gcm_send_id"

.field protected static final INTENT_APP_ID:Ljava/lang/String; = "app_id"

.field protected static final INTENT_APP_KEY:Ljava/lang/String; = "app_key"

.field protected static final INTENT_APP_SERVICE_TYPE:Ljava/lang/String; = "service"

.field protected static final INTENT_APP_TOKEN:Ljava/lang/String; = "token"

.field protected static final INTENT_DEVICE_ID:Ljava/lang/String; = "device_id"

.field protected static final INTENT_RETRIES_COUNT:Ljava/lang/String; = "failed_count"

.field private static final MAX_RETRIES:I = 0x6

.field private static final TIME_INTERVAL_BASE:J = 0x2710L

.field private static final mRequestCode:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BeePostIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/garena/android/beepost/service/BeePostIntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private handleNewToken(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12

    const-string v0, "failed_count"

    const-string v1, "BeePost acquires token RETRY "

    const-string v2, "app_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "app_key"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "account"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "device_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "service"

    const/4 v10, 0x1

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sget-boolean v2, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "new token:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "n.a"

    goto :goto_0

    :cond_0
    move-object v7, p1

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/garena/android/beepost/service/BeePostIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object v7, p1

    invoke-static/range {v3 .. v9}, Lcom/garena/android/beepost/service/BeePostAPI;->submitToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    invoke-virtual {p2, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-boolean v2, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x6

    if-le p1, v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_5

    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_2

    :cond_5
    const/high16 v0, 0x40000000    # 2.0f

    :goto_2
    invoke-virtual {p0}, Lcom/garena/android/beepost/service/BeePostIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2, p2, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/garena/android/beepost/service/BeePostIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    int-to-long v5, p1

    mul-long v5, v5, v3

    add-long/2addr v1, v5

    invoke-virtual {v0, v10, v1, v2, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    sget-boolean p2, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    if-eqz p2, :cond_6

    sget-object p2, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "service"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/garena/android/gpns/external/ServiceManager;

    invoke-virtual {p0}, Lcom/garena/android/beepost/service/BeePostIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/garena/android/gpns/external/ServiceManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/garena/android/beepost/service/BeePostIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LOG_TAG:Ljava/lang/String;

    const-string v1, "BeePost uses FCM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LOG_TAG:Ljava/lang/String;

    const-string v1, "BeePost uses GPNS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :goto_0
    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/garena/android/beepost/service/BeePostIntentService;->handleNewToken(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Lcom/garena/android/gpns/external/ServiceManager;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/garena/android/beepost/service/BeePostIntentService;->handleNewToken(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/garena/android/beepost/service/BeePostIntentService;->handleNewToken(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
