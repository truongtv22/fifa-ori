.class public Lcom/beetalk/sdk/helper/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static final META_APPLICATION_KEY:Ljava/lang/String; = "com.garena.sdk.applicationKey"

.field private static final META_APPLICATION_SOURCE_PROPERTY:Ljava/lang/String; = "com.garena.sdk.ApplicationSourceId"

.field private static final META_FACEBOOK_APPLICATION_ID:Ljava/lang/String; = "com.facebook.sdk.ApplicationId"

.field private static final META_GARENA_APPLICATION_ID:Ljava/lang/String; = "com.garena.sdk.applicationId"

.field private static final META_GARENA_APPLICATION_VARIANT:Ljava/lang/String; = "com.garena.sdk.applicationVariant"

.field private static final META_GOOGLE_CLIENT_ID:Ljava/lang/String; = "com.garena.sdk.google_client_id"

.field private static final META_GOOGLE_PLAY_GAMES_APP_ID:Ljava/lang/String; = "com.google.android.gms.games.APP_ID"

.field private static final META_GOOGLE_PLAY_GAMES_OAUTH_CLIENT_ID:Ljava/lang/String; = "com.garena.sdk.gms.games.OAUTH_CLIENT_ID"

.field private static final META_NOTIFICATION_LARGE_LOGO_PROPERTY:Ljava/lang/String; = "com.garena.sdk.push.large_logo"

.field private static final META_PUSH_APPLICATION_ID:Ljava/lang/String; = "com.garena.sdk.push.applicationId"

.field private static final META_TIKTOK_CLIENT_KEY:Ljava/lang/String; = "com.garena.sdk.tiktok_client_key"

.field private static final META_TWITTER_KEY:Ljava/lang/String; = "com.garena.sdk.twitter.key"

.field private static final META_TWITTER_SECRET:Ljava/lang/String; = "com.garena.sdk.twitter.secret"

.field private static source:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_0
    const-string v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "error_params"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_1
    const-string v0, "error_scope"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_2
    const-string v0, "server_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_3
    const-string v0, "error_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_4
    const-string v0, "error_token_session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_5
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getErrorCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_0
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "error_params"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "error_token_session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "error_token"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "error_scope"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "server_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7a7a59f4 -> :sswitch_4
        -0x30cf32a3 -> :sswitch_3
        -0x30bbb6fe -> :sswitch_2
        -0x5abafa7 -> :sswitch_1
        0x11af4b9d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getGoogleClientId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.garena.sdk.google_client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGooglePlayGamesClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.gms.games.OAUTH_CLIENT_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntegerAppId(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.applicationId"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public static getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "App ID is less than or equal to 0."

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaDataAppVariant(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.applicationVariant"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetaDataApplicationKey()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.garena.sdk.applicationKey"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaDataSourceId(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/helper/Helper;->source:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.ApplicationSourceId"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/beetalk/sdk/helper/Helper;->source:Ljava/lang/Integer;

    return-object p0
.end method

.method public static getMetadataFBAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.facebook.sdk.ApplicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNotificationLargeLogo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.garena.sdk.push.large_logo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    return v0
.end method

.method public static getPushAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.push.applicationId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTikTokSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.tiktok_client_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeNow()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static getTwitterKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.twitter.key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getTwitterSecret(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.garena.sdk.twitter.secret"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static hasGooglePlayGameAppId(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "com.google.android.gms.games.APP_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static isSupportGasBigImageShare(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I

    move-result p0

    const/16 v1, 0x67

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportGasShare(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I

    move-result p0

    const/16 v1, 0x3c

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static openInGooglePlay(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "market://details?id="

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
