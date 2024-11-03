.class Lcom/ea/nimble/identity/NimbleIdentityToken;
.super Ljava/lang/Object;
.source "NimbleIdentityToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NIMBLE_IDENTITY_REFRESH_TOKEN_EXPIRES_IN:Ljava/lang/String; = "refresh_token_expires_in"

.field private static final NIMBLE_IDENTITY_TOKEN_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final NIMBLE_IDENTITY_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field private static final NIMBLE_IDENTITY_TOKEN_ID_TOKEN:Ljava/lang/String; = "id_token"

.field private static final NIMBLE_IDENTITY_TOKEN_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field private static final NIMBLE_IDENTITY_TOKEN_TYPE:Ljava/lang/String; = "token_type"

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private accessToken:Ljava/lang/String;

.field private accessTokenExpiryTime:Ljava/util/Date;

.field private idToken:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private refreshTokenExpiryTime:Ljava/util/Date;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "access_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessToken:Ljava/lang/String;

    const-string v0, "refresh_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshToken:Ljava/lang/String;

    const-string v0, "id_token"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->idToken:Ljava/lang/String;

    const-string/jumbo v0, "token_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->type:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "expires_in"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {p0, v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getTimeFromObject(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessTokenExpiryTime:Ljava/util/Date;

    const-string v2, "refresh_token_expires_in"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/util/Date;

    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getTimeFromObject(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshTokenExpiryTime:Ljava/util/Date;

    return-void
.end method

.method private getTimeFromObject(Ljava/lang/Object;)J
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t get time from object of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Identity"

    invoke-static {v1, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccessTokenExpiryTime()Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->accessTokenExpiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshTokenExpiryTime()Ljava/util/Date;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->refreshTokenExpiryTime:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityToken;->type:Ljava/lang/String;

    return-object v0
.end method
