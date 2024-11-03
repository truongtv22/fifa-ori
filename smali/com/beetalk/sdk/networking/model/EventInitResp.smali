.class public Lcom/beetalk/sdk/networking/model/EventInitResp;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "EventInitResp.java"


# instance fields
.field public event_txn_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/EventInitResp;->event_txn_id:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/EventInitResp;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/networking/model/EventInitResp;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/EventInitResp;-><init>()V

    if-nez p0, :cond_0

    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/EventInitResp;->errorCode:I

    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/model/EventInitResp;->parseErrorCode(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/networking/model/EventInitResp;->errorCode:I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/EventInitResp;->parseResultCode(Lorg/json/JSONObject;)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/EventInitResp;->resultCode:I

    const-string p0, "event_txn_id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/beetalk/sdk/networking/model/EventInitResp;->event_txn_id:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method
