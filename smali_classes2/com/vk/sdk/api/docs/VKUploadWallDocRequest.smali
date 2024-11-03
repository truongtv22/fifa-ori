.class public Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;
.super Lcom/vk/sdk/api/docs/VKUploadDocBase;
.source "VKUploadWallDocRequest.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/api/docs/VKUploadDocBase;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mDoc:Ljava/io/File;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mGroupId:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/docs/VKUploadDocBase;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mDoc:Ljava/io/File;

    iput-wide p2, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mGroupId:J

    return-void
.end method


# virtual methods
.method protected getSaveRequest(Lorg/json/JSONObject;)Lcom/vk/sdk/api/VKRequest;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/vk/sdk/api/VKApi;->docs()Lcom/vk/sdk/api/methods/VKApiDocs;

    move-result-object v0

    new-instance v1, Lcom/vk/sdk/api/VKParameters;

    invoke-static {p1}, Lcom/vk/sdk/util/VKJsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vk/sdk/api/VKParameters;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/methods/VKApiDocs;->save(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mGroupId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/vk/sdk/util/VKUtil;->paramsFrom([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest;->addExtraParameters(Lcom/vk/sdk/api/VKParameters;)V

    :cond_0
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getServerRequest()Lcom/vk/sdk/api/VKRequest;
    .locals 5

    iget-wide v0, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/vk/sdk/api/VKApi;->docs()Lcom/vk/sdk/api/methods/VKApiDocs;

    move-result-object v0

    iget-wide v1, p0, Lcom/vk/sdk/api/docs/VKUploadWallDocRequest;->mGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/methods/VKApiDocs;->getUploadWallServer(J)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/vk/sdk/api/VKApi;->docs()Lcom/vk/sdk/api/methods/VKApiDocs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/sdk/api/methods/VKApiDocs;->getUploadWallServer()Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method
