.class Lcom/vk/sdk/api/httpClient/VKImageOperation$1;
.super Ljava/lang/Object;
.source "VKImageOperation.java"

# interfaces
.implements Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/httpClient/VKImageOperation;->setImageOperationListener(Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

.field final synthetic val$listener:Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/httpClient/VKImageOperation;Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

    iput-object p2, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->val$listener:Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->state()Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    move-result-object v0

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKImageOperation;->mLastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->getResultObject()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;-><init>(Lcom/vk/sdk/api/httpClient/VKImageOperation$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->val$listener:Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;

    iget-object v1, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

    iget-object v2, v1, Lcom/vk/sdk/api/httpClient/VKImageOperation;->mLastException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->generateError(Ljava/lang/Exception;)Lcom/vk/sdk/api/VKError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;->onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V

    :goto_1
    return-void
.end method
