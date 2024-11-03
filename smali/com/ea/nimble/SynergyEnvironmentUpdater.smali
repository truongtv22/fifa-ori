.class Lcom/ea/nimble/SynergyEnvironmentUpdater;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;
    }
.end annotation


# static fields
.field private static final GET_ANONUID_MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final GET_DIRECTION_MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final GET_EADEVICEID_MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final SYNERGY_DIRECTOR_RESPONSE_ERROR_CODE_SERVERS_FULL:I = -0x11172

.field private static final SYNERGY_USER_VALIDATE_EADEVICEID_RESPONSE_ERROR_CODE_CLEAR_CLIENT_CACHED_EADEVICEID:I = -0x4e7e

.field private static final SYNERGY_USER_VALIDATE_EADEVICEID_RESPONSE_ERROR_CODE_VALIDATION_FAILED:I = -0x4e7d

.field private static final VALIDATE_EADEVICEID_MAX_RETRY_ATTEMPTS:I = 0x3


# instance fields
.field protected m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

.field private m_core:Lcom/ea/nimble/BaseCore;

.field protected m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_getAnonUIDRetryCount:J

.field private m_getDirectionRetryCount:J

.field private m_getEADeviceIDRetryCount:J

.field protected m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

.field private m_validateEADeviceIDRetryCount:J


# direct methods
.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    new-instance p1, Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-direct {p1}, Lcom/ea/nimble/EnvironmentDataContainer;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    iput-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-void
.end method

.method static synthetic access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->loadConfig(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyValidateEADeviceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    return-wide p1
.end method

.method static synthetic access$1108(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->isTimeoutError(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    return-wide p1
.end method

.method static synthetic access$408(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetDirection()V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetAnonUid()V

    return-void
.end method

.method static synthetic access$700(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-wide p1
.end method

.method static synthetic access$708(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetEADeviceId()V

    return-void
.end method

.method static synthetic access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 0

    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    return-wide p1
.end method

.method static synthetic access$908(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4

    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    return-wide v0
.end method

.method private callSynergyGetAnonUid()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyIdManager;->getAnonymousSynergyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Not getting anonymous ID from Synergy since it was loaded from persistence"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v1, v0}, Lcom/ea/nimble/EnvironmentDataContainer;->setSynergyAnonymousId(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "apiVer"

    const-string v3, "1.0.0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "updatePriority"

    const-string v3, "false"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getEAHardwareId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hwId"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v1}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eadeviceid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v3, "synergy.user"

    invoke-virtual {v2, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;

    invoke-direct {v3, p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    const-string v4, "/user/api/android/getAnonUid"

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void

    :cond_1
    const-string v0, "getAnonUid got an invalid EA Device ID."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v2, "EA Device ID is invalid"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void
.end method

.method private callSynergyGetDirection()V
    .locals 11

    const-string v0, "Error loading synergy_direction.json: "

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceCodename()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceBrand()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceFingerprint()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    const-string v0, "GETDIRECTION bundleId is invalid"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v2, "bundleId is invalid"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v0, "GETDIRECTION deviceString is invalid"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v2, "deviceString is invalid"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v8, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v8}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v8

    sget-object v10, Lcom/ea/nimble/NimbleConfiguration;->MANUAL:Lcom/ea/nimble/NimbleConfiguration;

    if-ne v8, v10, :cond_2

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "synergy_direction"

    const-string v4, "raw"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ea/nimble/Utility;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->loadConfig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v8, "packageId"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceString"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceCodename"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manufacturer"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "brand"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fingerprint"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serverEnvironment"

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getSynergyServerEnvironmentName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkVersion"

    const-string v2, "0.5.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apiVer"

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Lcom/ea/nimble/Base;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;

    invoke-direct {v3, p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    const-string v4, "/director/api/android/getDirectionByPackage"

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void
.end method

.method private callSynergyGetEADeviceId()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "apiVer"

    const-string v3, "1.0.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hwId"

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "macHash"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "androidId"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_4

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "meid"

    goto :goto_1

    :cond_3
    const-string v2, "imei"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v3, "synergy.user"

    invoke-virtual {v2, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;

    invoke-direct {v3, p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    const-string v4, "/user/api/android/getDeviceID"

    invoke-interface {v0, v2, v4, v1, v3}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void
.end method

.method private callSynergyValidateEADeviceId(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "apiVer"

    const-string v3, "1.0.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hwId"

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eadeviceid"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "macHash"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "androidId"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_4

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "meid"

    goto :goto_1

    :cond_3
    const-string v2, "imei"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v3, "synergy.user"

    invoke-virtual {v2, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;

    invoke-direct {v3, p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V

    const-string p1, "/user/api/android/validateDeviceID"

    invoke-interface {v0, v2, p1, v1, v3}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void
.end method

.method private getSynergyServerEnvironmentName()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/SynergyEnvironmentUpdater$5;->$SwitchMap$com$ea$nimble$NimbleConfiguration:[I

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/NimbleConfiguration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    const-string v3, "live"

    if-eq v0, v2, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Request for Synergy server environment name with unknown NimbleConfiguration %s"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NimbleCustomizedSynergyServerEnvironmentName"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isTimeoutError(Ljava/lang/Exception;)Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/ea/nimble/Error;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-virtual {p1, v0}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private loadConfig(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/EnvironmentDataContainer;->setMostRecentDirectorResponseTimestamp(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->setGetDirectionResponseDictionary(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getGetDirectionResponseDictionary()Ljava/util/Map;

    move-result-object v0

    const-string v1, "serverData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->setServerUrls(Ljava/util/Map;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object v2

    const-string v3, "key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "value"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v1, "No Synergy server URLs available."

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_1
    const-string v0, "ignoreEADeviceId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ignoreEADeiveIdStr ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyValidateEADeviceId(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->loadEADeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyValidateEADeviceId(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetEADeviceId()V

    :goto_2
    return-void
.end method

.method private onStartUpSequenceFinished(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;->callback(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Startup sequence finished, but no completion callback set."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Canceling network connection."

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    :cond_0
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    const-string v2, "Synergy startup sequence canceled."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void
.end method

.method getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SynergyEnv"

    return-object v0
.end method

.method public startSynergyStartupSequence(Lcom/ea/nimble/EnvironmentDataContainer;Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object p1

    sget-object p2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq p1, p2, :cond_0

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    const-string v0, "Device is not connected to Wifi or wireless."

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetDirection()V

    return-void
.end method
