.class Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VKUploadRequestListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;


# direct methods
.method private constructor <init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/VKUploadBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;-><init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 2

    :try_start_0
    iget-object p1, p1, Lcom/vk/sdk/api/VKResponse;->json:Lorg/json/JSONObject;

    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "upload_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKUploadBase;->getUploadOperation(Ljava/lang/String;)Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    move-result-object p1

    new-instance v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;-><init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;)V

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->setHttpOperationListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;)V

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iput-object p1, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-static {p1}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/vk/sdk/api/VKError;

    const/16 v1, -0x68

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    iput-object p1, v0, Lcom/vk/sdk/api/VKError;->httpError:Ljava/lang/Exception;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
