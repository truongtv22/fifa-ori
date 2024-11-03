.class public Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;,
        Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "app.feedback"


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

.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V
    .locals 2

    iget-object v0, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->openId:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->feedback:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "app.feedback"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb4b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
