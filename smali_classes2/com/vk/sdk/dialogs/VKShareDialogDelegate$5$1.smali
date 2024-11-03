.class Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 1

    iget-object p1, p1, Lcom/vk/sdk/api/VKResponse;->parsedModel:Ljava/lang/Object;

    check-cast p1, Lcom/vk/sdk/api/model/VKPhotoArray;

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/model/VKAttachments;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;

    iget-object p1, p1, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {p1, v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$700(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Lcom/vk/sdk/api/model/VKAttachments;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;

    iget-object v0, v0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$500(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Z)V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;

    iget-object v0, v0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$200(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;

    iget-object v0, v0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$200(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;->onVkShareError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
