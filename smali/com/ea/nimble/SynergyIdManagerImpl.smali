.class Lcom/ea/nimble/SynergyIdManagerImpl;
.super Lcom/ea/nimble/Component;
.source "SynergyIdManagerImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyIdManager;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_ID_PERSISTENCE_DATA_ID:Ljava/lang/String; = "anonymousId"

.field private static final AUTHENTICATOR_PERSISTENCE_DATA_ID:Ljava/lang/String; = "authenticator"

.field private static final CURRENT_ID_PERSISTENCE_DATA_ID:Ljava/lang/String; = "currentId"

.field private static final SYNERGY_ID_MANAGER_ANONYMOUS_ID_PERSISTENCE_ID:Ljava/lang/String; = "com.ea.nimble.synergyidmanager.anonymousId"

.field private static final VERSION_PERSISTENCE_DATA_ID:Ljava/lang/String; = "dataVersion"


# instance fields
.field private m_anonymousSynergyId:Ljava/lang/String;

.field private m_authenticatorIdentifier:Ljava/lang/String;

.field private m_currentSynergyId:Ljava/lang/String;

.field private m_receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    new-instance v0, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;-><init>(Lcom/ea/nimble/SynergyIdManagerImpl;Lcom/ea/nimble/SynergyIdManagerImpl$1;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/SynergyIdManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->onSynergyEnvironmentStartupRequestsFinished()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyIdManager;
    .locals 1

    const-string v0, "com.ea.nimble.synergyidmanager"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ISynergyIdManager;

    return-object v0
.end method

.method private onSynergyEnvironmentStartupRequestsFinished()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "onSynergyEnvironmentStartupRequestsFinished - Process the notification, everything looks okay"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setAnonymousSynergyId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "onSynergyEnvironmentStartupRequestsFinished - Aborted because we were unable to get SynergyEnvironment"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreFromPersistent()V
    .locals 7

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.synergyidmanager"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const-string v1, "dataVersion"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Loaded persistence data version,  %s."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "currentId"

    invoke-virtual {v0, v4}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "Loaded Synergy ID, %s."

    invoke-static {p0, v0, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Could not get persistence object to load from."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "com.ea.nimble.synergyidmanager.anonymousId"

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "Loaded persistence data version, %s."

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "anonymousId"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "Loaded anonymous Synergy ID, %s."

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "Could not get anonymous Synergy ID persistence object to load from."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private saveDataToPersistent()V
    .locals 8

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.synergyidmanager.anonymousId"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "1.0.0"

    const-string v3, "dataVersion"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Saving anonymous Synergy ID, %s, to persistent."

    invoke-static {v7, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v5, "anonymousId"

    iget-object v6, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    goto :goto_0

    :cond_0
    const-string v0, "Could not get anonymous Synergy ID persistence object to save to."

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "com.ea.nimble.synergyidmanager"

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    aput-object v6, v5, v4

    iget-object v4, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    aput-object v4, v5, v1

    const-string v1, "Saving current Synergy ID, %s, and authenticator, %s, to persistent."

    invoke-static {p0, v1, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "currentId"

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "authenticator"

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    goto :goto_1

    :cond_1
    const-string v0, "Could not get persistence object to save to."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private setAnonymousSynergyId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "Attempt to set invalid anonymous Synergy ID over existing ID, %s. Ignoring attempt."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->saveDataToPersistent()V

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "previousSynergyId"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentSynergyId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nimble.synergyidmanager.notification.anonymous_synergy_id_changed"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private setCurrentSynergyId(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "Attempt to set invalid current Synergy ID over existing ID, %s. Ignoring attempt."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->saveDataToPersistent()V

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "previousSynergyId"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentSynergyId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nimble.synergyidmanager.notification.synergy_id_changed"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private sleep()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->saveDataToPersistent()V

    return-void
.end method

.method private wakeup()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->restoreFromPersistent()V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setAnonymousSynergyId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    :cond_1
    const-string v0, "nimble.environment.notification.startup_requests_finished"

    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->sleep()V

    return-void
.end method

.method public getAnonymousSynergyId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatorIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.synergyidmanager"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SynergyId"

    return-object v0
.end method

.method public getSynergyId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->getAnonymousSynergyId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/SynergyIdManagerError;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ea/nimble/Utility;->isOnlyDecimalCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Authenticator string required for login API."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iput-object p2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Synergy ID must be numeric digits."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;)V

    return-object p1
.end method

.method public logout(Ljava/lang/String;)Lcom/ea/nimble/SynergyIdManagerError;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance p1, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;

    const-string v1, "Already logged out."

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    const-string v1, "Authenticator string required for logout API."

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logout must be performed by the same authenticator that logged in, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method protected restore()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->wakeup()V

    return-void
.end method

.method protected resume()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->wakeup()V

    return-void
.end method

.method protected suspend()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->sleep()V

    return-void
.end method
