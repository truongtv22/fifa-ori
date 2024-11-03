.class public Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;
.super Lcom/vk/sdk/api/photo/VKUploadPhotoBase;
.source "VKUploadWallPhotoRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x41ae2e491af80c22L


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/photo/VKUploadImage;JI)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/photo/VKUploadPhotoBase;-><init>()V

    iput-wide p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mUserId:J

    int-to-long p2, p4

    iput-wide p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/File;

    const/4 p3, 0x0

    invoke-virtual {p1}, Lcom/vk/sdk/api/photo/VKUploadImage;->getTmpFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, p2, p3

    iput-object p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mImages:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JI)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/photo/VKUploadPhotoBase;-><init>()V

    iput-wide p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mUserId:J

    int-to-long p2, p4

    iput-wide p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/io/File;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    iput-object p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mImages:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>([Lcom/vk/sdk/api/photo/VKUploadImage;JI)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/photo/VKUploadPhotoBase;-><init>()V

    iput-wide p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mUserId:J

    int-to-long p2, p4

    iput-wide p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    array-length p2, p1

    new-array p2, p2, [Ljava/io/File;

    iput-object p2, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mImages:[Ljava/io/File;

    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mImages:[Ljava/io/File;

    aget-object p4, p1, p2

    invoke-virtual {p4}, Lcom/vk/sdk/api/photo/VKUploadImage;->getTmpFile()Ljava/io/File;

    move-result-object p4

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSaveRequest(Lorg/json/JSONObject;)Lcom/vk/sdk/api/VKRequest;
    .locals 9

    :try_start_0
    invoke-static {}, Lcom/vk/sdk/api/VKApi;->photos()Lcom/vk/sdk/api/methods/VKApiPhotos;

    move-result-object v0

    new-instance v1, Lcom/vk/sdk/api/VKParameters;

    invoke-static {p1}, Lcom/vk/sdk/util/VKJsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vk/sdk/api/VKParameters;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->saveWallPhoto(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mUserId:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "user_id"

    aput-object v1, v0, v3

    iget-wide v7, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mUserId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/vk/sdk/util/VKUtil;->paramsFrom([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest;->addExtraParameters(Lcom/vk/sdk/api/VKParameters;)V

    :cond_0
    iget-wide v0, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "group_id"

    aput-object v1, v0, v3

    iget-wide v3, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/vk/sdk/util/VKUtil;->paramsFrom([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest;->addExtraParameters(Lcom/vk/sdk/api/VKParameters;)V

    :cond_1
    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getServerRequest()Lcom/vk/sdk/api/VKRequest;
    .locals 5

    iget-wide v0, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/vk/sdk/api/VKApi;->photos()Lcom/vk/sdk/api/methods/VKApiPhotos;

    move-result-object v0

    iget-wide v1, p0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->mGroupId:J

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/methods/VKApiPhotos;->getWallUploadServer(J)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/vk/sdk/api/VKApi;->photos()Lcom/vk/sdk/api/methods/VKApiPhotos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/sdk/api/methods/VKApiPhotos;->getWallUploadServer()Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method
