.class public Lcom/beetalk/sdk/networking/model/PaymentEligibility;
.super Lcom/beetalk/sdk/networking/model/BaseResp;
.source "PaymentEligibility.java"


# instance fields
.field public eligible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResp;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->parseErrorCode(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->parseResultCode(Lorg/json/JSONObject;)I

    move-result p0

    iput p0, v0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->resultCode:I

    const-string p0, "eligibility"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->eligible:Z

    return-object v0
.end method
