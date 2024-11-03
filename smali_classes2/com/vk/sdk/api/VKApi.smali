.class public Lcom/vk/sdk/api/VKApi;
.super Ljava/lang/Object;
.source "VKApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audio()Lcom/vk/sdk/api/methods/VKApiAudio;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiAudio;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiAudio;-><init>()V

    return-object v0
.end method

.method public static docs()Lcom/vk/sdk/api/methods/VKApiDocs;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiDocs;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiDocs;-><init>()V

    return-object v0
.end method

.method public static friends()Lcom/vk/sdk/api/methods/VKApiFriends;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiFriends;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiFriends;-><init>()V

    return-object v0
.end method

.method public static groups()Lcom/vk/sdk/api/methods/VKApiGroups;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiGroups;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiGroups;-><init>()V

    return-object v0
.end method

.method public static messages()Lcom/vk/sdk/api/methods/VKApiMessages;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiMessages;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiMessages;-><init>()V

    return-object v0
.end method

.method public static photos()Lcom/vk/sdk/api/methods/VKApiPhotos;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiPhotos;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiPhotos;-><init>()V

    return-object v0
.end method

.method public static uploadAlbumPhotoRequest(Lcom/vk/sdk/api/photo/VKUploadImage;JI)Lcom/vk/sdk/api/VKRequest;
    .locals 7

    new-instance v6, Lcom/vk/sdk/api/photo/VKUploadAlbumPhotoRequest;

    int-to-long v4, p3

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/vk/sdk/api/photo/VKUploadAlbumPhotoRequest;-><init>(Lcom/vk/sdk/api/photo/VKUploadImage;JJ)V

    return-object v6
.end method

.method public static uploadAlbumPhotoRequest(Ljava/io/File;JI)Lcom/vk/sdk/api/VKRequest;
    .locals 7

    new-instance v6, Lcom/vk/sdk/api/photo/VKUploadAlbumPhotoRequest;

    int-to-long v4, p3

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/vk/sdk/api/photo/VKUploadAlbumPhotoRequest;-><init>(Ljava/io/File;JJ)V

    return-object v6
.end method

.method public static uploadMessagesPhotoRequest(Lcom/vk/sdk/api/photo/VKUploadImage;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;-><init>(Lcom/vk/sdk/api/photo/VKUploadImage;)V

    return-object v0
.end method

.method public static uploadMessagesPhotoRequest(Ljava/io/File;)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/photo/VKUploadMessagesPhotoRequest;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static uploadWallPhotoRequest(Lcom/vk/sdk/api/photo/VKUploadImage;JI)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;-><init>(Lcom/vk/sdk/api/photo/VKUploadImage;JI)V

    return-object v0
.end method

.method public static uploadWallPhotoRequest(Ljava/io/File;JI)Lcom/vk/sdk/api/VKRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;-><init>(Ljava/io/File;JI)V

    return-object v0
.end method

.method public static users()Lcom/vk/sdk/api/methods/VKApiUsers;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiUsers;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiUsers;-><init>()V

    return-object v0
.end method

.method public static video()Lcom/vk/sdk/api/methods/VKApiVideo;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiVideo;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiVideo;-><init>()V

    return-object v0
.end method

.method public static wall()Lcom/vk/sdk/api/methods/VKApiWall;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/methods/VKApiWall;

    invoke-direct {v0}, Lcom/vk/sdk/api/methods/VKApiWall;-><init>()V

    return-object v0
.end method
