.class Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;
.super Ljava/lang/Object;
.source "VKCaptchaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$100(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Lcom/vk/sdk/api/VKError;

    move-result-object p1

    iget-object p1, p1, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKRequest;->cancel()V

    return-void
.end method
