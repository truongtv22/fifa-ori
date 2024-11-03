.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;,
        Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SHARE_IMAGES_KEY:Ljava/lang/String; = "ShareImages"

.field private static final SHARE_LINK_KEY:Ljava/lang/String; = "ShareLink"

.field private static final SHARE_PHOTO_CORNER_RADIUS:I = 0x3

.field private static final SHARE_PHOTO_HEIGHT:I = 0x64

.field private static final SHARE_PHOTO_MARGIN_LEFT:I = 0xa

.field private static final SHARE_TEXT_KEY:Ljava/lang/String; = "ShareText"

.field private static final SHARE_UPLOADED_IMAGES_KEY:Ljava/lang/String; = "ShareUploadedImages"


# instance fields
.field private final dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

.field private mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

.field private mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

.field private mAttachmentText:Ljava/lang/CharSequence;

.field private mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

.field private mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

.field private mPhotoLayout:Landroid/widget/LinearLayout;

.field private mPhotoScroll:Landroid/widget/HorizontalScrollView;

.field private mSendButton:Landroid/widget/Button;

.field private mSendProgress:Landroid/widget/ProgressBar;

.field private mShareTextField:Landroid/widget/EditText;

.field sendButtonPress:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->sendButtonPress:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->loadAndAddPhoto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->loadAndAddPhoto(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->addBitmapToPreview(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->setIsLoading(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)[Lcom/vk/sdk/api/photo/VKUploadImage;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    return-object p0
.end method

.method static synthetic access$700(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Lcom/vk/sdk/api/model/VKAttachments;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->makePostWithAttachments(Lcom/vk/sdk/api/model/VKAttachments;)V

    return-void
.end method

.method private addBitmapToPreview(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/vk/sdk/VKUIHelper;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method private loadAndAddPhoto(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->loadAndAddPhoto(Ljava/lang/String;I)V

    return-void
.end method

.method private loadAndAddPhoto(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/vk/sdk/api/httpClient/VKImageOperation;

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/httpClient/VKImageOperation;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->setImageOperationListener(Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;)V

    invoke-static {v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    return-void
.end method

.method private makePostWithAttachments(Lcom/vk/sdk/api/model/VKAttachments;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance p1, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {p1}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKAttachments;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vk/sdk/api/model/VKApiLink;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    iget-object v1, v1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/model/VKApiLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/vk/sdk/VKSdk;->getAccessToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v1

    iget-object v1, v1, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/vk/sdk/api/VKApi;->wall()Lcom/vk/sdk/api/methods/VKApiWall;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "owner_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const-string v4, "message"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const/4 v0, 0x4

    const-string v1, "attachments"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/vk/sdk/api/model/VKAttachments;->toAttachmentsString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v3}, Lcom/vk/sdk/api/VKParameters;->from([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/vk/sdk/api/methods/VKApiWall;->post(Lcom/vk/sdk/api/VKParameters;)Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$4;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest;->executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    return-void
.end method

.method private processExistingPhotos()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {v1}, Lcom/vk/sdk/api/model/VKPhotoArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    invoke-virtual {v1}, Lcom/vk/sdk/api/model/VKPhotoArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKApiPhoto;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/vk/sdk/api/model/VKApiPhoto;->owner_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vk/sdk/api/VKRequest;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "photo_sizes"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "photos"

    aput-object v4, v2, v3

    const-string v3, ","

    invoke-static {v0, v3}, Lcom/vk/sdk/util/VKStringJoiner;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/vk/sdk/api/VKParameters;->from([Ljava/lang/Object;)Lcom/vk/sdk/api/VKParameters;

    move-result-object v0

    const-class v2, Lcom/vk/sdk/api/model/VKPhotoArray;

    const-string v3, "photos.getById"

    invoke-direct {v1, v3, v0, v2}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$2;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/VKRequest;->executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    return-void
.end method

.method private setIsLoading(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;->onVkShareCancel()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$layout;->msdk_vk_share_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/garena/msdk/R$id;->close_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;

    invoke-direct {v3, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/garena/msdk/R$id;->sendButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/Button;

    sget v2, Lcom/garena/msdk/R$id;->sendProgress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendProgress:Landroid/widget/ProgressBar;

    sget v2, Lcom/garena/msdk/R$id;->imagesContainer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    sget v2, Lcom/garena/msdk/R$id;->shareText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    sget v2, Lcom/garena/msdk/R$id;->imagesScrollView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoScroll:Landroid/widget/HorizontalScrollView;

    sget v2, Lcom/garena/msdk/R$id;->attachmentLinkLayout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mSendButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->sendButtonPress:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    const-string v4, "ShareText"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "ShareLink"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    iput-object v3, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    const-string v3, "ShareImages"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, [Lcom/vk/sdk/api/photo/VKUploadImage;

    iput-object v3, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    const-string v3, "ShareUploadedImages"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKPhotoArray;

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentText:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    iget-object v6, v6, Lcom/vk/sdk/api/photo/VKUploadImage;->mImageData:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->addBitmapToPreview(Landroid/graphics/Bitmap;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->processExistingPhotos()V

    :cond_4
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    const/16 v4, 0x8

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mPhotoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    if-eqz p1, :cond_6

    sget p1, Lcom/garena/msdk/R$id;->linkTitle:I

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v4, Lcom/garena/msdk/R$id;->linkHost:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    iget-object v5, v5, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkTitle:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/vk/sdk/util/VKUtil;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    new-instance p1, Landroid/app/Dialog;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mShareTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    if-eqz v0, :cond_0

    const-string v1, "ShareLink"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    if-eqz v0, :cond_1

    const-string v1, "ShareImages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    if-eqz v0, :cond_2

    const-string v1, "ShareUploadedImages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/garena/msdk/R$dimen;->vk_share_dialog_view_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->dialogFragmentI:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;

    invoke-interface {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$DialogFragmentI;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentImages:[Lcom/vk/sdk/api/photo/VKUploadImage;

    return-void
.end method

.method public setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    invoke-direct {v0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentLink:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;

    return-void
.end method

.method public setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mListener:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mAttachmentText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setUploadedPhotos(Lcom/vk/sdk/api/model/VKPhotoArray;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->mExistingPhotos:Lcom/vk/sdk/api/model/VKPhotoArray;

    return-void
.end method
