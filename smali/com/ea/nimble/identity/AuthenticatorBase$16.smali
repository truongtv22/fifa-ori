.class Lcom/ea/nimble/identity/AuthenticatorBase$16;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 8

    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "personas"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to parse persona information from server response data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    return-void

    :cond_0
    const-string v1, "persona"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to parse persona information from server response data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    return-void

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    double-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-direct {v3, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;-><init>(Ljava/util/Map;Ljava/util/Date;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Update personas successfully with new data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1802(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "authenticatorId"

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nimble.notification.identity.authenticator.persona.info.update"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    return-void
.end method
