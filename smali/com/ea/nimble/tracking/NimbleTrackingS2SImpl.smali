.class Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;
.super Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.source "NimbleTrackingS2SImpl.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$JsonData;
    }
.end annotation


# static fields
.field public static final EVENT_APPRESUMED:I = 0x67

.field public static final EVENT_APPSTARTED:I = 0x66

.field public static final EVENT_APPSTARTED_AFTERINSTALL:I = 0x65

.field public static final EVENT_LEVEL_UP:I = 0x6c

.field public static final EVENT_MTXVIEW_ITEM_PURCHASED:I = 0x69

.field private static final EVENT_PREFIX:Ljava/lang/String; = "SYNERGYS2S::"

.field public static final EVENT_REFERRERID_RECEIVED:I = 0x6a

.field public static final EVENT_TUTORIAL_COMPLETE:I = 0x6b

.field public static final EVENT_USER_REGISTERED:I = 0x68

.field private static final MARS_DEFAULT_POST_INTERVAL:D = 60.0

.field private static final MARS_MAX_POST_RETRY_DELAY:D = 86400.0

.field private static final SYNERGY_API_POST_EVENTS:Ljava/lang/String; = "/s2s/api/core/postEvents"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->onPostComplete(Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    return-void
.end method

.method private createEventRequestPostMap()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;

    invoke-direct {v5, p0, v4}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;Ljava/util/Map;)V

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "bundleId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sellId"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appName"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "appVersion"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "deviceId"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "android_id"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "deviceNativeId"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "systemName"

    const-string v6, "Android"

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "systemVersion"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceType"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceBrand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "carrierName"

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imei"

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Can not check permissions; Package Manager has died"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v1, v6}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "androidId"

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "countryCode"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "appLanguage"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "localization"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "deviceLanguage"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "deviceLocale"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v8, "%tZ"

    invoke-static {v1, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "timezone"

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gmtOffset"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "synergyId"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "macAddress"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->isDeviceRooted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_1

    :cond_1
    const-string v1, "0"

    :goto_1
    const-string v3, "jflag"

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getGameSpecifiedPlayerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "gamePlayerId"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "com.facebook.sdk.ApplicationId"

    invoke-static {v0}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fbAppId"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "fbAttrId"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_loggedInToOrigin:Z

    if-eqz v0, :cond_5

    const-string v0, "Y"

    goto :goto_3

    :cond_5
    const-string v0, "N"

    :goto_3
    const-string v1, "originUser"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v2, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v3, v3, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->value:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/ea/nimble/ReferrerReceiver;->getAndClearTrackingReferrerData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, "referrer"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "transactionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "Added event 106 (EVENT_REFERRERID_RECEIVED)"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "adEvents"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v4
.end method

.method private static isS2SEvent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NimbleTrackingS2SImpl"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "SYNERGYS2S::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onPostComplete(Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 7

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    iput-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postInterval:D

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyResponse;->getHttpResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0x190

    if-eq v5, v6, :cond_2

    invoke-interface {v1}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0x19f

    if-ne v5, v6, :cond_3

    :cond_2
    new-array p1, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, "Received HTTP status %d. Discarding post."

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    iput-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postInterval:D

    goto :goto_0

    :cond_3
    new-array p2, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Failed to send tracking events. Error: %s"

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    :goto_1
    const-string p2, "Telemetry post request finished, resetting isRequestInProgress flag to false."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_isRequestInProgress:Z

    if-eqz p1, :cond_5

    iget-wide p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v5

    iput-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide v5, 0x4072c00000000000L    # 300.0

    cmpl-double v3, v1, v5

    if-lez v3, :cond_4

    iput-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Posting a retry with delay of %s due to failed send. Queue size: %d"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(DZ)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "More items found in the queue. Post the next one now. Queue size: %d"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(DZ)V

    goto :goto_2

    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "No more items found in the queue. Wait on the timer. Queue size: %d"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(DZ)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p1, "No response exists in this post!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected canDropSession(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "Trying to drop session with no events"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object p1, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "eventType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    return v2
.end method

.method protected convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/tracking/Tracking$Event;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/tracking/Tracking;->isNimbleStandardEvent(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->isS2SEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v5, "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "eventType"

    const-string v6, "Launch"

    const/16 v7, 0x65

    const/16 v8, 0x67

    const/16 v9, 0x66

    const/4 v10, 0x0

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v12, v4

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/16 v11, 0x65

    :goto_0
    move-object v3, v6

    move-object v6, v15

    goto/16 :goto_5

    :cond_1
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::APPSTART_NORMAL"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::APPSTART_FROMURL"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "NotificationLaunch"

    move-object v6, v3

    move-object v12, v6

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/16 v11, 0x66

    :goto_1
    move-object v3, v4

    move-object v4, v15

    goto/16 :goto_5

    :cond_3
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::APPRESUME_NORMAL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::APPRESUME_FROMURL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::APPRESUME_FROMEBISU"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::APPRESUME_FROMPUSH"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "NotificationResume"

    goto/16 :goto_3

    :cond_5
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::USER_REGISTERED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x1

    const-string v11, "Error: missing event parameter \"%s\""

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v12, "NIMBLESTANDARD::KEY_USERNAME"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v12, v6, v10

    invoke-static {v0, v11, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    const/16 v6, 0x68

    const-string v11, "Registration"

    const-string/jumbo v12, "username"

    move-object v6, v3

    move-object v13, v6

    move-object v14, v13

    move-object v15, v14

    move-object v3, v11

    const/16 v11, 0x68

    goto/16 :goto_5

    :cond_7
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v12, "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v12, "NIMBLESTANDARD::KEY_MTX_CURRENCY"

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v13, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_MTX_PRICE"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v4, :cond_8

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v12, v15, v10

    invoke-static {v0, v11, v15}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-nez v13, :cond_9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v14, v6, v10

    invoke-static {v0, v11, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const/16 v6, 0x69

    const-string v11, "Purchase"

    const-string/jumbo v12, "tvalue"

    const-string v14, "fvalue"

    move-object v6, v3

    move-object v15, v6

    move-object v3, v11

    const/16 v11, 0x69

    goto/16 :goto_5

    :cond_a
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::TUTORIAL_COMPLETE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v6, 0x6b

    const-string v4, "TutorialComplete"

    move-object v6, v3

    move-object v12, v6

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/16 v11, 0x6b

    goto/16 :goto_1

    :cond_b
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::LEVEL_UP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v3, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v4, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v6, "NIMBLESTANDARD::KEY_GAMEPLAY_DURATION"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v11, "NIMBLESTANDARD::KEY_USER_LEVEL"

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v11, 0x6c

    const-string v12, "LevelUp"

    const-string v13, "duration"

    const-string v14, "gameplayDuration"

    const-string/jumbo v15, "userLevel"

    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v12

    move-object v12, v13

    move-object/from16 v13, v16

    goto/16 :goto_5

    :cond_c
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "SYNERGYS2S::CUSTOM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v11, "keyType01"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v12, "keyValue01"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v13, "keyType02"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyValue02"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v15, "keyType03"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iget-object v15, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v10, "keyValue03"

    invoke-interface {v15, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v15, v14

    move-object v14, v12

    move-object v12, v4

    move-object v4, v11

    move v11, v6

    move-object v6, v10

    goto :goto_5

    :cond_d
    return-object v3

    :cond_e
    :goto_2
    const-string v4, "Resume"

    :goto_3
    move-object v6, v3

    move-object v12, v6

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/16 v11, 0x67

    goto/16 :goto_1

    :cond_f
    :goto_4
    move-object v4, v3

    move-object v12, v4

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/16 v11, 0x66

    goto/16 :goto_0

    :goto_5
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "eventName"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/ea/nimble/tracking/Tracking$Event;->timestamp:Ljava/util/Date;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "timestamp"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "0"

    if-nez v12, :cond_10

    move-object v12, v1

    :cond_10
    const-string v3, "eventKeyType01"

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, ""

    if-nez v4, :cond_11

    move-object v4, v3

    :cond_11
    const-string v5, "eventValue01"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v14, :cond_12

    move-object v14, v1

    :cond_12
    const-string v4, "eventKeyType02"

    invoke-interface {v2, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v13, :cond_13

    move-object v13, v3

    :cond_13
    const-string v4, "eventValue02"

    invoke-interface {v2, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v15, :cond_14

    move-object v15, v1

    :cond_14
    const-string v1, "eventKeyType03"

    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_15

    move-object v6, v3

    :cond_15
    const-string v1, "eventValue03"

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "transactionId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v11, v7, :cond_16

    if-eq v11, v9, :cond_16

    if-ne v11, v8, :cond_18

    :cond_16
    iget-object v1, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->queueCurrentEventsForPost()V

    :cond_17
    const-string v1, "Logging application start/resume event. Posting event queue now."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(D)V

    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected createPostRequest(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Lcom/ea/nimble/SynergyRequest;
    .locals 9

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "apiVer"

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "synergy.s2s"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string p1, "Tracking server URL from NimbleEnvironment is nil. Adding observer for environment update finish."

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addObserverForSynergyEnvironmentUpdateFinished()V

    return-object v2

    :cond_0
    iget-object v4, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "now_timestamp"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "adEvents"

    iget-object p1, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    const-string v4, "synergyId"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const-string v8, "Creating post request. No synergyId in session info dictionary, inserting synergyId value %s now."

    invoke-static {p0, v8, v7}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v4, "Creating post request. No synergyId in session info dictionary, still no synergyId available now."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    const-string v4, "sellId"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v4, "Creating POST request. Missing sell id."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    const-string v4, "deviceId"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string p1, "Creating POST request. Missing device id."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    new-instance p1, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/s2s/api/core/postEvents"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p1, v3, v4, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    iput-object v1, p1, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    iput-object v0, p1, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$JsonData;

    invoke-direct {v0, p0, v5}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$JsonData;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;Ljava/util/Map;)V

    iput-object v0, p1, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    return-object p1
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.trackingimpl.s2s"

    return-object v0
.end method

.method protected getFeatureTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "S2STracker"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TrackingS2S"

    return-object v0
.end method

.method protected getPersistenceIdentifier()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "S2S"

    return-object v0
.end method

.method public getRetryTime(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)D
    .locals 9

    const-string v0, "getMessage result code "

    const-string v1, "S2S retry delay result code is:"

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "resultCode"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "~"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const/16 v0, -0x5208

    if-gt p1, v0, :cond_2

    const/16 v0, -0x55f0

    if-lt p1, v0, :cond_2

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_1

    iput-wide v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    :cond_1
    iget-wide v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double v5, v5, v7

    iput-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide v7, 0x40f5180000000000L    # 86400.0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_3

    iput-wide v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v7

    iput-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide v7, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v5, v7

    if-lez v0, :cond_3

    iput-wide v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Delay will be:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse result code in TrackingS2S retransmission check. Defaulting to retryTime of:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-wide v3
.end method

.method protected packageCurrentSession()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->createEventRequestPostMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v1, "adEvents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->queueCurrentEventsForPost()V

    :cond_0
    return-void
.end method

.method protected postPendingEvents(Z)V
    .locals 7

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->isAbleToPostEvent(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    const-string p1, "No valid tracking sessions to post."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->createPostRequest(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Lcom/ea/nimble/SynergyRequest;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v3, v2, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iput-boolean p1, v3, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget v3, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    iget v3, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v4

    const-string v3, "Event queue marshalled. Incrementing repost count from %d to %d"

    invoke-static {p0, v3, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    add-int/2addr p1, v4

    iput p1, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    iput-boolean v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_isRequestInProgress:Z

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    new-instance v5, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    invoke-interface {v3, v2, v5}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    nop

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v5, 0x100000

    div-long/2addr v2, v5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v5, "OutOfMemoryError with "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB left. Dropping current session"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string p1, "Out of memory. Dropping current session"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postInterval:D

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_isRequestInProgress:Z

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "More items found in the queue. Post the next one now. Queue size: %d"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(DZ)V

    goto :goto_2

    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "No more items found in the queue. Wait on the timer. Queue size: %d"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(DZ)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p1, "No tracking sessions to post."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public shouldAttemptReTrans(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Z
    .locals 4

    const-string v0, "getMessage result code "

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "resultCode"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "~"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    const/16 v0, -0x4e20

    if-gt p1, v0, :cond_2

    const/16 v0, -0x5208

    if-ge p1, v0, :cond_3

    const/16 v0, -0x55f0

    if-le p1, v0, :cond_3

    goto :goto_1

    :catch_0
    const-string p1, "Failed to parse result code in TrackingS2S retransmission check. Defaulting to NO."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "S2S retransmission is: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    :goto_2
    const-string p1, "S2S retrans had no network handle response. Network probably failed to connect. \nWe should attempt retrans."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
