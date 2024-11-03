.class public Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
.super Ljava/lang/Object;
.source "VKShareDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;
    }
.end annotation


# instance fields
.field attachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

.field attachmentText:Ljava/lang/CharSequence;

.field existingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

.field linkTitle:Ljava/lang/String;

.field linkUrl:Ljava/lang/String;

.field listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->attachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    return-object p0
.end method

.method public setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->linkTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->linkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->listener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->attachmentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->existingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    return-object p0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->setArguments(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
