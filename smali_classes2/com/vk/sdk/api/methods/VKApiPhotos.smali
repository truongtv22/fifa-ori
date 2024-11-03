.class public Lcom/vk/sdk/api/methods/VKApiPhotos;
.super Lcom/vk/sdk/api/methods/VKApiBase;
.source "VKApiPhotos.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/methods/VKApiBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessagesUploadServer()Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getMessagesUploadServer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getMethodsGroup()Ljava/lang/String;
    .locals 1

    const-string v0, "photos"

    return-object v0
.end method

.method public getUploadServer(J)Lcom/vk/sdk/api/VKRequest;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/vk/sdk/util/VKUtil;->paramsFrom([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object p1

    const-string p2, "getUploadServer"

    invoke-virtual {p0, p2, p1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getUploadServer(JJ)Lcom/vk/sdk/api/VKRequest;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string p2, "group_id"

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {v0}, Lcom/vk/sdk/util/VKUtil;->paramsFrom([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object p1

    const-string p2, "getUploadServer"

    invoke-virtual {p0, p2, p1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public getWallUploadServer()Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "getWallUploadServer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method public getWallUploadServer(J)Lcom/vk/sdk/api/VKRequest;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/vk/sdk/util/VKUtil;->paramsFrom([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object p1

    const-string p2, "getWallUploadServer"

    invoke-virtual {p0, p2, p1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public save(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "save"

    const-class v1, Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public saveMessagesPhoto(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "saveMessagesPhoto"

    const-class v1, Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method

.method public saveWallPhoto(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    const-string v0, "saveWallPhoto"

    const-class v1, Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->prepareRequest(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    return-object p1
.end method
