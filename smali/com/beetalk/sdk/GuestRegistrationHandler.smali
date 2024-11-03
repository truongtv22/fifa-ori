.class public Lcom/beetalk/sdk/GuestRegistrationHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "GuestRegistrationHandler.java"


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/GuestRegistrationHandler;Lorg/json/JSONObject;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->responseHasError(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/GuestRegistrationHandler;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/GuestRegistrationHandler;Lorg/json/JSONObject;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->getAuthResult(Lorg/json/JSONObject;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method private getAuthResult(Lorg/json/JSONObject;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 8

    const-string v0, "error"

    const-string v1, "open_id"

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    move v2, p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "refresh_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "expiry_time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v5, Lcom/beetalk/sdk/data/AuthToken;

    sget-object v6, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v7, 0x4

    invoke-direct {v5, v1, v6, v7}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {v5, v4}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    invoke-static {p1, v5, v0, v7}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    move-object v3, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid_grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_2
    const-string v0, "error_user_ban"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_GUEST_LOGIN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :goto_1
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_2
    if-nez v3, :cond_5

    iget-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v3

    :cond_5
    return-object v3
.end method

.method private grantTokenForGuest(JLjava/lang/String;)V
    .locals 6

    sget-object v3, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/beetalk/sdk/GuestRegistrationHandler$2;

    invoke-direct {v5, p0}, Lcom/beetalk/sdk/GuestRegistrationHandler$2;-><init>(Lcom/beetalk/sdk/GuestRegistrationHandler;)V

    move-wide v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/beetalk/sdk/networking/service/AuthService;->grantGuestToken(JLjava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    return-void
.end method

.method private responseHasError(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 4

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    invoke-direct {v0}, Lcom/beetalk/sdk/data/GuestAccountRegInfo;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/helper/Security;->generate64charpassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->nickname:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->gender:I

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->app_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->app_key:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getChannelSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->source:I

    new-instance p1, Lcom/beetalk/sdk/GuestRegistrationHandler$1;

    invoke-direct {p1, p0, v0}, Lcom/beetalk/sdk/GuestRegistrationHandler$1;-><init>(Lcom/beetalk/sdk/GuestRegistrationHandler;Lcom/beetalk/sdk/data/GuestAccountRegInfo;)V

    invoke-static {v0, p1}, Lcom/beetalk/sdk/networking/service/AuthService;->registerGuest(Lcom/beetalk/sdk/data/GuestAccountRegInfo;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/beetalk/sdk/cache/PersistentCache;->putGuestInfo(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(JLjava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
