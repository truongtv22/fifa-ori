.class Lcom/beetalk/sdk/GGPlatform$8;
.super Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;
.source "GGPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->GGFeedback(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$8;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GGPlatform$8;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GGPlatform$8;->openId:Ljava/lang/String;

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$8;->feedback:Ljava/lang/String;

    return-void
.end method
