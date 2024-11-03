.class public Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBReelsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_APP_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field private static final EXTRA_STICKER:Ljava/lang/String; = "interactive_asset_uri"

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.facebook.reels.SHARE_TO_REEL"


# instance fields
.field private mVideoMimeType:Ljava/lang/String;

.field private mVideoUri:Landroid/net/Uri;

.field private stickerUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->mVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->mVideoMimeType:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->stickerUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->stickerUri:Landroid/net/Uri;

    :goto_0
    const-string p2, "com.facebook.katana"

    invoke-static {p2, p1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "Facebook App is not installed."

    invoke-virtual {p0, v0, v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->onSuccess(Landroid/app/Activity;)V

    return-void

    :cond_4
    :goto_1
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;I)V

    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->executeAction(Landroid/app/Activity;Landroid/util/Pair;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.reels"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb57

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public onFBActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/plugin/GGPluginActivity;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onFBActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/plugin/GGPluginActivity;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "Successfully shared"

    invoke-virtual {p0, p4, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "Share cancelled"

    invoke-virtual {p0, p4, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "Share Failed"

    invoke-virtual {p0, p4, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.reels.SHARE_TO_REEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->getMetadataFBAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->mVideoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->mVideoMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->stickerUri:Landroid/net/Uri;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, "interactive_asset_uri"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.facebook.katana"

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->stickerUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v3, v2}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "Share Failed"

    invoke-virtual {p0, p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
