.class public Lcom/ea/nimble/tracking/TrackingWrangler;
.super Lcom/ea/nimble/Component;
.source "TrackingWrangler.java"

# interfaces
.implements Lcom/ea/nimble/tracking/ITracking;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_sessionIsActive:Z

.field private m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_sessionIsActive:Z

    return-void
.end method

.method static getComponent()Lcom/ea/nimble/tracking/TrackingWrangler;
    .locals 1

    invoke-static {}, Lcom/ea/nimble/tracking/Tracking;->getComponent()Lcom/ea/nimble/tracking/ITracking;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/TrackingWrangler;

    return-object v0
.end method


# virtual methods
.method public addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearCustomSessionData()V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.tracking"

    return-object v0
.end method

.method public getEnable()Z
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-nez v4, :cond_1

    invoke-interface {v5}, Lcom/ea/nimble/tracking/ITracking;->getEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Tracking"

    return-object v0
.end method

.method public getPostEnable()Z
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    if-nez v4, :cond_1

    invoke-interface {v5}, Lcom/ea/nimble/tracking/ITracking;->getPostEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.trackingimpl.synergy"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyComponent;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
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

    iget-boolean v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_sessionIsActive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "Ignoring event %s because there is not an active session"

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p2}, Lcom/ea/nimble/Utility;->convertLiteralMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "LogEvent type(%s) parameters(%s)"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeCustomSessionData(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/ea/nimble/tracking/ITracking;->removeCustomSessionData(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restore()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.trackingimpl"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/ea/nimble/tracking/ITracking;

    iput-object v1, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    aget-object v3, v0, v1

    check-cast v3, Lcom/ea/nimble/tracking/ITracking;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, "ENABLE"

    goto :goto_0

    :cond_0
    const-string v0, "DISABLE"

    :goto_0
    const-string v1, " tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/ea/nimble/tracking/ITracking;->setEnable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "com.ea.nimble.tracking.eventwrangler"

    invoke-static {p1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/tracking/TrackingEventWrangler;

    const-string v0, "NIMBLESTANDARD::SESSION_START"

    invoke-virtual {p1, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setPostEnable(Z)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/ea/nimble/tracking/ITracking;->setPostEnable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSessionState(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_sessionIsActive:Z

    return-void
.end method

.method public setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/TrackingWrangler;->m_trackingComponents:[Lcom/ea/nimble/tracking/ITracking;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
