.class public Lcom/ea/games/gamesdk/GarenaSdk;
.super Lcom/ea/games/gamesdk/GameSdkBase;
.source "GarenaSdk.java"

# interfaces
.implements Lcom/ea/games/gamesdk/GameSdkExtendInterface;
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# static fields
.field private static final GOOGLEPLAY_CHANNEL_ID:Ljava/lang/String; = "201069"

.field public static final LOG_TAG:Ljava/lang/String; = "GarenaSdk_EA"

.field private static final PAYMENT_REQUEST_ID:I = 0x1232

.field private static instance:Lcom/ea/games/gamesdk/GarenaSdk;


# instance fields
.field private AppId:Ljava/lang/String;

.field private AppSdkKey:Ljava/lang/String;

.field private ChannelId:Ljava/lang/String;

.field private ChannelName:Ljava/lang/CharSequence;

.field private OfferEnv:Ljava/lang/String;

.field private PackageName:Ljava/lang/String;

.field protected gson:Lcom/google/gson/Gson;

.field private mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

.field private mAdditionalInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthId:Ljava/lang/String;

.field private mAuthToken:Ljava/lang/String;

.field private mCreated:Z

.field mDenominations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/games/gamesdk/GameSdkBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    const-string v1, ""

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->PackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppId:Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppSdkKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->OfferEnv:Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelId:Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mCreated:Z

    iput-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mDenominations:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/games/gamesdk/GarenaSdk;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppSdkKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ea/games/gamesdk/GarenaSdk;Lcom/ea/games/gamesdk/AccountInfo;)Lcom/ea/games/gamesdk/AccountInfo;
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->PackageName:Ljava/lang/String;

    return-object p0
.end method

