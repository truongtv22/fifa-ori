.class public final synthetic Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

.field public final synthetic f$1:Lcom/garena/android/share/model/ShareContent;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;Lcom/garena/android/share/model/ShareContent;Landroid/app/Activity;Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$1:Lcom/garena/android/share/model/ShareContent;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iput-object p4, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$3:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$1:Lcom/garena/android/share/model/ShareContent;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda0;->f$3:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->lambda$executeAction$0$com-beetalk-sdk-plugin-impl-tiktok-TiktokVideoSharePlugin(Lcom/garena/android/share/model/ShareContent;Landroid/app/Activity;Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;Lbolts/Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
