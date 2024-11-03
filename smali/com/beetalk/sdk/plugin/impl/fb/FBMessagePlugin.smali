.class public Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBMessagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;",
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

    const-string v0, "facebook.message"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb44

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->mData:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v0, v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->contentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p1}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin$2;

    invoke-direct {v2, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin$2;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    new-instance v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->mData:Ljava/lang/Object;

    check-cast v2, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    iget-object v2, v2, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->contentUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    const-class v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v2}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Cannot show Messenger dialog"

    invoke-virtual {p0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->getId()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
