.class public Lcom/beetalk/sdk/plugin/GGPluginActivity;
.super Landroid/app/Activity;
.source "GGPluginActivity.java"


# instance fields
.field private mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

.field private mPluginId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/GGPluginActivity;)Lcom/beetalk/sdk/plugin/GGPlugin;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    return-object p0
.end method

.method public static startWithPlugin(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/beetalk/sdk/plugin/GGPluginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "plugin_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPluginId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPluginId:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    check-cast v0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onFBActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/plugin/GGPluginActivity;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/GGPlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/GGPlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    invoke-virtual {p1, p0, p2, p3}, Lcom/beetalk/sdk/plugin/GGPlugin;->onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/GGPluginActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/GGPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plugin_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPluginId:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getPlugin(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity;->mPlugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/GGPluginActivity$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/GGPluginActivity$1;-><init>(Lcom/beetalk/sdk/plugin/GGPluginActivity;)V

    const-wide/16 v1, 0x8c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
