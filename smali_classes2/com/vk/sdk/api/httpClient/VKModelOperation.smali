.class public Lcom/vk/sdk/api/httpClient/VKModelOperation;
.super Lcom/vk/sdk/api/httpClient/VKJsonOperation;
.source "VKModelOperation.java"


# instance fields
.field protected final mParser:Lcom/vk/sdk/api/VKParser;

.field public parsedModel:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;Lcom/vk/sdk/api/VKParser;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    iput-object p2, p0, Lcom/vk/sdk/api/httpClient/VKModelOperation;->mParser:Lcom/vk/sdk/api/VKParser;

    return-void
.end method

.method public constructor <init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    new-instance p1, Lcom/vk/sdk/api/VKDefaultParser;

    invoke-direct {p1, p2}, Lcom/vk/sdk/api/VKDefaultParser;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKModelOperation;->mParser:Lcom/vk/sdk/api/VKParser;

    return-void
.end method


# virtual methods
.method protected postExecution()Z
    .locals 3

    invoke-super {p0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->postExecution()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKModelOperation;->mParser:Lcom/vk/sdk/api/VKParser;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKModelOperation;->getResponseJson()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/vk/sdk/api/httpClient/VKModelOperation;->mParser:Lcom/vk/sdk/api/VKParser;

    invoke-virtual {v2, v0}, Lcom/vk/sdk/api/VKParser;->createModel(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/httpClient/VKModelOperation;->parsedModel:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    return v1
.end method
