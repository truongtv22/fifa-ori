.class public Lcom/beetalk/sdk/networking/model/RecallTokenResponse;
.super Lcom/beetalk/sdk/networking/model/BaseResponse;
.source "RecallTokenResponse.java"


# instance fields
.field private tokens:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tokens"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/RecallToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/model/BaseResponse;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->tokens:Ljava/util/List;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;
    .locals 4

    new-instance v0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;-><init>()V

    const-string/jumbo v1, "tokens"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/beetalk/sdk/networking/model/RecallToken;->parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/RecallToken;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->setTokens(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/RecallToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->tokens:Ljava/util/List;

    return-object v0
.end method

.method public setTokens(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/RecallToken;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/RecallTokenResponse;->tokens:Ljava/util/List;

    return-void
.end method
