.class public abstract Lcom/vk/sdk/api/photo/VKUploadPhotoBase;
.super Lcom/vk/sdk/api/VKUploadBase;
.source "VKUploadPhotoBase.java"


# static fields
.field private static final serialVersionUID:J = -0x3f611b5983e9d33fL


# instance fields
.field protected mAlbumId:J

.field protected mGroupId:J

.field protected mImages:[Ljava/io/File;

.field protected mUserId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/VKUploadBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getUploadOperation(Ljava/lang/String;)Lcom/vk/sdk/api/httpClient/VKJsonOperation;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    iget-object v1, p0, Lcom/vk/sdk/api/photo/VKUploadPhotoBase;->mImages:[Ljava/io/File;

    invoke-static {p1, v1}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->fileUploadRequest(Ljava/lang/String;[Ljava/io/File;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    return-object v0
.end method
