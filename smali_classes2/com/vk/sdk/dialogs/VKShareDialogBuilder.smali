.class public Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
.super Ljava/lang/Object;
.source "VKShareDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;
    }
.end annotation


# instance fields
.field attachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

.field attachmentText:Ljava/lang/CharSequence;

.field existingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

.field linkTitle:Ljava/lang/String;

.field linkUrl:Ljava/lang/String;

.field listener:Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->attachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    return-object p0
.end method

.method public setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->linkTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->linkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setShareDialogListener(Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->listener:Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->attachmentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogBuilder;->existingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    return-object p0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/vk/sdk/dialogs/VKShareDialogNative;

    invoke-direct {v0, p0}, Lcom/vk/sdk/dialogs/VKShareDialogNative;-><init>(Lcom/vk/sdk/dialogs/VKShareDialogBuilder;)V

    invoke-virtual {v0, p1, p2}, Lcom/vk/sdk/dialogs/VKShareDialogNative;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/vk/sdk/dialogs/VKShareDialog;

    invoke-direct {v0, p0}, Lcom/vk/sdk/dialogs/VKShareDialog;-><init>(Lcom/vk/sdk/dialogs/VKShareDialogBuilder;)V

    invoke-virtual {v0, p1, p2}, Lcom/vk/sdk/dialogs/VKShareDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
