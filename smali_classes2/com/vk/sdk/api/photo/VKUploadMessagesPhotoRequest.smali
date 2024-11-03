.class public Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;
.super Lcom/vk/sdk/api/photo/VKUploadPhotoBase;
.source "VKUploadMessagesPhotoRequest.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/photo/VKUploadImage;)V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/api/photo/VKUploadPhotoBase;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/vk/sdk/api/photo/VKUploadImage;->getTmpFile()Ljava/io/File;

    move-result-object p1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;->mImages:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/api/photo/VKUploadPhotoBase;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;->mImages:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected getSaveRequest(Lorg/json/JSONObject;)Lcom/vk/sdk/api/VKRequest;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/vk/sdk/api/VKApi;->photos()Lcom/vk/sdk/api/methods/VKApiPhotos;

    move-result-object v0

    new-instance v1, Lcom/vk/sdk/api/VKParameters;

    invoke-static {p1}, Lcom/vk/sdk/util/VKJsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/vk/sdk/api/VKParameters;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/methods/VKApiPhotos;->saveMessagesPhoto(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getServerRequest()Lcom/vk/sdk/api/VKRequest;
    .locals 1

    invoke-static {}, Lcom/vk/sdk/api/VKApi;->photos()Lcom/vk/sdk/api/methods/VKApiPhotos;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vk/sdk/api/methods/VKApiPhotos;->getMessagesUploadServer()Lcom/vk/sdk/api/VKRequest;

    move-result-object v0

    return-object v0
.end method
