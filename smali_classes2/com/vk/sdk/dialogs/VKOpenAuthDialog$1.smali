.class Lcom/vk/sdk/dialogs/VKOpenAuthDialog$1;
.super Ljava/lang/Object;
.source "VKOpenAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->show(Landroid/app/Activity;Landroid/os/Bundle;ILcom/vk/sdk/api/VKError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$1;->this$0:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
