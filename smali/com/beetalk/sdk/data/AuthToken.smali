.class public Lcom/beetalk/sdk/data/AuthToken;
.super Ljava/lang/Object;
.source "AuthToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private authToken:Ljava/lang/String;

.field private expiryTimestamp:Ljava/lang/Integer;

.field private lastInspectTime:Ljava/lang/Integer;

.field private mainPlatform:Ljava/lang/Integer;

.field private openId:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private tokenProvider:Lcom/beetalk/sdk/data/TokenProvider;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/data/AuthToken;->tokenProvider:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->mainPlatform:Ljava/lang/Integer;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/beetalk/sdk/data/AuthToken;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "authToken"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "tokenProvider"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/beetalk/sdk/data/TokenProvider;->valueOf(I)Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v1

    const-string v2, "mainPlatform"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {v3, p0, v1, v2}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    const-string p0, "refreshToken"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    const-string p0, "openId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    const-string p0, "expiryTimestamp"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    const-string p0, "lastInspectTime"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toJsonString(Lcom/beetalk/sdk/data/AuthToken;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "authToken"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tokenProvider"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->tokenProvider:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/TokenProvider;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "expiryTimestamp"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "refreshToken"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "openId"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastInspectTime"

    iget-object v2, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mainPlatform"

    iget-object p0, p0, Lcom/beetalk/sdk/data/AuthToken;->mainPlatform:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTimestamp()I
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLastInspectTime()I
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMainPlatform()I
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->mainPlatform:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->tokenProvider:Lcom/beetalk/sdk/data/TokenProvider;

    return-object v0
.end method

.method public hasAllFields()Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->authToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiryTimestamp(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->expiryTimestamp:Ljava/lang/Integer;

    return-void
.end method

.method public setLastInspectTime(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->lastInspectTime:Ljava/lang/Integer;

    return-void
.end method

.method public setMainPlatform(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->mainPlatform:Ljava/lang/Integer;

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->openId:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setTokenProvider(Lcom/beetalk/sdk/data/TokenProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/data/AuthToken;->tokenProvider:Lcom/beetalk/sdk/data/TokenProvider;

    return-void
.end method
