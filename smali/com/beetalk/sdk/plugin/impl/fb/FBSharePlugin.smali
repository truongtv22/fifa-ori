.class public Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "Lcom/beetalk/sdk/facebook/FBPostItem;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->needCheckFBInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.katana"

    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "Facebook App is not installed."

    invoke-virtual {p0, v0, v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->executeAction(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/beetalk/sdk/facebook/FBPostItem;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.share"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getShareDialog(Landroid/app/Activity;)Lcom/facebook/share/widget/ShareDialog;
    .locals 3

    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;

    invoke-direct {v2, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-object v0
.end method

.method protected needCheckFBInstalled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 4

    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getShareDialog(Landroid/app/Activity;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/beetalk/sdk/facebook/FBPostItem;

    iget-object v2, v2, Lcom/beetalk/sdk/facebook/FBPostItem;->data:[B

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->mData:Ljava/lang/Object;

    check-cast v3, Lcom/beetalk/sdk/facebook/FBPostItem;

    iget-object v3, v3, Lcom/beetalk/sdk/facebook/FBPostItem;->data:[B

    array-length v3, v3

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Failed to create bitmap: out of memory"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    new-instance p1, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    new-instance v1, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Failed to create bitmap"

    invoke-virtual {p0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Facebook App is not installed."

    invoke-virtual {p0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
