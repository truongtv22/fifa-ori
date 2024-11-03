.class public Lcom/beetalk/sdk/RefreshTokenHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "RefreshTokenHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-void
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/RefreshTokenHandler;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/RefreshTokenHandler;->requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/RefreshTokenHandler;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/RefreshTokenHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/RefreshTokenHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/RefreshTokenHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->tryHandler()V

    :goto_0
    return-void
.end method

.method private requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 6

    invoke-static {p1}, Lcom/beetalk/sdk/networking/service/AuthService;->refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "open_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "expiry_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "platform"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v4, Lcom/beetalk/sdk/data/AuthToken;

    sget-object v5, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-direct {v4, v1, v5, p1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {v4, v2}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-virtual {v4, v0}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    invoke-static {p2, v4, v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 4

    new-instance v0, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;-><init>(Lcom/beetalk/sdk/RefreshTokenHandler;Lcom/beetalk/sdk/RefreshTokenHandler$1;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getAuthToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/RefreshTokenHandler$RequestRefreshTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1
.end method
