.class Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->onComplete(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;->this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;->this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;->this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;->this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-static {p1, v0}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->access$400(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;->this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1$1;->this$3:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener$1;->this$2:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
