.class public Lcom/garena/android/GPNManager;
.super Ljava/lang/Object;
.source "GPNManager.java"


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static mInstance:Lcom/garena/android/GPNManager;

.field private static pushRequest:Lcom/garena/android/push/PushClient$PushRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/garena/android/GPNManager;
    .locals 2

    const-class v0, Lcom/garena/android/GPNManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/garena/android/GPNManager;->mInstance:Lcom/garena/android/GPNManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/garena/android/GPNManager;

    invoke-direct {v1}, Lcom/garena/android/GPNManager;-><init>()V

    sput-object v1, Lcom/garena/android/GPNManager;->mInstance:Lcom/garena/android/GPNManager;

    :cond_0
    sget-object v1, Lcom/garena/android/GPNManager;->mInstance:Lcom/garena/android/GPNManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSenderId()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gcm_defaultSenderId"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private isUsingFcm()Z
    .locals 4

    sget-object v0, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_using_fcm"

    const-string v3, "bool"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static register(Landroid/content/Context;Lcom/garena/android/push/PushClient$PushRequest;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    sput-object p1, Lcom/garena/android/GPNManager;->pushRequest:Lcom/garena/android/push/PushClient$PushRequest;

    return-void
.end method


# virtual methods
.method public startService()V
    .locals 12

    invoke-direct {p0}, Lcom/garena/android/GPNManager;->isUsingFcm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    move v10, v0

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    :goto_1
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "beepost mode: %d"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    sget-object v0, Lcom/garena/android/GPNManager;->pushRequest:Lcom/garena/android/push/PushClient$PushRequest;

    iget-object v0, v0, Lcom/garena/android/push/PushClient$PushRequest;->appId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/garena/android/GPNManager;->pushRequest:Lcom/garena/android/push/PushClient$PushRequest;

    iget-object v6, v0, Lcom/garena/android/push/PushClient$PushRequest;->appKey:Ljava/lang/String;

    sget-object v0, Lcom/garena/android/GPNManager;->pushRequest:Lcom/garena/android/push/PushClient$PushRequest;

    iget-object v7, v0, Lcom/garena/android/push/PushClient$PushRequest;->account:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/garena/android/GPNManager;->getSenderId()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/garena/android/GPNManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/garena/android/gpns/utility/DeviceUtil;->generateDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v4 .. v11}, Lcom/garena/android/beepost/service/BeePostAPI;->registerBeePost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
