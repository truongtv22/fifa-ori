.class Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/IOperationalTelemetryDispatch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyNetworkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynergyOperationalTelemetryDispatch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyNetworkConnection;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/SynergyNetworkConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    return-void
.end method


# virtual methods
.method public getEvents(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseCore not active for operational telemetry logging."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->getEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMaxEventCount(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "BaseCore not active for operational telemetry logging."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->getMaxEventCount(Ljava/lang/String;)I

    move-result p1

    return p1
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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "BaseCore not active for operational telemetry logging."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$200(Lcom/ea/nimble/SynergyNetworkConnection;)V

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$600(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "resultCode"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "SYNERGY_RESULT_CODE"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method public setMaxEventCount(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "BaseCore not active for operational telemetry logging."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->setMaxEventCount(Ljava/lang/String;I)V

    return-void
.end method
