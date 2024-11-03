.class public Lcom/beetalk/sdk/networking/model/RecallToken;
.super Ljava/lang/Object;
.source "RecallToken.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private createTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "create_time"
    .end annotation
.end field

.field private expiryTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiry_time"
    .end annotation
.end field

.field private openId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "open_id"
    .end annotation
.end field

.field private platform:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "platform"
    .end annotation
.end field

.field private scopes:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field private uid:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->scopes:J

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/beetalk/sdk/networking/model/RecallToken;
    .locals 7

    new-instance v0, Lcom/beetalk/sdk/networking/model/RecallToken;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/model/RecallToken;-><init>()V

    const-string v1, "platform"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/RecallToken;->setPlatform(I)V

    const-string v1, "access_token"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/RecallToken;->setAccessToken(Ljava/lang/String;)V

    const-string v1, "create_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/beetalk/sdk/networking/model/RecallToken;->setCreateTime(J)V

    const-string v1, "expiry_time"

    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/beetalk/sdk/networking/model/RecallToken;->setExpiryTime(J)V

    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/beetalk/sdk/networking/model/RecallToken;->setUid(J)V

    const-string v1, "open_id"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/networking/model/RecallToken;->setOpenId(Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/networking/model/RecallToken;->setScopes(J)V

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->createTime:J

    return-wide v0
.end method

.method public getExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->expiryTime:J

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->platform:I

    return v0
.end method

.method public getScopes()J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->scopes:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->uid:J

    return-wide v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->createTime:J

    return-void
.end method

.method public setExpiryTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->expiryTime:J

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->openId:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(I)V
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->platform:I

    return-void
.end method

.method public setScopes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->scopes:J

    return-void
.end method

.method public setUid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/networking/model/RecallToken;->uid:J

    return-void
.end method
