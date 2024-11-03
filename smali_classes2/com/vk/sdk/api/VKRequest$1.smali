.class Lcom/vk/sdk/api/VKRequest$1;
.super Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;
.source "VKRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKRequest;->getHttpListener()Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/VKRequest;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/VKRequest$1;->onComplete(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onComplete(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lorg/json/JSONObject;)V
    .locals 1

    const-string p1, "error"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/vk/sdk/api/VKError;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/VKError;-><init>(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {p1, v0}, Lcom/vk/sdk/api/VKRequest;->access$000(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKError;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {p1, v0}, Lcom/vk/sdk/api/VKRequest;->access$100(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKError;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {p1}, Lcom/vk/sdk/api/VKRequest;->access$200(Lcom/vk/sdk/api/VKRequest;)Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    move-result-object v0

    instance-of v0, v0, Lcom/vk/sdk/api/httpClient/VKModelOperation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {v0}, Lcom/vk/sdk/api/VKRequest;->access$200(Lcom/vk/sdk/api/VKRequest;)Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/httpClient/VKModelOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKModelOperation;->parsedModel:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/vk/sdk/api/VKRequest;->access$300(Lcom/vk/sdk/api/VKRequest;Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/VKRequest$1;->onError(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lcom/vk/sdk/api/VKError;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget v0, p2, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v1, -0x66

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v1, -0x65

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    iget v0, v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {p1}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;->getResponseJson()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/vk/sdk/api/VKRequest;->access$300(Lcom/vk/sdk/api/VKRequest;Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget p1, p1, Lcom/vk/sdk/api/VKRequest;->attempts:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {p1}, Lcom/vk/sdk/api/VKRequest;->access$404(Lcom/vk/sdk/api/VKRequest;)I

    move-result p1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget v0, v0, Lcom/vk/sdk/api/VKRequest;->attempts:I

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {p1, p2}, Lcom/vk/sdk/api/VKRequest;->access$100(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKError;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget-object p1, p1, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget-object p1, p1, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    iget-object p2, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {p2}, Lcom/vk/sdk/api/VKRequest;->access$400(Lcom/vk/sdk/api/VKRequest;)I

    move-result v0

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget v1, v1, Lcom/vk/sdk/api/VKRequest;->attempts:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->attemptFailed(Lcom/vk/sdk/api/VKRequest;II)V

    :cond_3
    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    new-instance p2, Lcom/vk/sdk/api/VKRequest$1$1;

    invoke-direct {p2, p0}, Lcom/vk/sdk/api/VKRequest$1$1;-><init>(Lcom/vk/sdk/api/VKRequest$1;)V

    const/16 v0, 0x12c

    invoke-static {p1, p2, v0}, Lcom/vk/sdk/api/VKRequest;->access$500(Lcom/vk/sdk/api/VKRequest;Ljava/lang/Runnable;I)V

    return-void
.end method
