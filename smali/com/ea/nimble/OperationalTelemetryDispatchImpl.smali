.class Lcom/ea/nimble/OperationalTelemetryDispatchImpl;
.super Lcom/ea/nimble/Component;
.source "OperationalTelemetryDispatchImpl.java"

# interfaces
.implements Lcom/ea/nimble/IOperationalTelemetryDispatch;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_maxEventQueueSizeDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_networkMetricsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private m_networkPayloadsArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.ea.nimble.network"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    const-string v2, "com.ea.nimble.trackingimpl.synergy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private canLogEvent(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.ea.nimble.network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v1, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-gez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-nez v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "canLogEvent, unsupported OT eventType, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method private purgeOldestEvent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "purgeOldestEvent called with empty event array."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/OperationalTelemetryEvent;

    if-eqz v1, :cond_2

    invoke-interface {v2}, Lcom/ea/nimble/OperationalTelemetryEvent;->getLoggedTime()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1}, Lcom/ea/nimble/OperationalTelemetryEvent;->getLoggedTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private trimEventQueue(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "trimEventQueues, queue threshold surprassed, purging "

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v1

    const-string v2, "com.ea.nimble.network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v2, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    :goto_0
    if-gez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-gez v2, :cond_3

    return-void

    :cond_3
    monitor-enter p0

    if-nez v1, :cond_4

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_4
    div-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " older events "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->purgeOldestEvent(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "trimEventQueue, unsupported OT eventType, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateEventThresholdListeners()V
    .locals 10

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.network"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "updateEventThresholdListeners, notifying listeners event queue is approaching threshold."

    const-string v4, "nimble.notification.ot.eventthresholdwarning"

    const-string v5, "eventType"

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    if-lez v1, :cond_0

    int-to-double v8, v1

    mul-double v8, v8, v6

    double-to-int v1, v8

    iget-object v8, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->getMaxEventCount(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    int-to-double v8, v1

    mul-double v8, v8, v6

    double-to-int v1, v8

    iget-object v6, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.operationaltelemetrydispatch"

    return-object v0
.end method

.method public getEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "getEvents called with null or empty eventType."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v0, "com.ea.nimble.network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v0, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getEvents, unsupported OT eventType, "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "OTDispatch"

    return-object v0
.end method

.method public getMaxEventCount(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x64

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "getMaxEventCount called with null or empty eventType."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "logEvent called with null or empty eventType."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/ea/nimble/OperationalTelemetryEventImpl;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, p1, p2, v2}, Lcom/ea/nimble/OperationalTelemetryEventImpl;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)V

    monitor-enter p0

    :try_start_0
    const-string p2, "com.ea.nimble.network"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->trimEventQueue(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkMetricsArray:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p2, "com.ea.nimble.trackingimpl.synergy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->trimEventQueue(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->canLogEvent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_networkPayloadsArray:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "logEvent, unsupported OT eventType, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->updateEventThresholdListeners()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_1
    const-string p1, "logEvent called with null or empty eventDictionary."

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected restore()V
    .locals 0

    return-void
.end method

.method protected resume()V
    .locals 0

    return-void
.end method

.method public setMaxEventCount(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "setMaxEventCount called with null or empty eventType."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->m_maxEventQueueSizeDict:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;->trimEventQueue(Ljava/lang/String;)V

    return-void
.end method

.method protected suspend()V
    .locals 0

    return-void
.end method
