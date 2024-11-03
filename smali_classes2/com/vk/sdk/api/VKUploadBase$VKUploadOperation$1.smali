.class Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->start(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

.field final synthetic val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iput-object p2, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-static {v0, v1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->access$100(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iput-object v0, p1, Lcom/vk/sdk/api/VKResponse;->request:Lcom/vk/sdk/api/VKRequest;

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-static {v0, v1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->access$200(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->this$1:Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iput-object v0, p1, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method

.method public onProgress(Lcom/vk/sdk/api/VKRequest$VKProgressType;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;->val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onProgress(Lcom/vk/sdk/api/VKRequest$VKProgressType;JJ)V

    :cond_0
    return-void
.end method
