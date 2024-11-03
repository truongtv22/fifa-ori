.class public Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;
.source "FBFallbackSharePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.share.fallback"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected needCheckFBInstalled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/beetalk/sdk/facebook/FBPostItem;

    :try_start_0
    iget-object v1, v0, Lcom/beetalk/sdk/facebook/FBPostItem;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/beetalk/sdk/facebook/FBPostItem;->link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;->getShareDialog(Landroid/app/Activity;)Lcom/facebook/share/widget/ShareDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    return-void

    :catch_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Error Uri."

    invoke-virtual {p0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
