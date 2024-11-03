.class public Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
.super Landroid/app/DialogFragment;
.source "VKShareDialog.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog$VKShareDialogListener;
    }
.end annotation


# instance fields
.field private final mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCancel()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onCancel()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->onStart()V

    return-void
.end method

.method setArguments(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->attachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->attachmentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->linkTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->linkUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->linkTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->linkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->existingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)V

    return-object p0
.end method

.method public setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)V

    return-object p0
.end method

.method public setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog$VKShareDialogListener;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->mDelegate:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)V

    return-object p0
.end method
