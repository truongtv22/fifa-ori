.class public abstract Lcom/vk/sdk/api/VKUploadBase;
.super Lcom/vk/sdk/api/VKRequest;
.source "VKUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOperation()Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;-><init>(Lcom/vk/sdk/api/VKUploadBase;Lcom/vk/sdk/api/VKUploadBase$1;)V

    return-object v0
.end method

.method protected abstract getSaveRequest(Lorg/json/JSONObject;)Lcom/vk/sdk/api/VKRequest;
.end method

.method protected abstract getServerRequest()Lcom/vk/sdk/api/VKRequest;
.end method

.method protected abstract getUploadOperation(Ljava/lang/String;)Lcom/vk/sdk/api/httpClient/VKJsonOperation;
.end method
