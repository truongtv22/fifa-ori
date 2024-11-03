.class Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;
.super Ljava/lang/Object;
.source "VKHttpOperation.java"

# interfaces
.implements Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/httpClient/VKHttpOperation;->setHttpOperationListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

.field final synthetic val$listener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/httpClient/VKHttpOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    iput-object p2, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->val$listener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->state()Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    move-result-object v0

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mLastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->val$listener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;

    iget-object v1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    invoke-virtual {v1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->getResultObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;->onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->val$listener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;

    iget-object v1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    iget-object v2, v1, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mLastException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->generateError(Ljava/lang/Exception;)Lcom/vk/sdk/api/VKError;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;->onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V

    :goto_1
    return-void
.end method
