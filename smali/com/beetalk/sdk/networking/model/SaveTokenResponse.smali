.class public Lcom/beetalk/sdk/networking/model/SaveTokenResponse;
.super Lcom/beetalk/sdk/networking/model/BaseResponse;
.source "SaveTokenResponse.java"


# instance fields
.field private result:Lcom/beetalk/sdk/networking/ResultCode;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lcom/beetalk/sdk/networking/ResultCodeAdapter;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->result:Lcom/beetalk/sdk/networking/ResultCode;

    return-object v0
.end method

.method public isFailure()Z
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->result:Lcom/beetalk/sdk/networking/ResultCode;

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->result:Lcom/beetalk/sdk/networking/ResultCode;

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setResult(Lcom/beetalk/sdk/networking/ResultCode;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/SaveTokenResponse;->result:Lcom/beetalk/sdk/networking/ResultCode;

    return-void
.end method
