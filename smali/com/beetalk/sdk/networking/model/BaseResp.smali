.class public Lcom/beetalk/sdk/networking/model/BaseResp;
.super Ljava/lang/Object;
.source "BaseResp.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected errorCode:I

.field protected resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/networking/model/BaseResp;->errorCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/networking/model/BaseResp;->resultCode:I

    return v0
.end method

.method public isFailure()Z
    .locals 2

    iget v0, p0, Lcom/beetalk/sdk/networking/model/BaseResp;->resultCode:I

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method parseErrorCode(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const-string v0, "error_params"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2
    const-string v0, "error_scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    const-string v0, "server_error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_4
    const-string v0, "error_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_5
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method parseResultCode(Lorg/json/JSONObject;)I
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v0

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method
