.class Lcom/ea/nimble/identity/NimbleIdentityImpl$4;
.super Ljava/lang/Object;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;->requestServerAuthCodeForLegacyOriginToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

.field final synthetic val$scope:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iput-object p3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$serverId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$scope:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Request for legacy server auth code failed for error "

    invoke-static/range {p0 .. p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "code"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v13, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fail to parse oAuth code from server response data "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v4, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$serverId:Ljava/lang/String;

    iget-object v12, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$scope:Ljava/lang/String;

    invoke-interface/range {v8 .. v13}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Request for server auth code succeed with auth code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    const/4 v6, 0x0

    iget-object v8, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$serverId:Ljava/lang/String;

    iget-object v9, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$scope:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void

    :catch_0
    move-exception v0

    move-object v4, v0

    iget-object v0, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$serverId:Ljava/lang/String;

    iget-object v15, v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;->val$scope:Ljava/lang/String;

    move-object/from16 v16, v4

    invoke-interface/range {v11 .. v16}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void
.end method
