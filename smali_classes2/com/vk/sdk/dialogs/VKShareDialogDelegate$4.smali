.class Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->makePostWithAttachments(Lcom/vk/sdk/api/model/VKAttachments;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$500(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Z)V

    iget-object p1, p1, Lcom/vk/sdk/api/VKResponse;->parsedModel:Ljava/lang/Object;

    check-cast p1, Lcom/vk/sdk/api/model/VKWallPostResult;

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$200(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$200(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    iget p1, p1, Lcom/vk/sdk/api/model/VKWallPostResult;->post_id:I

    invoke-interface {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;->onVkShareComplete(I)V

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$000(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;

    move-result-object p1

    invoke-interface {p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$500(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Z)V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$200(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$4;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$200(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;->onVkShareError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
