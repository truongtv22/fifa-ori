.class abstract Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.super Lcom/ea/nimble/Component;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Lcom/ea/nimble/tracking/ITracking;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;,
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;,
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;,
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;
    }
.end annotation


# static fields
.field private static final DATA_VERSION_CURRENT:I = 0x3

.field private static final DEFAULT_MAX_QUEUE_LENGTH:I = 0x3

.field protected static final DEFAULT_POST_INTERVAL:D = 1.0

.field protected static final DEFAULT_REPOST_MULTIPLIER:D = 2.0

.field protected static final DEFAULT_RETRY_DELAY:D = 1.0

.field protected static final MAX_POST_RETRY_DELAY:D = 300.0

.field private static final MAX_QUEUED_EVENTS:I = 0x32

.field private static final MAX_QUEUED_SESSIONS:I = 0x32

.field public static final NIMBLE_TRACKING_DEFAULT_POST_ENABLE:Ljava/lang/String; = "NimbleDefaultTrackingPostFlag"

.field protected static final NOW_POST_INTERVAL:D = 0.0

.field private static final ORIGIN_LOGIN_STATUS_STRING_AUTO_LOGGING_IN:Ljava/lang/String; = "autoLogin"

.field private static final ORIGIN_LOGIN_STATUS_STRING_LIVE_USER:Ljava/lang/String; = "live"

.field private static final ORIGIN_NOTIFICATION_LOGIN_STATUS_UPDATE_KEY_STATUS:Ljava/lang/String; = "STATUS"

.field private static final PERSISTENCE_CURRENT_SESSION_ID:Ljava/lang/String; = "currentSessionObject"

.field private static final PERSISTENCE_ENABLE_FLAG:Ljava/lang/String; = "trackingEnabledFlag"

.field private static final PERSISTENCE_EVENT_QUEUE_ID:Ljava/lang/String; = "eventQueue"

.field private static final PERSISTENCE_FIRST_SESSION_ID_NUMBER:Ljava/lang/String; = "firstSessionIDNumber"

.field private static final PERSISTENCE_LAST_SESSION_ID_NUMBER:Ljava/lang/String; = "lastSessionIDNumber"

.field private static final PERSISTENCE_LOGGED_IN_TO_ORIGIN_ID:Ljava/lang/String; = "loggedInToOrigin"

.field private static final PERSISTENCE_POST_ENABLE_FLAG:Ljava/lang/String; = "trackingPostEnabledFlag"

.field private static final PERSISTENCE_QUEUED_SESSIONS_ID:Ljava/lang/String; = "queuedSessionObjects"

.field private static final PERSISTENCE_SAVED_SESSION_ID_NUMBER:Ljava/lang/String; = "savedSession"

.field private static final PERSISTENCE_SESSION_DATA_ID:Ljava/lang/String; = "sessionData"

.field private static final PERSISTENCE_TOTAL_SESSION_COUNT:Ljava/lang/String; = "totalSessionCount"

.field private static final PERSISTENCE_TRACKING_ATTRIBUTES:Ljava/lang/String; = "trackingAttributes"

.field private static final PERSISTENCE_VERSION_ID:Ljava/lang/String; = "dataVersion"

.field private static final SESSION_FILE_FORMAT:Ljava/lang/String; = "%sSession%d"


# instance fields
.field protected m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

.field protected m_customSessionData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;",
            ">;"
        }
    .end annotation
.end field

.field private m_enable:Z

.field private m_firstSessionIDNumber:J

.field private m_isFeatureDisabledFromServer:Z

.field private m_isPostPending:Z

.field protected m_isRequestInProgress:Z

.field private m_lastSessionIDNumber:J

.field protected m_loggedInToOrigin:Z

.field private m_maxQueueLength:I

.field private m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

.field private m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

.field private m_pendingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_postEnable:Z

.field protected m_postInterval:D

.field protected m_postRetryDelay:D

.field private m_postTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

.field protected m_sessionsToPost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;"
        }
    .end annotation
.end field

.field protected m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

.field private m_totalSessions:J

