.class Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;
.super Lcom/ea/nimble/SynergyEnvironmentUpdater;
.source "ChimbleSynergyEnvironmentUpdater.java"


# direct methods
.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;-><init>(Lcom/ea/nimble/BaseCore;)V

    return-void
.end method

.method private getHwId()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceCodename()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceBrand()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceFingerprint()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "android|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onStartUpSequenceFinished(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

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

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    const-string v2, "Chimble Synergy startup sequence canceled."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void
.end method

.method public startSynergyStartupSequence(Lcom/ea/nimble/EnvironmentDataContainer;Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    iput-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ea/nimble/EnvironmentDataContainer;->setMostRecentDirectorResponseTimestamp(Ljava/lang/Long;)V

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "chimble_local.json"

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-static {p2}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "hwId"

    invoke-direct {p0}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->getHwId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p2, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->setGetDirectionResponseDictionary(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getGetDirectionResponseDictionary()Ljava/util/Map;

    move-result-object p1

    const-string p2, "serverData"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, v0}, Lcom/ea/nimble/EnvironmentDataContainer;->setServerUrls(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iget-object v0, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object v0

    const-string v1, "key"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "value"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v0, "No Synergy server URLs available."

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p1}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    iget-object p2, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p2}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyIdManager;->getAnonymousSynergyId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Not getting anonymous ID from Synergy since it was loaded from persistence"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->setSynergyAnonymousId(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    iget-object v0, p0, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ea/nimble/EnvironmentDataContainer;->setSynergyAnonymousId(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void

    :catch_0
    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v0, "No local environment data available."

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ea/nimble/ChimbleSynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void
.end method
