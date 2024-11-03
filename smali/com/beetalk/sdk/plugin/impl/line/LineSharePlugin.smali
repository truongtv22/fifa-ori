.class public Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "LineSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Lcom/beetalk/sdk/line/LinePostItem;",
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
.method public embedInActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/line/LinePostItem;)V
    .locals 4

    if-nez p2, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin$1;->$SwitchMap$com$beetalk$sdk$line$LinePostItem$PostType:[I

    iget-object v2, p2, Lcom/beetalk/sdk/line/LinePostItem;->type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-virtual {v2}, Lcom/beetalk/sdk/line/LinePostItem$PostType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    const-string v3, "android.intent.extra.STREAM"

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lcom/beetalk/sdk/line/LinePostItem;->videoPath:Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_2
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    iget-object p2, p2, Lcom/beetalk/sdk/line/LinePostItem;->imagePath:Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_4
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/beetalk/sdk/line/LinePostItem;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/beetalk/sdk/line/LinePostItem;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6
    iget-object v1, p2, Lcom/beetalk/sdk/line/LinePostItem;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/beetalk/sdk/line/LinePostItem;->link:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;->publishResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "line not installed"

    invoke-static {v0, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;->publishResult(Landroid/app/Activity;I)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/beetalk/sdk/line/LinePostItem;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/line/LinePostItem;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "line.share"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
