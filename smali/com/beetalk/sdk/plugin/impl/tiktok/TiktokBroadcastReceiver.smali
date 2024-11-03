.class public Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TiktokBroadcastReceiver.java"


# static fields
.field private static final TARGET_ACTION:Ljava/lang/String; = "com.aweme.opensdk.action.stay.in.dy"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPlugin()Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "tiktok.share"

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getPlugin(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    return-object v0
.end method

.method public static register(Landroid/app/Activity;)Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.aweme.opensdk.action.stay.in.dy"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/beetalk/sdk/exts/ContextExtsKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;->getPlugin()Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.aweme.opensdk.action.stay.in.dy"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->handleUserInTiktokResponse()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->handleUnknownBroadcastError()V

    :goto_0
    return-void
.end method
