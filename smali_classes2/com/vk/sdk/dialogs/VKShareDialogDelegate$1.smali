.class Lcom/vk/sdk/dialogs/VKShareDialogDelegate$1;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$1;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$1;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$000(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;

    move-result-object p1

    invoke-interface {p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;->dismissAllowingStateLoss()V

    return-void
.end method
