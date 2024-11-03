.class Lcom/ea/nimble/OperationalTelemetryEventImpl;
.super Ljava/lang/Object;
.source "OperationalTelemetryEventImpl.java"

# interfaces
.implements Lcom/ea/nimble/OperationalTelemetryEvent;


# instance fields
.field private m_eventDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_eventType:Ljava/lang/String;

.field private m_loggedTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventType:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventDictionary:Ljava/util/Map;

    iput-object p3, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_loggedTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getEventDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventDictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggedTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/OperationalTelemetryEventImpl;->m_loggedTime:Ljava/util/Date;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/OperationalTelemetryEventImpl;->getEventType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ea/nimble/OperationalTelemetryEventImpl;->getLoggedTime()Ljava/util/Date;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/ea/nimble/OperationalTelemetryEventImpl;->getEventDictionary()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "OperationalTelemetryEvent(%s)-(%s) > %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
