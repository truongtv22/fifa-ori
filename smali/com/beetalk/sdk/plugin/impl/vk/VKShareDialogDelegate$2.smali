.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->processExistingPhotos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 3

    iget-object p1, p1, Lcom/vk/sdk/api/VKResponse;->parsedModel:Ljava/lang/Object;

    check-cast p1, Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {p1}, Lcom/vk/sdk/api/model/VKPhotoArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiPhoto;

    iget-object v1, v0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getByType(C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v0, v0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getByType(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$200(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getByType(C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v0, v0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getByType(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$200(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getByType(C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v0, v0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getByType(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$200(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
