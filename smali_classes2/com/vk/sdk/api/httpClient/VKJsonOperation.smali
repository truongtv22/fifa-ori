.class public Lcom/vk/sdk/api/httpClient/VKJsonOperation;
.super Lcom/vk/sdk/api/httpClient/VKHttpOperation;
.source "VKJsonOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/httpClient/VKHttpOperation<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponseJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    return-void
.end method


# virtual methods
.method public getResponseJson()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->mResponseJson:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->getResponseString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->mResponseJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->mLastException:Ljava/lang/Exception;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->mResponseJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bridge synthetic getResultObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->getResultObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getResultObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->mResponseJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected postExecution()Z
    .locals 1

    invoke-super {p0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->postExecution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->getResponseJson()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->mResponseJson:Lorg/json/JSONObject;

    const/4 v0, 0x1

    return v0
.end method
