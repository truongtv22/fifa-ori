.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
.super Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;,
        Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;
    }
.end annotation


# static fields
.field private static final EVENT_PREFIX:Ljava/lang/String; = "SYNERGYTRACKING::"

.field private static final MAX_CUSTOM_EVENT_PARAMETERS:I = 0x14


# instance fields
.field private m_eventNumber:I

.field private m_mainAuthenticator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_mainAuthenticatorUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_pendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_pidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_sessionId:Ljava/lang/String;

.field private m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;-><init>()V

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_mainAuthenticatorUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onSynergyIdChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onPidInfoUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onMainAuthenticatorUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onPostComplete(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    return-void
.end method

.method private addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/tracking/Tracking$Event;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventKeyType01"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v1, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "eventValue01"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventKeyType02"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v1, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "eventValue02"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventKeyType03"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v0, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "eventValue03"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private clearAndRefillSessionsToPost()V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4;

    invoke-direct {v4, p0, v3}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Ljava/util/Map;)V

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/IApplicationEnvironment;->getCarrier()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string v11, "%tZ"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "carrier"

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "timezone"

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->isAppCracked()Z

    move-result v7

    const-string v9, "1"

    const-string v10, "0"

    if-eqz v7, :cond_0

    move-object v7, v9

    goto :goto_0

    :cond_0
    move-object v7, v10

    :goto_0
    const-string v11, "pflag"

    invoke-interface {v3, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->isDeviceRooted()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v10

    :goto_1
    const-string v7, "jflag"

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "firmwareVer"

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "sellId"

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "buildId"

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdkVer"

    const-string v6, "0.5.0.1"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdkCfg"

    const-string v6, "DL"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "deviceId"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hwId"

    invoke-static {v5}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "schemaVer"

    const-string v4, "2"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v4, "android"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    const-string v6, "N"

    if-ne v4, v5, :cond_3

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->isNetworkWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "W"

    goto :goto_2

    :cond_2
    const-string v0, "G"

    goto :goto_2

    :cond_3
    move-object v0, v6

    :goto_2
    const-string v4, "networkAccess"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_loggedInToOrigin:Z

    if-eqz v0, :cond_4

    const-string v6, "Y"

    :cond_4
    const-string v0, "originUser"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_6

    const-string/jumbo v0, "uid"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "androidId"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "macHash"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "aut"

    const-string v0, ""

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_7

    const-string p1, "pidMap"

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getGameSpecifiedPlayerId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "gamePlayerId"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9

    :goto_4
    if-ge v12, p1, :cond_9

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v1, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->value:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_9
    return-object v3
.end method

.method private generateSynergySessionId()Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v2, v0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isSynergyEvent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NimbleTrackingSynergyImpl"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "SYNERGYTRACKING::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onMainAuthenticatorUpdate(Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_mainAuthenticator:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private onPidInfoUpdate(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "pidMapId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object p1, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v0, "pidMap"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private onPostComplete(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 9

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

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->clearAndRefillSessionsToPost()V

    iput-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postInterval:D

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

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->clearAndRefillSessionsToPost()V

    iput-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postInterval:D

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Failed to send tracking events. Error: %s"

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    :goto_1
    const-string v1, "Telemetry post request finished, resetting isRequestInProgress flag to false."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_isRequestInProgress:Z

    if-eqz p1, :cond_5

    iget-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v5, v5, v7

    iput-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    const-wide v7, 0x4072c00000000000L    # 300.0

    cmpl-double p1, v5, v7

    if-lez p1, :cond_4

    iput-wide v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, p1, v0

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v4

    const-string v3, "Posting a retry with delay of %s due to failed send. Queue size: %d"

    invoke-static {p0, v3, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(DZ)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-array p1, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, "More items found in the queue. Post the next one now. Queue size: %d"

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(DZ)V

    goto :goto_2

    :cond_6
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "No more items found in the queue. Wait on the timer. Queue size: %d"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(DZ)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    const-string p1, "No response exists in this post!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onSynergyIdChanged(Landroid/content/Intent;)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "previousSynergyId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentSynergyId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_SESSION_END_SYNERGYID_CHANGE:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v2, v2, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eventType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_SYNERGYID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v2, v2, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "keyType01"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "keyValue01"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_SYNERGYID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v2, v2, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "keyType02"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "keyValue02"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "SYNERGYTRACKING::CUSTOM"

    invoke-virtual {p0, p1, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->queueCurrentEventsForPost()V

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_NEW_SESSION_START_SYNERGYID_CHANGE:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private parseCustomParameters(Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "keyType"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x2

    const-string v11, "Error: Custom parameter number %d is out of range of 1-%d"

    if-eqz v9, :cond_4

    const/4 v9, 0x7

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_3

    if-gt v9, v1, :cond_3

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_1
    if-ge v7, v9, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {p0, v11, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Invalid format for keyType parameter. Expected keyType##, got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v9, "keyValue"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x8

    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_7

    if-gt v9, v1, :cond_7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v9, v7, :cond_5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v7, v9, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {p0, v11, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: Invalid format for keyValue parameter. Expected keyValue##, got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v2, v5

    :goto_4
    if-nez v2, :cond_a

    new-array v2, v7, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "Error: No corresponding keyType entry for parameter number %d"

    invoke-static {p0, v4, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "0"

    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v4, v5

    :goto_5
    if-nez v4, :cond_c

    new-array v4, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v1, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    const-string v8, "Error: No corresponding keyValue entry for parameter number %d"

    invoke-static {p0, v8, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, ""

    :cond_c
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const-string v10, "eventKeyType%02d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "eventValue%02d"

    invoke-static {v2, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    return-void
.end method

.method private resetSession()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSynergySessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    return-void
.end method

.method private sleep()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private wakeup()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "nimble.synergyidmanager.notification.synergy_id_changed"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

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

    sget-object v3, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_AFTERINSTALL:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v3, v3, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    return v2
.end method

.method protected cleanup()V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->sleep()V

    invoke-super {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->cleanup()V

    return-void
.end method

.method protected convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;
    .locals 18
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

    sget-object v2, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_UNDEFINED:Lcom/ea/nimble/tracking/SynergyConstants;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/ea/nimble/tracking/Tracking;->isNimbleStandardEvent(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->isSynergyEvent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::APPSTART_NORMAL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "eventType"

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_NORMALLY:Lcom/ea/nimble/tracking/SynergyConstants;

    :cond_1
    :goto_0
    move-object/from16 v16, v2

    move-object v2, v6

    :goto_1
    move-object v6, v0

    goto/16 :goto_8

    :cond_2
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_AFTERINSTALL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_AFTERUPGRADE:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_4
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPSTART_FROMURL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_FROM_URL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_5
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_FROMPUSH:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::SESSION_START"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    if-lez v4, :cond_7

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_NORMAL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_7
    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_START_NORMALLY:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_8
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPRESUME_FROMURL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_FROM_URL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_9
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPRESUME_FROMEBISU"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_FROM_EBISU:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_0

    :cond_a
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPRESUME_FROMPUSH"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_FROM_PUSH:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V

    goto :goto_0

    :cond_b
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::APPRESUME_NORMAL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_NORMAL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_0

    :cond_c
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::SESSION_END"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_END:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_0

    :cond_d
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v7, "NIMBLESTANDARD::SESSION_TIME"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "eventValue01"

    const-string v8, "eventKeyType01"

    if-eqz v4, :cond_e

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_TIME:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v9, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_DURATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v9, v9, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v9, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v9, "NIMBLESTANDARD::MTX_ITEM_BEGIN_PURCHASE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v9, "NIMBLESTANDARD::KEY_MTX_SELLID"

    if-eqz v4, :cond_f

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_MTXVIEW_ITEMPURCHASE:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v10, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MTX_SELLID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v10, v10, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v10, "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_MTXVIEW_ITEM_PURCHASED:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v10, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MTX_SELLID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v10, v10, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v10, "NIMBLESTANDARD::MTX_FREEITEM_DOWNLOADED"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_MTXVIEW_FREEITEM_DOWNLOADED:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v10, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MTX_SELLID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v10, v10, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_11
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v9, "NIMBLESTANDARD::USER_TRACKING_OPTOUT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_USER_TRACKING_OPTOUT:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_0

    :cond_12
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v9, "NIMBLESTANDARD::PN_DISPLAY_OPT_IN"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_USER_SHOWN_PN_OPTIN_PROMPT:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_0

    :cond_13
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v9, "NIMBLESTANDARD::PN_USER_OPT_IN"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v9, "eventValue02"

    const-string v10, "eventKeyType02"

    if-eqz v4, :cond_14

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_USER_SHOWN_PN_OPTIN_PROMPT:Lcom/ea/nimble/tracking/SynergyConstants;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    sget-object v8, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v8, v8, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Yes"

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_14
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::PN_SHOWN_TO_USER"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    const-string v12, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    const-string v13, "eventValue03"

    const-string v14, "eventKeyType03"

    if-eqz v4, :cond_16

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_SHOWN_TO_USER:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v15, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v15, v15, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v8, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_16
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::PN_RECEIVED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_RECEIVED:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_17
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::PN_DEVICE_REGISTERED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_DEVICE_REGISTERED:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v12, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v12, v12, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v12, "NIMBLESTANDARD::KEY_PN_DATE_OF_BIRTH"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v8, "NIMBLESTANDARD::KEY_PN_DISABLED_FLAG"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_18
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::PN_USER_CLICKED_OK"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_SHOWN_TO_USER:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v11, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v11, v11, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    sget-object v8, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v8, v8, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Ok"

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_19
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::IDENTITY_MIGRATION"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    const-string v12, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_MIGRATION:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v13, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v13, v13, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v13, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1a
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::IDENTITY_LOGIN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_LOGIN:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v11, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v11, v11, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v11, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v9, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1b
    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1c
    iput-object v7, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v7, v7, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v8, "pidMap"

    iget-object v9, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1d
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::IDENTITY_LOGOUT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_LOGOUT:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v12, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v12, v12, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v8, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v9, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1e
    iput-object v7, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v7, v7, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v8, "pidMap"

    iget-object v9, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1f
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::IDENTITY_MIGRATION_STARTED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_MIGRATION_STARTED:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v15, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v15, v15, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v15, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_20
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::TUTORIAL_COMPLETE"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_GAMEPLAY_PROGRESSION_TUTORIAL_COMPLETE:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_0

    :cond_21
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::LEVEL_UP"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_GP_LEVEL_PROMOTION:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v11, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_DURATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v11, v11, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v11, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_DURATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v8, "NIMBLESTANDARD::KEY_GAMEPLAY_DURATION"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v8, "NIMBLESTANDARD::KEY_USER_LEVEL"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_22
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v11, "NIMBLESTANDARD::ANTELOPE_SOCIAL_GROUP_CREATED"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "NIMBLESTANDARD::KEY_ANTELOPE_GROUP_ID"

    const-string v12, "NIMBLESTANDARD::KEY_ANTELOPE_PROGRESSION"

    if-eqz v4, :cond_23

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_SOCIAL_GROUP_CREATED:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v15, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v15, v15, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v15, "NIMBLESTANDARD::KEY_ANTELOPE_GROUP_TYPE"

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_23
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::ANTELOPE_SOCIAL_GROUP_DELETED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_SOCIAL_GROUP_DELETED:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v15, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v15, v15, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v15, "NIMBLESTANDARD::KEY_ANTELOPE_GROUP_TYPE"

    invoke-interface {v8, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v7, v7, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_24
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v15, "NIMBLESTANDARD::ANTELOPE_MEMBER_ADDED_TO_GROUP"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v15, "NIMBLESTANDARD::KEY_ANTELOPE_MEMBER_ID"

    if-eqz v4, :cond_25

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MEMBER_ADDED_TO_GROUP:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v5, v5, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v5, v5, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v5, v5, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_25
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v5, "NIMBLESTANDARD::ANTELOPE_MEMBER_REMOVED_FROM_GROUP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MEMBER_REMOVED_FROM_GROUP:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v5, v5, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v5, v5, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v5, v5, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_26
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v5, "NIMBLESTANDARD::ANTELOPE_MEMBER_REQUEST_TO_GROUP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "eventValue04"

    move-object/from16 v16, v2

    const-string v2, "eventKeyType04"

    if-eqz v4, :cond_27

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MEMBER_REQUEST_TO_GROUP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v17, v4

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v8, "NIMBLESTANDARD::KEY_ANTELOPE_INVITE_TYPE"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_27
    iget-object v4, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v0, "NIMBLESTANDARD::ANTELOPE_MEMBER_DENIED_FROM_GROUP"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MEMBER_DENIED_FROM_GROUP:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    :goto_5
    move-object/from16 v6, p0

    goto/16 :goto_8

    :cond_28
    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v4, "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_GROUP_CHAT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "NIMBLESTANDARD::KEY_ANTELOPE_RECIPIENT_TYPE"

    const-string v11, "NIMBLESTANDARD::KEY_ANTELOPE_RECIPIENT_ID"

    const-string v15, "NIMBLESTANDARD::KEY_ANTELOPE_MESSAGE_TYPE"

    if-eqz v0, :cond_29

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MESSAGE_SENT_TO_GROUP_CHAT:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v17, v0

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v6

    move-object/from16 v4, v17

    goto :goto_5

    :cond_29
    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v17, v6

    const-string v6, "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_INBOX"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MESSAGE_SENT_TO_INBOX:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object/from16 v6, p0

    move-object v4, v0

    move-object/from16 v2, v17

    goto/16 :goto_8

    :cond_2a
    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_WORLD_CHAT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MESSAGE_SENT_TO_WORLD_CHAT:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_2b
    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v6, "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_P2P_CHAT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_ANTELOPE_MESSAGE_SENT_TO_P2P_CHAT:Lcom/ea/nimble/tracking/SynergyConstants;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2c
    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v2, "SYNERGYTRACKING::CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v2, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lcom/ea/nimble/tracking/SynergyConstants;->fromInt(I)Lcom/ea/nimble/tracking/SynergyConstants;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_UNDEFINED:Lcom/ea/nimble/tracking/SynergyConstants;

    if-ne v4, v5, :cond_2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_2d
    move-object/from16 v0, v16

    :goto_7
    iget-object v5, v1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v6, p0

    invoke-direct {v6, v5, v3}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->parseCustomParameters(Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v16, v0

    :goto_8
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    const-string v9, "${"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-object v9, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_trackingAttributes:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    const/4 v7, 0x2

    invoke-virtual {v8, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2f

    goto :goto_a

    :cond_2f
    const-string v7, ""

    :goto_a
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_30
    iget-object v0, v1, Lcom/ea/nimble/tracking/Tracking$Event;->timestamp:Ljava/util/Date;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_31

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_31
    iget v5, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    const-string v2, "timestamp"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/ea/nimble/tracking/SynergyConstants;->isSessionStartEventType()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-lez v0, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->queueCurrentEventsForPost()V

    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetSession()V

    iget-object v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "session"

    iget-object v8, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "step"

    invoke-interface {v2, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    add-int/2addr v5, v7

    iput v5, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_33
    iget-object v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_e

    :cond_34
    iget-object v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    if-nez v0, :cond_35

    iget-object v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    const/4 v0, 0x0

    return-object v0

    :cond_35
    :goto_e
    const-string v0, "session"

    iget-object v2, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "step"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    add-int/2addr v0, v7

    iput v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    invoke-virtual {v4}, Lcom/ea/nimble/tracking/SynergyConstants;->isSessionStartEventType()Z

    move-result v0

    if-eqz v0, :cond_36

    new-array v0, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v0, v2

    const-string v2, "Logging session start event, %s. Posting event queue now."

    invoke-static {v6, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(D)V

    :cond_36
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_END:Lcom/ea/nimble/tracking/SynergyConstants;

    if-ne v4, v0, :cond_37

    const/4 v0, 0x0

    iput-object v0, v6, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    :cond_37
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :catch_0
    move-object/from16 v6, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Invalid format for eventType parameter. Expected integer value, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_38
    move-object/from16 v6, p0

    goto :goto_d
.end method

.method protected createPostRequest()Lcom/ea/nimble/SynergyRequest;
    .locals 13

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    const-string v1, "synergy.tracking"

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Tracking server URL from NimbleEnvironment is nil. Adding observer for environment update finish."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addObserverForSynergyEnvironmentUpdateFinished()V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-nez v6, :cond_1

    invoke-virtual {p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "now_timestamp"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    iget v11, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "repostCount"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget v10, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const-string v10, "Event queue marshalled. Incrementing repost count from %d to %d"

    invoke-static {p0, v10, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v9, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    add-int/2addr v9, v11

    iput v9, v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    const-string v6, "events"

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "uid"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v8, v9, v2

    const-string v10, "Creating post request. No uid in session info dictionary, inserting uid value %s now."

    invoke-static {p0, v10, v9}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v6, "Creating post request. No uid in session info dictionary, still no uid available now."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const-string v6, "sellId"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v6, "Creating POST request. Missing sell id."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    const-string v6, "hwId"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v6, "Creating POST request. Missing hw id."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    const-string v6, "deviceId"

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validStringObject(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v6, "Creating POST request. Missing device id."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/tracking/api/core/logEvent"

    sget-object v5, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v5, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    iput-object v0, v2, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;

    invoke-direct {v0, p0, v4}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Ljava/util/ArrayList;)V

    iput-object v0, v2, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "BASEURL"

    iget-object v5, v2, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "API"

    iget-object v5, v2, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "POSTDATA"

    invoke-static {v4}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.ea.nimble.trackingimpl.synergy"

    invoke-interface {v0, v3, v1}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    const-string v0, "nimble.notification.trackingimpl.synergy.postingToServer"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    return-object v2
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.trackingimpl.synergy"

    return-object v0
.end method

.method protected getFeatureTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "SynergyTracker"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TrackingSynergy"

    return-object v0
.end method

.method protected getPersistenceIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "Synergy"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    return-object v0
.end method

.method protected isSameSession(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Z
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const-string p1, "Trying to compare event with no session"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    :goto_1
    const-string p1, "Trying to compare session with no events"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method protected packageCurrentSession()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Preparing for post, generating session info dictionary."

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->queueCurrentEventsForPost()V

    :cond_0
    return-void
.end method

.method protected postPendingEvents(Z)V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->isAbleToPostEvent(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->createPostRequest()Lcom/ea/nimble/SynergyRequest;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iput-boolean p1, v2, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_isRequestInProgress:Z

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;

    invoke-direct {v4, p0, v2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;)V

    invoke-interface {v3, v0, v4}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    nop

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "OutOfMemoryError with "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB left. Dropping current session"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "Out of memory. Dropping current session"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postInterval:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_postRetryDelay:D

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_isRequestInProgress:Z

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "More items found in the queue. Post the next one now. Queue size: %d"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(DZ)V

    goto :goto_1

    :cond_4
    new-array v0, p1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "No more items found in the queue. Wait on the timer. Queue size: %d"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(DZ)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    const-string p1, "No tracking sessions to post."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected restore()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->restore()V

    const-string v0, "nimble.notification.identity.authenticator.pid.info.update"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "nimble.notification.identity.main.authenticator.change"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_mainAuthenticatorUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->wakeup()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->setEnable(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    :cond_0
    return-void
.end method
