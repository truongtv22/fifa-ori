.class Lcom/vk/sdk/api/VKBatchRequest$1$1;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKBatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKBatchRequest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/api/VKBatchRequest$1;

.field final synthetic val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKBatchRequest$1;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest$1$1;->this$1:Lcom/vk/sdk/api/VKBatchRequest$1;

    iput-object p2, p0, Lcom/vk/sdk/api/VKBatchRequest$1$1;->val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest$1$1;->this$1:Lcom/vk/sdk/api/VKBatchRequest$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKBatchRequest$1;->this$0:Lcom/vk/sdk/api/VKBatchRequest;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKBatchRequest;->provideResponse(Lcom/vk/sdk/api/VKResponse;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest$1$1;->this$1:Lcom/vk/sdk/api/VKBatchRequest$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKBatchRequest$1;->this$0:Lcom/vk/sdk/api/VKBatchRequest;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKBatchRequest;->provideError(Lcom/vk/sdk/api/VKError;)V

    return-void
.end method

.method public onProgress(Lcom/vk/sdk/api/VKRequest$VKProgressType;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest$1$1;->val$originalListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onProgress(Lcom/vk/sdk/api/VKRequest$VKProgressType;JJ)V

    :cond_0
    return-void
.end method
