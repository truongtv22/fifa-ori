.class Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;
.super Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;
.source "VKUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->onComplete(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onComplete(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lorg/json/JSONObject;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    invoke-virtual {p1, p2}, Lcom/vk/sdk/api/VKUploadBase;->getSaveRequest(Lorg/json/JSONObject;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    new-instance p2, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;

    invoke-direct {p2, p0}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;-><init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;)V

    invoke-virtual {p1, p2}, Lcom/vk/sdk/api/VKRequest;->setRequestListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    iget-object p2, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object p2, p2, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKRequest;->getOperation()Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    move-result-object p1

    iput-object p1, p2, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-static {p1}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    return-void
.end method

.method public bridge synthetic onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->onError(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lcom/vk/sdk/api/VKError;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {p1, p2}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
