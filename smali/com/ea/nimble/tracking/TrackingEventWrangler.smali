.class Lcom/ea/nimble/tracking/TrackingEventWrangler;
.super Lcom/ea/nimble/Component;
.source "TrackingEventWrangler.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
.implements Lcom/ea/nimble/LogSource;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;


# static fields
.field private static final APP_VERSION_PERSISTENCE_ID:Ljava/lang/String; = "applicationBundleVersion"

.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.tracking.eventwrangler"


# instance fields
.field private m_newIntent:Landroid/content/Intent;

.field private m_sessionStartTimestamp:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method private addPushTNGTrackingParams(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pushId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "pnType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static initialize()V
    .locals 2

    const-string v0, "TrackingEventWrangler"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/nimble/tracking/TrackingEventWrangler;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;-><init>()V

    const-string v1, "com.ea.nimble.tracking.eventwrangler"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method private logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.tracking"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/TrackingWrangler;

    invoke-static {p1}, Lcom/ea/nimble/tracking/Tracking;->isSessionStartEvent(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, "Pre-existing session start timestamp found while logging new session start! Overwriting previous session start timestamp."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Marking session start time."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/ea/nimble/tracking/TrackingWrangler;->setSessionState(Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    if-nez v1, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const-string p1, "No current session. %s will not be logged."

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/ea/nimble/tracking/Tracking;->isSessionEndEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v3

    const-string v4, "%.0f"

    invoke-static {v1, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v5, "Logging session time, %s seconds."

    invoke-static {p0, v5, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NIMBLESTANDARD::SESSION_TIME"

    invoke-direct {p0, v1, v4}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/ea/nimble/tracking/TrackingWrangler;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v2, :cond_4

    invoke-virtual {v0, v3}, Lcom/ea/nimble/tracking/TrackingWrangler;->setSessionState(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.tracking.eventwrangler"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Tracking"

    return-object v0
.end method

.method public logAndCheckEvent(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onApplicationLaunch(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p1, "NIMBLESTANDARD::APPSTART_FROMURL"

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "PushNotification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "Awesome. PN launched me"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->addPushTNGTrackingParams(Landroid/os/Bundle;Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const-string v1, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_2
    sget-object p1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    const-string v0, "com.ea.nimble.tracking.eventwrangler"

    invoke-static {v0, p1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p1

    const-string v2, "applicationBundleVersion"

    invoke-virtual {p1, v2}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string v5, "Current app version, %s. Cached app version, %s"

    invoke-static {p0, v5, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    if-nez v3, :cond_5

    invoke-virtual {p1, v2, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/EASPDataLoader;->loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Exception loading EASP tracking file."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p1, "No EASP tracking file."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    const-string p1, "EASP tracking file found. Counting as app update."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1, v2, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, v4}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string p1, "NIMBLESTANDARD::APPSTART_NORMAL"

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onApplicationQuit()V
    .locals 1

    const-string v0, "NIMBLESTANDARD::SESSION_END"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onApplicationResume()V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "NIMBLESTANDARD::APPRESUME_FROMURL"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_newIntent:Landroid/content/Intent;

    const-string v2, "NIMBLESTANDARD::APPRESUME_NORMAL"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_newIntent:Landroid/content/Intent;

    const-string v1, "PushNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_newIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->addPushTNGTrackingParams(Landroid/os/Bundle;Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v2, "NIMBLESTANDARD::APPRESUME_FROMPUSH"

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_newIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onApplicationSuspend()V
    .locals 1

    const-string v0, "NIMBLESTANDARD::SESSION_END"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    iput-object p2, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_newIntent:Landroid/content/Intent;

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public restore()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    return-void
.end method
