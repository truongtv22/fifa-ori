.class public Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "ExchangeTokenResp.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private expireTime:J

.field private openId:Ljava/lang/String;

.field private platform:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->openId:Ljava/lang/String;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;
    .locals 4

    new-instance v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v1, "Empty response"

    invoke-static {v1, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->errorCode:I

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "error"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "error_user_ban"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->errorCode:I

    goto :goto_0

    :cond_1
    const-string v1, "invalid_grant"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->errorCode:I

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->errorCode:I

    :goto_0
    return-object v0

    :cond_3
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->errorCode:I

    const-string p0, "open_id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->openId:Ljava/lang/String;

    const-string p0, "access_token"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->accessToken:Ljava/lang/String;

    const-string p0, "expiry_time"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->expireTime:J

    const-string p0, "platform"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->platform:I

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->errorCode:I

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()I
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->expireTime:J

    long-to-int v1, v0

    return v1
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/networking/model/ExchangeTokenResp;->platform:I

    return v0
.end method
