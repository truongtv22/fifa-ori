.class Lcom/ea/nimble/identity/AuthenticatorBase$15;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->updatePidInfo()V
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

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-direct {v1, p1, v0}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;-><init>(Ljava/util/Map;Ljava/util/Date;)V

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to parse valid pid information from server response data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1600(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p1, p1, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Update pid info succesfully, but nothing change."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1600(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->setExpiryTime(Ljava/util/Date;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1, v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p1, p1, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v0, "Update pid info successfully with new data."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p1, p1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    if-nez p1, :cond_2

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-direct {p1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;-><init>()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p1, p1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    move-result-object p1

    :goto_0
    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setPid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getDob()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getDob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setDateOfBirth(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    monitor-enter v0

    :try_start_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v3, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1602(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/NimbleIdentityPidInfo;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p1, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1, v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "authenticatorId"

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pidMapId"

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nimble.notification.identity.authenticator.user.info.update"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "nimble.notification.identity.authenticator.pid.info.update"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    return-void
.end method
