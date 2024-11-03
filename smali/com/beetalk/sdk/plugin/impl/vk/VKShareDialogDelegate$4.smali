.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->makePostWithAttachments(Lcom/vk/sdk/api/model/VKAttachments;)V
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

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$500(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V

    iget-object p1, p1, Lcom/vk/sdk/api/VKResponse;->parsedModel:Ljava/lang/Object;

    check-cast p1, Lcom/vk/sdk/api/model/VKWallPostResult;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    iget p1, p1, Lcom/vk/sdk/api/model/VKWallPostResult;->post_id:I

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareComplete(I)V

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$500(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method
