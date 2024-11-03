.class Lcom/ea/nimble/SynergyEnvironmentUpdater$3;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyValidateEADeviceId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

.field final synthetic val$eaDeviceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iput-object p2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->val$eaDeviceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 7

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "ValidateEADeviceID Success"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v0, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    const-string v1, "deviceId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v4, "ValidateEADeviceID Error (%s)"

    invoke-static {p0, v4, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v3, v0, Lcom/ea/nimble/SynergyServerError;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/ea/nimble/SynergyServerError;

    const/16 v4, -0x4e7e

    invoke-virtual {v3, v4}, Lcom/ea/nimble/SynergyServerError;->isError(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object p1, p1, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object p1, p1, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {p1, v1}, Lcom/ea/nimble/EnvironmentDataContainer;->setEADeviceId(Ljava/lang/String;)V

    :cond_1
    const-string p1, "ValidateEADeviceID, Server signal received to delete cached EA Device ID. Making request to get a new EA Device ID."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$800(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    return-void

    :cond_2
    const/16 v1, -0x4e7d

    invoke-virtual {v3, v1}, Lcom/ea/nimble/SynergyServerError;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "ValidateEADeviceID, EADeviceID validation failed. Making request to get a new EA Device ID."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$800(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v1, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v1, v3, v5

    if-gez v1, :cond_4

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$908(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "ValidateEADeviceID, call failed. Making retry attempt number %d."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->val$eaDeviceId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$1000(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$902(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v3, "ValidateEADeviceId call failed"

    invoke-direct {v1, v2, v3, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
