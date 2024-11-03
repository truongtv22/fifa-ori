.class Lcom/ea/nimble/identity/AuthenticatorBase$10$1;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase$10;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase$10;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Request for server auth code failed for error %s"

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "code"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v14, Lcom/ea/nimble/Error;

    sget-object v5, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v3

    const-string v0, "Fail to parse oAuth code from server response data %s"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v5, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v14, v4, v3

    invoke-static {v0, v2, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v9, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v10, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v12, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v13, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    invoke-interface/range {v9 .. v14}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void

    :cond_0
    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v8, v2, v3

    const-string v3, "Request for server auth code succeed with auth code: %s"

    invoke-static {v0, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v6, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v7, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v9, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v10, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void

    :catch_0
    move-exception v0

    move-object v5, v0

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-static {v0, v2, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v12, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v13, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v15, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-interface/range {v12 .. v17}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void
.end method
