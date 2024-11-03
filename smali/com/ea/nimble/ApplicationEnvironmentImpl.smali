.class public Lcom/ea/nimble/ApplicationEnvironmentImpl;
.super Lcom/ea/nimble/Component;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationEnvironment;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final KEY_GAME_PLAYER_ID:Ljava/lang/String; = "gamePlayerId"

.field private static final MILLIS_IN_AN_HOUR:I = 0x36ee80

.field private static final NIMBLE_APPLICATIONENVIRONMENT_PERSISTENCE_GAME_SPECIFIED_ID:Ljava/lang/String; = "nimble_applicationenvironment_game_specified_id"

.field private static final PERSISTENCE_AGE_REQUIREMENTS:Ljava/lang/String; = "ageRequirement"

.field private static final PERSISTENCE_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PERSISTENCE_TIME_RETRIEVED:Ljava/lang/String; = "timeRetrieved"

.field private static final SUPERUSER_APK_LOCATION:Ljava/lang/String; = "/system/app/Superuser.apk"

.field private static final SYNERGY_API_GET_AGE_REQUIREMENTS:Ljava/lang/String; = "/rest/agerequirements/ip"

.field private static isMainApplicationActive:Z

.field private static isMainApplicationRunning:Z

.field private static s_currentActivity:Landroid/app/Activity;


# instance fields
.field private m_advertisingId:Ljava/lang/String;

.field private m_advertisingIdCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;",
            ">;"
        }
    .end annotation
.end field

.field private m_androidId:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_language:Ljava/lang/String;

.field private m_limitAdTrackingEnabled:Z

.field private m_networkListener:Landroid/content/BroadcastReceiver;

.field private m_packageId:Ljava/lang/String;

.field private m_parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_playerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 5

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    sget-object v1, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_6

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_playerIdMap:Ljava/util/Map;

    new-instance p1, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_androidId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->generateParameterDictionary()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_parameters:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getDocumentPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APP_ENV: Delete temp file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Nimble"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "APP_ENV: Cannot create necessary folder"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot create a ApplicationEnvironment without a valid current activity"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_networkListener:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ea/nimble/ApplicationEnvironmentImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_networkListener:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingIdCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingIdCallbacks:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_parameters:Ljava/util/Map;

    return-object p0
.end method

