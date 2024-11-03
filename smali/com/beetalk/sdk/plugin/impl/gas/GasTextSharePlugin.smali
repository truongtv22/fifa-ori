.class public Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "GasTextSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Lcom/beetalk/sdk/GGTextShare;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/GGTextShare;)V
    .locals 4

    if-nez p2, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/beetalk/sdk/GGPlatform;->GGIsPlatformInstalled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->isSupportGasShare(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.garena.gas"

    invoke-static {v1, p1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "com.garena.gaslite"

    :goto_0
    const-string v2, "com.garena.gameauth.GPProxyCommonActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.garena.gas.intent.GAME_SHARE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.MediaTagName"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getMediaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.Title"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.Url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.garena.msdk.share.OpenId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.Description"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.ItemType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.ShareTo"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getScene()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.ImgData"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getThumbData()[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.ImgDataLength"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getThumDataLength()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.garena.msdk.share.GameId"

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGTextShare;->getGameId()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.garena.msdk.share.AutoAuth"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.garena.msdk.share.SDKVer"

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->GGGetSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.garena.msdk.share.SDKEnv"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;->publishResult(Landroid/app/Activity;I)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/beetalk/sdk/GGTextShare;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/GGTextShare;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "gas.share.text"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb4e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    :goto_0
    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p3, ""

    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
