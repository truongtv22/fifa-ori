.class public Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;
.super Ljava/lang/Object;
.source "AuthImpl.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mClientKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mClientKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authorizeNative(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->checkArgs()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->toBundle(Landroid/os/Bundle;)V

    const-string v2, "_bytedance_params_client_key"

    iget-object v3, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mClientKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_bytedance_params_type_caller_package"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->callerLocalEntry:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "_bytedance_params_from_entry"

    invoke-virtual {v0, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "_aweme_params_caller_open_sdk_name"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_aweme_params_caller_open_sdk_version"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p4, Landroid/content/ComponentName;

    invoke-static {p2, p3}, Lcom/bytedance/sdk/open/tiktok/utils/AppUtil;->buildComponentClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    const/16 p3, 0x64

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public authorizeWeb(Ljava/lang/Class;Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;->toBundle(Landroid/os/Bundle;)V

    const-string p2, "_bytedance_params_client_key"

    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mClientKey:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "_bytedance_params_type_caller_package"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method
