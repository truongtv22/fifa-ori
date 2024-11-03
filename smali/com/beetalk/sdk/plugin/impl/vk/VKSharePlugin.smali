.class public Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;
.super Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;
.source "VKSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin<",
        "Lcom/beetalk/sdk/vk/VKPostItem;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->onResultError(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method private onResultError(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected executeActionAuthorized(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;)V
    .locals 6

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;-><init>()V

    iget-object v1, p2, Lcom/beetalk/sdk/vk/VKPostItem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->setText(Ljava/lang/CharSequence;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    iget-object v1, p2, Lcom/beetalk/sdk/vk/VKPostItem;->imageData:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/beetalk/sdk/vk/VKPostItem;->imageData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    :try_start_0
    iget-object v1, p2, Lcom/beetalk/sdk/vk/VKPostItem;->imageData:[B

    iget-object v3, p2, Lcom/beetalk/sdk/vk/VKPostItem;->imageData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/vk/sdk/api/photo/VKUploadImage;

    new-instance v4, Lcom/vk/sdk/api/photo/VKUploadImage;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v5}, Lcom/vk/sdk/api/photo/VKImageParameters;->jpgImage(F)Lcom/vk/sdk/api/photo/VKImageParameters;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/vk/sdk/api/photo/VKUploadImage;-><init>(Landroid/graphics/Bitmap;Lcom/vk/sdk/api/photo/VKImageParameters;)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->setAttachmentImages([Lcom/vk/sdk/api/photo/VKUploadImage;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    goto :goto_0

    :catch_0
    const-string p2, "failed to decode bitmap from byte array"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->DECODE_IMAGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->onResultError(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    return-void

    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/beetalk/sdk/vk/VKPostItem;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    iget-object p2, p2, Lcom/beetalk/sdk/vk/VKPostItem;->link:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->setAttachmentLink(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    :cond_1
    new-instance p2, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;

    invoke-direct {p2, p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->setShareDialogListener(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder$VKShareDialogListener;)Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;

    const-string p2, "launching vk share dialog"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "VK_SHARE_DIALOG"

    invoke-virtual {v0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogBuilder;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic executeActionAuthorized(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/beetalk/sdk/vk/VKPostItem;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->executeActionAuthorized(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "vk.share"

    return-object v0
.end method
