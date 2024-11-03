.class Lcom/vk/sdk/api/VKBatchRequest$1;
.super Ljava/lang/Object;
.source "VKBatchRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKBatchRequest;->executeWithListener(Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/VKBatchRequest;

.field final synthetic val$request:Lcom/vk/sdk/api/VKRequest;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKBatchRequest;Lcom/vk/sdk/api/VKRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest$1;->this$0:Lcom/vk/sdk/api/VKBatchRequest;

    iput-object p2, p0, Lcom/vk/sdk/api/VKBatchRequest$1;->val$request:Lcom/vk/sdk/api/VKRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest$1;->val$request:Lcom/vk/sdk/api/VKRequest;

    iget-object v0, v0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    iget-object v1, p0, Lcom/vk/sdk/api/VKBatchRequest$1;->val$request:Lcom/vk/sdk/api/VKRequest;

    new-instance v2, Lcom/vk/sdk/api/VKBatchRequest$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vk/sdk/api/VKBatchRequest$1$1;-><init>(Lcom/vk/sdk/api/VKBatchRequest$1;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/VKRequest;->setRequestListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest$1;->val$request:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {v0}, Lcom/vk/sdk/api/VKRequest;->getOperation()Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    return-void
.end method
