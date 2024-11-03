.class Lcom/ea/nimble/SynergyEnvironmentImpl$2;
.super Ljava/lang/Object;
.source "SynergyEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdateImpl(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

.field final synthetic val$synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    iput-object p2, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->val$synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Exception;)V
    .locals 7

    const-string v0, "nimble.environment.notification.startup_requests_finished"

    const-string v1, "App is running in forground, send the NOTIFICATION_STARTUP_REQUESTS_FINISHED notification"

    const-string v2, "App is not running in forground, discard the NOTIFICATION_STARTUP_REQUESTS_FINISHED notification"

    const-string v3, "result"

    const/4 v4, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$100(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->val$synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->val$synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-virtual {v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$302(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/EnvironmentDataContainer;)Lcom/ea/nimble/EnvironmentDataContainer;

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$400(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$300(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object p1

    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v5}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$500(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/ea/nimble/EnvironmentDataContainer;->getKeysOfDifferences(Lcom/ea/nimble/ISynergyEnvironment;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "nimble.environment.notification.startup_environment_data_changed"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "1"

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationActive()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    const-string p1, "Synergy Environment Update object or dataContainer null at callback. Update was canceled"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    const-string v6, "StartupError(%s)"

    invoke-static {p0, v6, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p1, Lcom/ea/nimble/Error;

    if-eqz v5, :cond_5

    move-object v5, p1

    check-cast v5, Lcom/ea/nimble/Error;

    sget-object v6, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v5, v6}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v5, v6}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    const-string v5, "GetDirection request timed out or ServerUnavailable signal received. Start rate limiting of /getDirection call."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v5}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$600(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v5}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$100(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->val$synergyStartupObject:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-virtual {v5}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_6
    const-string v5, "Synergy Environment Update object or dataContainer null at callback. More than one update was being peroformed"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "0"

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "error"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationActive()Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v5}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_8
    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, p1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$2;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$102(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    return-void
.end method