.field protected m_trackingAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isFeatureDisabledFromServer:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_pendingEvents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    new-instance v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v2}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    iput-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postIntervalTimerExpired(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->updateFeatureDisableState()V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onStartupRequestsFinished(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onOriginLoginStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onNetworkStatusChange()V

    return-void
.end method

.method private addCurrentSessionObjectToBackOfQueue()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    invoke-direct {p0, v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionToFile(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    return-void
.end method

.method private configureTrackingOnFirstInstall()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "First Install. Look for App Settings to enable/disable tracking"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.ea.nimble.tracking.defaultEnable"

    invoke-static {v1}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "enable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Default App Setting : Enable Tracking"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    goto :goto_0

    :cond_0
    const-string v2, "disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Default App Setting : Disable Tracking"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "Nimble"

    const-string v1, "WARNING! Cannot find valid TrackingEnable from AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dropExtraSessions()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropExtraSessions(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to drop enough sessions. Dropping sessions without checking canDropSession."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropExtraSessions(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Still unable to drop enough sessions. Remaining number: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private dropExtraSessions(Z)Z
    .locals 14

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x32

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "Current number of sessions (%d) has reached maximum (%d). Removing old sessions."

    invoke-static {p0, v0, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    :goto_0
    iget-wide v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    const-wide/16 v9, 0x1

    cmp-long v11, v5, v7

    if-gtz v11, :cond_8

    iget-wide v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    sub-long v7, v5, v7

    iget-object v11, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    int-to-long v11, v11

    cmp-long v13, v7, v11

    if-gez v13, :cond_1

    iget-object v11, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    long-to-int v8, v7

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5, v6}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->loadSessionFromFile(J)Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {p0, v8, v7}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isSameSession(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->canDropSession(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    sub-long v11, v5, v9

    invoke-direct {p0, v0, v11, v12}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropSessions(Ljava/util/ArrayList;J)V

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-wide v11, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    cmp-long v8, v11, v3

    if-gez v8, :cond_6

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    return v2

    :cond_6
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-long/2addr v5, v9

    goto :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->canDropSession(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    sub-long/2addr v5, v9

    invoke-direct {p0, v0, v5, v6}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropSessions(Ljava/util/ArrayList;J)V

    :cond_a
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    iget-wide v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    cmp-long p1, v5, v3

    if-gez p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method private dropSessions(Ljava/util/ArrayList;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;J)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    int-to-long v1, v0

    sub-long v1, p2, v1

    invoke-direct {p0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->removePersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    :cond_1
    iget-wide p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    return-void
.end method

.method private fillSessionsToPost()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    if-ge v0, v1, :cond_2

    iget-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->loadSessionFromFile(J)Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->removePersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFilenameForSessionID(J)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    const-string p1, "Trying to find the filename for an invalid sessionID!"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%sSession%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private killPostTimer()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private loadSessionFromFile(J)Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p1, p2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "savedSession"

    invoke-virtual {p1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    return-object p1

    :cond_0
    return-object p2
.end method

.method private logEvent(Lcom/ea/nimble/tracking/Tracking$Event;Z)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v3, v3, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v2, "Logged event, %s: \n"

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isAbleToPostEvent(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object p1, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0x32

    if-lt p1, v2, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v3, v3, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, "Current number of events (%d) has reached maximum (%d). Posting event queue now."

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->packageCurrentSession()V

    invoke-virtual {p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V

    :cond_4
    return-void
.end method

.method private onNetworkStatusChange()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Network status restored, kicking off event post."

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(D)V

    :cond_0
    return-void
.end method

.method private onOriginLoginStatusChanged(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "live"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "autoLogin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Login status update, FALSE"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Login status update, TRUE"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    goto :goto_1

    :cond_2
    const-string p1, "Login status updated event received without extras bundle. Marking NOT logged in to Origin."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    :goto_1
    return-void
.end method

.method private onStartupRequestsFinished(Landroid/content/Intent;)V
    .locals 8

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getTrackingPostInterval()I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    :goto_1
    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v3, "sellId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    const-string v5, ""

    const-string v6, "0"

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "Sell Id was still null after synergy update"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v3, "hwId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_6

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "Hardware Id was still null after synergy update"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v2, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v3, "deviceId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v2, "Device Id was still null after synergy update"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v2, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v3, "synergyId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_9
    const-string v1, "Synergy Id was still null after synergy update"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    const-string p1, "Synergy environment update successful. Removing observer and re-attempting event post."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    :cond_b
    iget-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    if-eqz p1, :cond_c

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(D)V

    :cond_c
    return-void
.end method

.method private postIntervalTimerExpired(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->packageCurrentSession()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V

    return-void
.end method

.method private saveSessionDataToPersistent()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Saving event queue to persistence."

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "sessionData"

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    return-void
.end method

.method private saveSessionToFile(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;J)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p2, p3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3, v1}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    :cond_0
    :try_start_0
    const-string v0, "savedSession"

    invoke-virtual {p3, v0, p1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "OutOfMemoryError occurred while saving a session object to file. Exception: %s"

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p3}, Lcom/ea/nimble/Persistence;->synchronize()V

    sget-object p1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p2, p1}, Lcom/ea/nimble/PersistenceService;->cleanReferenceToPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    return-void
.end method

.method private saveToPersistence()V
    .locals 7

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Saving event queue to persistence (cache storage)."

    invoke-static {p0, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "dataVersion"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "currentSessionObject"

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "eventQueue"

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_pendingEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "sessionData"

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "loggedInToOrigin"

    iget-boolean v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "firstSessionIDNumber"

    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "lastSessionIDNumber"

    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v3, "totalSessionCount"

    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "queuedSessionObjects"

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v3, "trackingAttributes"

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "OutOfMemoryError in saving m_sessionsToPost to persistence! MaxQueueLength is %s. Exception: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const-string v3, "Saving tracking enable/disable flag to persistence (document storage)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "trackingEnabledFlag"

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    return-void

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Caught generic throwable while saving to persistence! Discarding attempt to save. Exception: %s"

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateFeatureDisableState()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->isFeatureDisabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isFeatureDisabledFromServer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "*** FEATURE DISABLED FROM SERVER ***"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;-><init>()V

    iput-object p1, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    iput-object p2, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->value:Ljava/lang/String;

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionDataToPersistent()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected addObserverForSynergyEnvironmentUpdateFinished()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    const-string v1, "nimble.environment.notification.startup_requests_finished"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected canDropSession(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected cleanup()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->deleteDatFile(Ljava/lang/String;)Z

    return-void
.end method

.method public clearCustomSessionData()V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;
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
.end method

.method public getEnable()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    return v0
.end method

.method protected abstract getFeatureTag()Ljava/lang/String;
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TrackingBase"

    return-object v0
.end method

.method protected abstract getPersistenceIdentifier()Ljava/lang/String;
.end method

.method public getPostEnable()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, ""

    return-object v0
.end method

.method protected isAbleToPostEvent(Z)Z
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isFeatureDisabledFromServer:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationActive()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "isAbleToPostEvent - return because the app is in background"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object p1

    sget-object v0, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_2

    const-string p1, "Network status not OK for event post. Adding receiver for network status change."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    new-instance p1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;

    invoke-direct {p1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "nimble.notification.networkStatusChange"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_2
    return v1

    :cond_3
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addObserverForSynergyEnvironmentUpdateFinished()V

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method protected isSameSession(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Z
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isFeatureDisabledFromServer:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NIMBLESTANDARD::SESSION_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Logging session end event, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Posting event queue now."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    new-instance v0, Lcom/ea/nimble/tracking/Tracking$Event;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/Tracking$Event;-><init>()V

    iput-object p1, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    iput-object p2, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/ea/nimble/tracking/Tracking$Event;->timestamp:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->logEvent(Lcom/ea/nimble/tracking/Tracking$Event;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract packageCurrentSession()V
.end method

.method protected abstract postPendingEvents(Z)V
.end method

.method protected queueCurrentEventsForPost()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "queueCurrentEventsForPost called. Starting queue size: %d"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-nez v0, :cond_1

    const-string v0, "Unexpected state, currentSessionObject is null."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Unexpected state, currentSessionObject events list is null or empty."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addCurrentSessionObjectToBackOfQueue()V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropExtraSessions()V

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v1, v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    return-void
.end method

.method public removeCustomSessionData(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v2, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionDataToPersistent()V

    return-void
.end method

.method protected removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    return-void
.end method

.method protected resetPostTimer()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    invoke-virtual {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(D)V

    return-void
.end method

.method protected resetPostTimer(D)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    return-void
.end method

.method protected resetPostTimer(DZ)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, p1, v1

    if-gez v3, :cond_0

    const-string v3, "resetPostTimer called with an invalid period: period < 0.0. Timer reset with period 0.0 instead"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "Resetting event post timer for %s seconds."

    invoke-static {p0, p1, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance p2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;

    invoke-direct {p2, p0, p3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Z)V

    invoke-virtual {p1, v1, v2, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->createTimer(DLjava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method protected restore()V
    .locals 14

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->updateFeatureDisableState()V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getTrackingPostInterval()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addObserverForSynergyEnvironmentUpdateFinished()V

    :goto_0
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    const-string/jumbo v2, "trackingEnabledFlag"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/Boolean;

    if-ne v8, v9, :cond_1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v1, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v8, Ljava/lang/Boolean;

    if-ne v3, v8, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    goto/16 :goto_8

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/EASPDataLoader;->loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "Exception loading EASP tracking file."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    const-string v2, "No EASP tracking file."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Nimble tracking persistence data does not exist, but EASP tracking data found. Loaded dat version"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    const-string v8, "1.00.03"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    const-string v9, "1.00.02"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v9, 0x3

    if-ge v3, v9, :cond_4

    :try_start_1
    iget-object v9, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v9}, Lcom/ea/nimble/EASPDataLoader;->readLogEvent(Ljava/nio/ByteBuffer;)Lcom/ea/nimble/EASPDataLoader$LogEvent;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iget-object v9, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v9}, Lcom/ea/nimble/EASPDataLoader;->readBooleanByte(Ljava/nio/ByteBuffer;)Z

    move-result v9

    const-string v10, "EASP user level(%d), disabled(%b)"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v11, v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v11, v6

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v9, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    iput-boolean v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    iget-object v3, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v3, :cond_6

    :try_start_3
    iget-object v2, v2, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading ageGateDob string: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v5

    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "Setting age gate DOB from EASP data,  %s."

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-static {p0, v3, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "ageGateDob"

    invoke-virtual {p0, v3, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    const/4 v3, 0x1

    goto :goto_7

    :catch_3
    move-exception v2

    const/4 v3, 0x1

    goto :goto_6

    :catch_4
    move-exception v2

    const/4 v3, 0x0

    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception reading EASP tracking data file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->configureTrackingOnFirstInstall()V

    :cond_8
    :goto_8
    const-string/jumbo v2, "trackingPostEnabledFlag"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_9

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    goto :goto_9

    :cond_9
    const-string v0, "NimbleDefaultTrackingPostFlag"

    invoke-static {v0}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "disable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    :cond_a
    :goto_9
    new-array v0, v6, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    if-eqz v2, :cond_b

    const-string v2, "Enabled"

    goto :goto_a

    :cond_b
    const-string v2, "Disabled"

    :goto_a
    aput-object v2, v0, v7

    const-string v2, "Tracking Post %s"

    invoke-static {p0, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isFeatureDisabledFromServer:Z

    if-nez v0, :cond_17

    const-string v0, "currentSessionObject"

    invoke-virtual {v1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v2}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, "Events logged during startup before persistently cached events were restored. Overwriting logged events with cached events!"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    check-cast v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    :cond_d
    const-string v0, "queuedSessionObjects"

    invoke-virtual {v1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_13

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v8, "firstSessionIDNumber"

    invoke-virtual {v1, v8}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Long;

    if-ne v9, v10, :cond_e

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    goto :goto_b

    :cond_e
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    :goto_b
    const-string v8, "lastSessionIDNumber"

    invoke-virtual {v1, v8}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Long;

    if-ne v9, v10, :cond_f

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    goto :goto_c

    :cond_f
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    add-int/lit8 v10, v3, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    :goto_c
    const-string/jumbo v8, "totalSessionCount"

    invoke-virtual {v1, v8}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Long;

    if-ne v9, v10, :cond_10

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    goto :goto_d

    :cond_10
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    iget-wide v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    :goto_d
    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_12

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    if-ge v8, v10, :cond_11

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    iget-wide v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    int-to-long v12, v8

    add-long/2addr v10, v12

    invoke-direct {p0, v9, v10, v11}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionToFile(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;J)V

    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_12
    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    :cond_13
    const-string v0, "eventQueue"

    invoke-virtual {v1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v8, Ljava/util/ArrayList;

    if-ne v3, v8, :cond_14

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_14

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_10

    :cond_14
    move-object v3, v5

    :goto_10
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-lez v0, :cond_15

    const-string v0, "Restored old format event queue in addition to new format session object. Ignoring event queue."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_15
    const-string v0, "Restored old format event queue, storing in new format session object."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iput-object v3, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    :cond_16
    :goto_11
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    goto :goto_12

    :cond_17
    new-instance v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    :cond_18
    :goto_12
    const-string v0, "sessionData"

    invoke-virtual {v1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_19

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    instance-of v2, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    if-eqz v2, :cond_19

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    :cond_19
    const-string/jumbo v0, "trackingAttributes"

    invoke-virtual {v1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/HashMap;

    if-ne v2, v3, :cond_1a

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1a

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    :cond_1a
    const-string v0, "loggedInToOrigin"

    invoke-virtual {v1, v0}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1b

    :try_start_5
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_13

    :catch_5
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "Invalid persistence value for %s, expected Boolean, got %s"

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    :goto_13
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    invoke-direct {v0, p0, v5}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    const-string v1, "nimble.notification.loginStatusChange"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_1c
    return-void
.end method

.method protected resume()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->updateFeatureDisableState()V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    const-string v1, "nimble.notification.loginStatusChange"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    return-void
.end method

.method public setEnable(Z)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v2, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v2, "DISABLED"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setEnable called. enable = %s"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "eventType"

    const-string v4, "NIMBLESTANDARD::USER_TRACKING_OPTOUT"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->packageCurrentSession()V

    invoke-virtual {p0, v3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v1

    if-lez v1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Removing %d remaining events that couldn\'t be sent from queue."

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Removing unposted sessions."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    :goto_1
    iput-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    return-void
.end method

.method public setPostEnable(Z)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p1, v0}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p1

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postEnable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "trackingPostEnabledFlag"

    invoke-virtual {p1, v1, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1}, Lcom/ea/nimble/Persistence;->synchronize()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isAbleToPostEvent(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    :cond_0
    return-void
.end method

.method public setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected setup()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    return-void
.end method

.method protected suspend()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->deleteDatFile(Ljava/lang/String;)Z

    return-void
.end method

.method protected teardown()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    return-void
.end method
