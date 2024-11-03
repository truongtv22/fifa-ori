.class public abstract Lcom/vk/sdk/api/docs/VKUploadDocBase;
.super Lcom/vk/sdk/api/VKUploadBase;
.source "VKUploadDocBase.java"


# instance fields
.field protected mDoc:Ljava/io/File;

.field protected mGroupId:J


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

    iget-object v1, p0, Lcom/vk/sdk/api/docs/VKUploadDocBase;->mDoc:Ljava/io/File;

    invoke-static {p1, v1}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->docUploadRequest(Ljava/lang/String;Ljava/io/File;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    return-object v0
.end method
