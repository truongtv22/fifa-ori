.class public Lcom/ea/nimble/SynergyEnvironmentImpl;
.super Lcom/ea/nimble/Component;
.source "SynergyEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyEnvironment;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final PERSISTENCE_DATA_ID:Ljava/lang/String; = "environmentData"

.field public static final SYNERGY_APP_VERSION_OK:I = 0x0

.field public static final SYNERGY_APP_VERSION_UPDATE_RECOMMENDED:I = 0x1

.field public static final SYNERGY_APP_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SYNERGY_UPDATE_RATE_LIMIT_PERIOD_IN_SECONDS:D = 60.0

.field public static final SYNERGY_UPDATE_REFRESH_PERIOD_IN_SECONDS:D = 300.0


# instance fields
.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_dataLoadedOnComponentSetup:Z

.field private m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_overrideUrlList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

.field private m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;


# direct methods
.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/SynergyEnvironmentImpl;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ea/nimble/SynergyEnvironmentImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdateImpl(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/EnvironmentDataContainer;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->saveEnvironmentDataToPersistent()V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdateRateLimiting()V

    return-void
.end method

.method private clearSynergyEnvironmentUpdateRateLimiting()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method

.method private isInSynergyEnvironmentUpdateRateLimitingPeriod()Z
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private restoreEnvironmentDataFromPersistent(Z)Z
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.synergyEnvironment"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "environmentData"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Environment persistence data value not found in persistence object. Probably first install."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast v0, Lcom/ea/nimble/EnvironmentDataContainer;

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v2, "Restored environment data from persistent. Restored data timestamp, %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p0, v2, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->loadEADeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "nimble.environment.notification.restored_from_persistent"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v3

    :catch_0
    const-string p1, "Environment persistence data value is not the expected type."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p1, "Could not get environment persistence object to restore from"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return v1
.end method

.method private saveEnvironmentDataToPersistent()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.synergyEnvironment"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Saving environment data to persistent."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "environmentData"

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    goto :goto_0

    :cond_0
    const-string v0, "Could not get environment persistence object to save to."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private startSynergyEnvironmentUpdate()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    const-string v1, "chimble.synergy.local"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/BaseCore;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-direct {v0, v1}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-direct {v0, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "Attempt made to start Synergy environment update while a previous one is active. Exiting."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v2, v3, :cond_5

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    new-instance v0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/SynergyEnvironmentImpl$1;-><init>(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "Network not available to perform environment update. Setting receiver to listen for network status change."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "nimble.notification.networkStatusChange"

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdateImpl(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startSynergyEnvironmentUpdateImpl(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Synergy Environment Update canceled before it could start"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nimble.environment.notification.startup_requests_started"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_previousValidEnvironmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v1, Lcom/ea/nimble/SynergyEnvironmentImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/SynergyEnvironmentImpl$2;-><init>(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    invoke-virtual {p1, v0, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->startSynergyStartupSequence(Lcom/ea/nimble/EnvironmentDataContainer;Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;)V

    return-void
.end method

.method private startSynergyEnvironmentUpdateRateLimiting()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->isUpdateInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Update in progress."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Environment data already cached."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->isInSynergyEnvironmentUpdateRateLimitingPeriod()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyEnvironmentUpdateRateLimitTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Attempt to re-initiate Synergy environment update blocked by rate limiting. %.2f seconds of rate limiting left"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Synergy environment update rate limit in effect."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public cleanup()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->cancel()V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->saveEnvironmentDataToPersistent()V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.synergyEnvironment"

    return-object v0
.end method

.method public getEADeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEAHardwareId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEAHardwareId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGosMdmAppKey()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getGosMdmAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestAppVersionCheckResult()I
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getLatestAppVersionCheckResult()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SynergyEnv"

    return-object v0
.end method

.method public getNexusClientId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getNexusClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNexusClientSecret()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getNexusClientSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getProductId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSellId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSellId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, " <<< getServerUrlWithKey overrideServerUrl:, m_environmentDataContainer == null"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getOverrideServerUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, ","

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " <<< getServerUrlWithKey overrideServerUrl:,"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->overrideServerUrl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getOverrideServerUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getOverrideServerUrls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " <<< override key:,"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getOverrideServerUrls()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getOverrideServerUrls()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<<< getServerUrlWithKey:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getOverrideServerUrls()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;
    .locals 3

    const-string v0, "Use OverrideUrl : "

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    if-eq p1, v1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "nimble_override.properties"

    invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "OverrideUrl"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    const-string v0, "base.url"

    invoke-virtual {p1, v0}, Lcom/ea/nimble/BaseCore;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSynergyId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackingPostInterval()I
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getTrackingPostInterval()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isDataAvailable()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureDisabled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->isFeatureDisabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isUpdateInProgress()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overrideServerUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " <<< overrideServerUrl:,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_overrideUrlList:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/ea/nimble/EnvironmentDataContainer;->overrideServerUrl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public restore()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    const-string v0, "nimble.environment.notification.restored_from_persistent"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->restoreEnvironmentDataFromPersistent(Z)Z

    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    :goto_2
    return-void
.end method

.method public resume()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->clearSynergyEnvironmentUpdateRateLimiting()V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-wide v2, 0x4072c00000000000L    # 300.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V

    :cond_1
    return-void
.end method

.method public setup()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->restoreEnvironmentDataFromPersistent(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_dataLoadedOnComponentSetup:Z

    return-void
.end method

.method public suspend()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->cancel()V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_networkStatusChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->saveEnvironmentDataToPersistent()V

    return-void
.end method

.method public teardown()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl;->m_environmentDataContainer:Lcom/ea/nimble/EnvironmentDataContainer;

    return-void
.end method
