.class Lcom/vk/sdk/dialogs/VKCaptchaDialog$1;
.super Ljava/lang/Object;
.source "VKCaptchaDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$1;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
