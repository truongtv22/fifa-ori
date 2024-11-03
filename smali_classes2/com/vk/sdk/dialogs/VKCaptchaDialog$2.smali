.class Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;
.super Ljava/lang/Object;
.source "VKCaptchaDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKCaptchaDialog;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$000(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
