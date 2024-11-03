.class public Lcom/beetalk/sdk/networking/service/AuthService;
.super Ljava/lang/Object;
.source "AuthService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appPlatformBindCreate(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/networking/service/AuthService$5;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/networking/service/AuthService$3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static exchangeFacebookTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebook_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "redirect_uri"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthFacebookTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeFacebookTokenSyncNoGrant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "facebook_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "redirect_uri"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthFacebookTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "authorization_code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "redirect_uri"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "source"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthServerExchangeTokenUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeGoogleTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "google_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthGoogleTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeGoogleTokenSyncNoGrant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "google_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "source"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_secret"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthGoogleTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeLineTokenSync(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "line_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthLineTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeLineTokenSyncNoGrant(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "line_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthLineTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangePGSToken(Ljava/lang/String;Ljava/lang/String;I)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "google_auth_code"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0xdbed

    if-ne p2, p0, :cond_0

    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;)V

    invoke-static {p0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda2;-><init>()V

    sget-object p2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeTwitterToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "twitter_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "token_secret"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0xdbed

    if-ne p3, p0, :cond_0

    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;-><init>(Ljava/util/HashMap;)V

    invoke-static {p0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda5;-><init>()V

    sget-object p2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeVkTokenSync(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "vk_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthVkTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static exchangeVkTokenSyncNoGrant(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "vk_access_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "client_id"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "create_grant"

    const-string p1, "false"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthVkTokenExchangeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getAppPlatformBindInfo(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$4;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$4;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static grantGuestToken(JLjava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 8

    new-instance v7, Lcom/beetalk/sdk/networking/service/AuthService$2;

    move-object v0, v7

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/beetalk/sdk/networking/service/AuthService$2;-><init>(JLjava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v7}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static inspectTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getTokenInspectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$exchangePGSToken$2(Ljava/util/HashMap;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthPGSTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$exchangePGSToken$3(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    iget-boolean v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$exchangeTwitterToken$0(Ljava/util/HashMap;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthTwitterTokenExchangeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$exchangeTwitterToken$1(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    iget-boolean v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$recallPGSSessionToken$5(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "recall_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_id"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getPGSRecallTokenUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->hasError()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No token found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$uploadPGSSessionId$4(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/SaveTokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "recall_id"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getPGSSaveTokenUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    const-class p1, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;

    invoke-static {p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->parse(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->hasError()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->isFailure()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->getError()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static logoutSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "access_token"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "refresh_token"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getLogoutUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    return-void
.end method

.method private static parse(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static recallPGSSessionToken(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "refresh_token"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "grant_type"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthRefreshTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static registerGuest(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$1;-><init>(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public static uploadPGSSessionId(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method