.method private static commandExists(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "BaseCore"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private generateParameterDictionary()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_androidId:Ljava/lang/String;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "androidId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "systemName"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "systemVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceCodename"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceBrand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceLanguage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceLocale"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "countryCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android_id"

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "fbAttrId"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getDeviceLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMainApplicationActive()Z
    .locals 1

    sget-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationActive:Z

    return v0
.end method

.method public static isMainApplicationRunning()Z
    .locals 1

    sget-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning:Z

    return v0
.end method

.method private retrieveAdvertisingIdImpl(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.android.gms.common.GooglePlayServicesNotAvailableException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingIdCallbacks:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingIdCallbacks:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    new-instance p1, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;

    invoke-direct {p1, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    const-string p1, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_3
    const-string p1, ""

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingIdCallbacks:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingIdCallbacks:Ljava/util/List;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_3

    const-string p1, "m_advertisingIdCallbacks was null after trying to refresh advertising ID, something is wrong"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    const-string v2, ""

    invoke-interface {v1, v2, p1}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catch_0
    nop

    const-string v1, "APP_ENV: Cannot get Google Advertising ID because this device is not using google play services"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    :cond_5
    return-void
.end method

.method private setApplicationLanguageCode(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->validatedLanguageCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "Setting the same language %s, skipping assignment"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Successfully set language to %s."

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "nimble.notification.languageChange"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    :cond_2
    if-nez p2, :cond_4

    const-string p1, "com.ea.nimble.applicationEnvironment"

    sget-object p2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p1, p2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "Saving language data to persistence."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "language"

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_3
    const-string p1, "Could not get application environment persistence object to save to."

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning:Z

    sput-object p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    return-void
.end method

.method private validatedLanguageCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p1, "AppEnv: Language parameter is null or empty; keeping language at previous value."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 p2, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string p2, "^([a-z]{2,3})?(-([A-Z][a-z]{3}))?(-([A-Z]{2}))?(-.*)*$"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "; backend system will likely treat it as en-US."

    const-string v4, " in language code "

    if-eqz v2, :cond_4

    const-string v2, "iw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "he"

    goto :goto_0

    :cond_1
    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "id"

    goto :goto_0

    :cond_2
    const-string v2, "ji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "yi"

    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown language code "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown region code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object p1

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Malformed language code "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be validated; backend system will likely treat it as en-US."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getAgeCompliance()I
    .locals 10

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.applicationEnvironment"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "timeRetrieved"

    invoke-virtual {v0, v3}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "Could not get persistence object"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v1

    :goto_0
    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v3, v6

    const v6, 0x36ee80

    div-int/2addr v3, v6

    const/16 v6, 0x18

    if-le v3, v6, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "getAgeCompliance- Stored value is older than 24 hours. Call refreshAgeCompliance to retrieve minAgeCompliance"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    const-string v1, "ageRequirement"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v2

    const-string v1, "getAgeCompliance- No stored value in persistance. Call refreshAgeCompliance to retrieve minAgeCompliance."

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationBundleId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationLanguageCode()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_version:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "PackageManager could not be obtained"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "Package name %s not found"

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_version:Ljava/lang/String;

    return-object v0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Nimble"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not build cache path"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Could not retrieve telephony service"

    invoke-static {p0, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.applicationEnvironment"

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Currency;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCodename()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceFingerprint()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentPath()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Nimble"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not build files path"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGameSpecifiedPlayerId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_playerIdMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "gamePlayerId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGoogleAdvertisingId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleEmail()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIadAttribution()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AppEnv"

    return-object v0
.end method

.method public getMACAddress()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPlayerIdMap()Ljava/util/Map;
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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_playerIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public getShortApplicationLanguageCode()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppCracked()Z
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FraudDetection"

    const-string v3, "Returning false for isAppCracked() since it hasn\'t been implemented yet"

    invoke-static {v2, v3, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public isDeviceRooted()Z
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "su"

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->commandExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    return v0
.end method

.method public refreshAgeCompliance()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Adding network observer for age compliance refresh"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_networkListener:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_networkListener:Landroid/content/BroadcastReceiver;

    const-string v1, "nimble.notification.networkStatusChange"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/ea/nimble/ApplicationEnvironmentImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$2;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    new-instance v1, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/rest/agerequirements/ip"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method

.method public requestSafetyNetAttestation([BLcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Skipping SafetyNet Attestation as Google Play Services is not available"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v1, "Google Play Services is not available"

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-interface {p2, v2, p1}, Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;->onCallback(Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void

    :cond_0
    const-string v0, "com.ea.nimble.safetynet_api_key"

    invoke-static {v0, v2}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Skipping SafetyNet Attestation since \'com.ea.nimble.safetynet_api_key\' was not found in manifest"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v1, "Safety Net API key not found"

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-interface {p2, v2, p1}, Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;->onCallback(Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->attest([BLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/ApplicationEnvironmentImpl$6;

    invoke-direct {v1, p0, p2}, Lcom/ea/nimble/ApplicationEnvironmentImpl$6;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/ApplicationEnvironmentImpl$5;

    invoke-direct {v1, p0, p2}, Lcom/ea/nimble/ApplicationEnvironmentImpl$5;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method protected restore()V
    .locals 7

    const-string v0, "com.ea.nimble.applicationEnvironment"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const-string v1, "ApplicationEnvironment"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setApplicationLanguageCode(Ljava/lang/String;Z)V

    const-string v0, "Persistence is null - Couldn\'t read Game Specified Player ID or Language from Persistence"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v4, "nimble_applicationenvironment_game_specified_id"

    invoke-virtual {v0, v4}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Current game specified player ID is empty, reload from persistence"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "gamePlayerId"

    invoke-virtual {p0, v1, v4}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setPlayerId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "language"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Restored language %s from persistence."

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "Unable to restore language from persistence. Setting language to device language."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setApplicationLanguageCode(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected resume()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Setting application to active in resume"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationActive:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveAdvertisingIdImpl(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V

    return-void
.end method

.method public retrieveAdvertisingId(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_advertisingId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_limitAdTrackingEnabled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveAdvertisingIdImpl(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setApplicationLanguageCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setApplicationLanguageCode(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGameSpecifiedPlayerId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "gamePlayerId"

    invoke-virtual {p0, v0, p1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setPlayerId(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.ea.nimble.applicationEnvironment"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "ApplicationEnvironment"

    const-string v1, "Persistence is null - Couldn\'t save Game Specified Player ID to Persistence"

    invoke-static {v0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "nimble_applicationenvironment_game_specified_id"

    invoke-virtual {v0, v1, p1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void
.end method

.method public setPlayerId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "setPlayerId: Empty/Null key"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_playerIdMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, " = "

    const-string v4, "setPlayerId: ["

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_playerIdMap:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] success."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setPlayerId: Empty value. Removed entry for key "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p2, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_playerIdMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p1, "nimble.notification.playerIdMapChange"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] skipped. Same key/value exists or the new value is empty!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected setup()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Setting application to active in setup"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationActive:Z

    sget-object v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveAdvertisingIdImpl(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V

    return-void
.end method

.method protected suspend()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Setting application to NOT active in suspend"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationActive:Z

    return-void
.end method

.method protected teardown()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Setting application to NOT active in teardown"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationActive:Z

    return-void
.end method
