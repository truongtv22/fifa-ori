.class Lcom/ea/nimble/SynergyEnvironmentUpdater$1;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetDirection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "GETDIRECTION FINISHED"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/util/Map;)V

    return-void

    :cond_0
    instance-of p1, v1, Lcom/ea/nimble/SynergyServerError;

    if-eqz p1, :cond_1

    move-object p1, v1

    check-cast p1, Lcom/ea/nimble/SynergyServerError;

    const v0, -0x11172

    invoke-virtual {p1, v0}, Lcom/ea/nimble/SynergyServerError;->isError(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    const-string v3, "Synergy ServerUnavailable signal received."

    invoke-direct {v0, v2, v3, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$408(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "GetDirection, call failed. Making retry attempt number %d."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$402(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    const-string v3, "Synergy /getDirectionByPackage request timed out."

    invoke-direct {v0, v2, v3, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method
