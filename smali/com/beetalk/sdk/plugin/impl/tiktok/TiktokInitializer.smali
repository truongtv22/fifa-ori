.class public Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokInitializer;
.super Ljava/lang/Object;
.source "TiktokInitializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initSDK(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->getTikTokSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->init(Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Tiktok Secret Key not found"

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/BBLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
