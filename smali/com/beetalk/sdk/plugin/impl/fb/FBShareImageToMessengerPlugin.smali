.class public Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBShareImageToMessengerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "[B",
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


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.messenger.send.image"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb56

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->mData:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    const-string v1, "The content url is empty"

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_0
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-static {v0}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->mData:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->mData:Ljava/lang/Object;

    check-cast v2, [B

    array-length v2, v2

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to create bitmap: out of memory"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v1, p1}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin$2;

    invoke-direct {v3, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin$2;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Failed to create bitmap"

    invoke-virtual {p0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Cannot show Messenger dialog"

    invoke-virtual {p0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
