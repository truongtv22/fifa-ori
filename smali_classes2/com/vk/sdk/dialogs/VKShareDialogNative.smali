.class public Lcom/vk/sdk/dialogs/VKShareDialogNative;
.super Landroid/app/DialogFragment;
.source "VKShareDialogNative.java"

# interfaces
.implements Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;


# instance fields
.field private mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-direct {v0, p0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;-><init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;)V

    iput-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    return-void
.end method

.method constructor <init>(Lcom/vk/sdk/dialogs/VKShareDialogBuilder;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-direct {v0, p0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;-><init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate$DialogFragmentI;)V

    iput-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->attachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    invoke-virtual {v0, v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->attachmentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->linkTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->linkUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->linkTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->existingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {v0, v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    iget-object p1, p1, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->listener:Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->setShareDialogListener(Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogNative;->mDelegate:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-virtual {v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->onStart()V

    return-void
.end method
