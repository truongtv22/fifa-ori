.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->dismissAllowingStateLoss()V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareCancel()V

    :cond_0
    return-void
.end method
