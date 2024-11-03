.class Lcom/vk/sdk/dialogs/VKCaptchaDialog$3;
.super Ljava/lang/Object;
.source "VKCaptchaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$3;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$3;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p2}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$000(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