.method private changeRegistPush()V
    .locals 4

    new-instance v0, Lcom/garena/android/push/PushClient$PushRequestBuilder;

    invoke-direct {v0}, Lcom/garena/android/push/PushClient$PushRequestBuilder;-><init>()V

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/push/PushClient$PushRequestBuilder;->setAppId(Ljava/lang/Integer;)Lcom/garena/android/push/PushClient$PushRequestBuilder;

    sget-object v1, Lcom/ea/games/gamesdk/TokenUpdateReceiver;->pushAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/garena/android/push/PushClient$PushRequestBuilder;->setAppKey(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v3, "====[PUSH] Regist "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/push/PushClient$PushRequestBuilder;->setAccount(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;

    const-string v1, "gender:male"

    invoke-virtual {v0, v1}, Lcom/garena/android/push/PushClient$PushRequestBuilder;->setTags(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v2, "====[PUSH] Unregist "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/garena/android/push/PushClient$PushRequestBuilder;->build()Lcom/garena/android/push/PushClient$PushRequest;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;)V

    return-void
.end method

.method private createPushChannel()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Create push channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelName:Ljava/lang/CharSequence;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/ea/games/gamesdk/GarenaSdk;
    .locals 1

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->instance:Lcom/ea/games/gamesdk/GarenaSdk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-direct {v0}, Lcom/ea/games/gamesdk/GarenaSdk;-><init>()V

    sput-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->instance:Lcom/ea/games/gamesdk/GarenaSdk;

    :cond_0
    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->instance:Lcom/ea/games/gamesdk/GarenaSdk;

    return-object v0
.end method

.method public static getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "getManifestValue "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    :cond_0
    sget-object p0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Falied Retrieving apiKey - bundle is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Caught non-fatal exception while retrieving apiKey: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private getUserInfo()V
    .locals 2

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getUserInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/games/gamesdk/GarenaSdk$3;

    invoke-direct {v1, p0}, Lcom/ea/games/gamesdk/GarenaSdk$3;-><init>(Lcom/ea/games/gamesdk/GarenaSdk;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->GGGetUserInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V

    return-void
.end method

.method private loadSDKProperties(Landroid/content/Context;)V
    .locals 11

    const-string v0, "ChannelName: "

    const-string v1, "ChannelId: "

    const-string v2, "App Push Key: "

    const-string v3, "AppSdkKey: "

    const-string v4, "AppId: "

    const-string v5, "PackageName"

    const-string v6, "OfferEnv: "

    :try_start_0
    sget-object v7, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v8, "loadSDKProperties > ... "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "GameSDK.properties"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ea/games/gamesdk/GarenaSdk;->PackageName:Ljava/lang/String;

    const-string v8, "com.garena.sdk.applicationEnv"

    invoke-static {p1, v8}, Lcom/ea/games/gamesdk/GarenaSdk;->getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ea/games/gamesdk/GarenaSdk;->OfferEnv:Ljava/lang/String;

    const-string v8, "com.garena.sdk.applicationId"

    invoke-static {p1, v8}, Lcom/ea/games/gamesdk/GarenaSdk;->getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppId:Ljava/lang/String;

    const-string v8, "com.garena.sdk.applicationKey"

    invoke-static {p1, v8}, Lcom/ea/games/gamesdk/GarenaSdk;->getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppSdkKey:Ljava/lang/String;

    const-string v8, "com.garena.sdk.push.key"

    invoke-static {p1, v8}, Lcom/ea/games/gamesdk/GarenaSdk;->getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/ea/games/gamesdk/TokenUpdateReceiver;->pushAppKey:Ljava/lang/String;

    const-string v8, "com.google.firebase.messaging.default_notification_channel_id"

    invoke-static {p1, v8}, Lcom/ea/games/gamesdk/GarenaSdk;->getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelId:Ljava/lang/String;

    const-string v8, "com.google.firebase.messaging.default_notification_channel_name"

    invoke-static {p1, v8}, Lcom/ea/games/gamesdk/GarenaSdk;->getManifestValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelName:Ljava/lang/CharSequence;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ea/games/gamesdk/GarenaSdk;->OfferEnv:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ea/games/gamesdk/GarenaSdk;->PackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppSdkKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ea/games/gamesdk/TokenUpdateReceiver;->pushAppKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->ChannelName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "loadSDKProperties < success"

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadSDKProperties < failure, reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mInitCB:Lcom/ea/games/gamesdk/SdkCallback;

    const-string v0, "load Info failed."

    invoke-interface {p1, v0}, Lcom/ea/games/gamesdk/SdkCallback;->OnError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private loadSandboxMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    sget-object p1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    sget-object p1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public auth(Landroid/app/Activity;Lcom/ea/games/gamesdk/AuthenticationInfo;)V
    .locals 0

    invoke-virtual {p2}, Lcom/ea/games/gamesdk/AuthenticationInfo;->getAuthId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAuthId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ea/games/gamesdk/AuthenticationInfo;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAuthToken:Ljava/lang/String;

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAuthCB:Lcom/ea/games/gamesdk/SdkCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public exitApp(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public getAdditionalInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "GarenaSdk"

    return-object v0
.end method

.method public hasExit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLogout()Z
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string p3, "init"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mCreated:Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mInitCB:Lcom/ea/games/gamesdk/SdkCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mInitCB:Lcom/ea/games/gamesdk/SdkCallback;

    const-string p2, "init has NOT initialized"

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initApp(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public login(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    new-instance v0, Lcom/ea/games/gamesdk/GarenaSdk$1;

    invoke-direct {v0, p0}, Lcom/ea/games/gamesdk/GarenaSdk$1;-><init>(Lcom/ea/games/gamesdk/GarenaSdk;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ea/games/gamesdk/GarenaSdk$2;

    invoke-direct {v0, p0}, Lcom/ea/games/gamesdk/GarenaSdk$2;-><init>(Lcom/ea/games/gamesdk/GarenaSdk;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "notifySdk. "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onActivityResult"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1232

    if-ne p2, p1, :cond_0

    invoke-static {p4}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->onActivityResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    invoke-static {p1, p2, p3, p4}, Lcom/beetalk/sdk/GGPlatform;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/games/gamesdk/GarenaSdk;->loadSDKProperties(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->OfferEnv:Ljava/lang/String;

    const-string v0, "production"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ea/games/gamesdk/GarenaSdk;->loadSandboxMode(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/ea/games/gamesdk/GarenaSdk;->loadSandboxMode(Z)V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGEnableDebugLog()V

    :goto_0
    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->AppId:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->setAppId(Ljava/lang/String;)V

    const-string/jumbo p1, "user login"

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->setGarenaLoginTitle(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mCreated:Z

    return-void
.end method

.method public onDestory(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onLoginFailure(Ljava/lang/String;I)V
    .locals 1

    sget-object p2, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onLoginFailure. "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

    iget-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    iget-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginCB:Lcom/ea/games/gamesdk/SdkCallback;

    invoke-interface {p2, p1}, Lcom/ea/games/gamesdk/SdkCallback;->OnFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Lcom/beetalk/sdk/data/DataModel$UserInfo;)V
    .locals 5

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ea/games/gamesdk/AccountInfo;

    invoke-direct {v2}, Lcom/ea/games/gamesdk/AccountInfo;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ea/games/gamesdk/GarenaSdk;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ea/games/gamesdk/AccountInfo;->setUid(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ea/games/gamesdk/AccountInfo;->setSid(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/ea/games/gamesdk/AccountInfo;->setRawUid(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/beetalk/sdk/data/DataModel$UserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/ea/games/gamesdk/AccountInfo;->setUserName(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    const-string v0, "openID"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAdditionalInfo:Ljava/util/HashMap;

    const-string v0, "loginID"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginCB:Lcom/ea/games/gamesdk/SdkCallback;

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mAccountInfo:Lcom/ea/games/gamesdk/AccountInfo;

    invoke-interface {p1, v0}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionProcessed  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p2

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne p2, v2, :cond_0

    invoke-direct {p0}, Lcom/ea/games/gamesdk/GarenaSdk;->getUserInfo()V

    invoke-direct {p0}, Lcom/ea/games/gamesdk/GarenaSdk;->changeRegistPush()V

    invoke-direct {p0}, Lcom/ea/games/gamesdk/GarenaSdk;->createPushChannel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p2

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    if-eq p2, v2, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p2

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    if-ne p2, v2, :cond_3

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "session getErrorCode  "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "login Failure "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/ea/games/gamesdk/GarenaSdk;->onLoginFailure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Exception"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "login Failure Exception"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/ea/games/gamesdk/GarenaSdk;->onLoginFailure(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/ea/games/gamesdk/UserInfo;Lcom/ea/games/gamesdk/OrderInfo;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "======[PAYMENT] pay "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/ea/games/gamesdk/OrderInfo;->getItemId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    new-instance p2, Lcom/ea/games/gamesdk/GarenaSdk$5;

    invoke-direct {p2, p0, p3}, Lcom/ea/games/gamesdk/GarenaSdk$5;-><init>(Lcom/ea/games/gamesdk/GarenaSdk;Lcom/ea/games/gamesdk/OrderInfo;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestCatalogItems(Ljava/util/List;Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/CatalogInfo;",
            ">;",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/CatalogInfo;",
            ">;>;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "====[PAYMENT] requestCatalogItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk;->mLoginActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/games/gamesdk/GarenaSdk$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/ea/games/gamesdk/GarenaSdk$4;-><init>(Lcom/ea/games/gamesdk/GarenaSdk;Lcom/ea/games/gamesdk/SdkCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public restore(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
