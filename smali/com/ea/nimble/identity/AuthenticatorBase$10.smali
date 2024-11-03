.class Lcom/ea/nimble/identity/AuthenticatorBase$10;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

.field final synthetic val$scope:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 8

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p2, p2, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    aput-object v3, v2, p1

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "Ready to request server auth code for serverId %s and scope %s"

    invoke-static {p2, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string p2, "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "%s&scope=%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, p1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase$10;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v1, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, p1

    const-string p1, "Fail to get server authentication oauth code because of error %s"

    invoke-static {v1, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    :goto_1
    return-void
.end method
