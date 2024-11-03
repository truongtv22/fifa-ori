.class Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;
.super Landroid/os/AsyncTask;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostFeedbackTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;",
        "Ljava/lang/Void;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;-><init>()V

    return-void
.end method

.method private onPostDone(Lcom/beetalk/sdk/plugin/PluginResult;)V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "app.feedback"

    invoke-virtual {v0, p1, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 5

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->appId:Ljava/lang/String;

    iget-object v2, p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->openId:Ljava/lang/String;

    iget-object v3, p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->feedback:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/beetalk/sdk/networking/service/AppService;->postFeedbackSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "Response From Server: Feedback %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_1

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;I)V

    return-object v1

    :cond_1
    new-instance p1, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;-><init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;->doInBackground([Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/beetalk/sdk/plugin/PluginResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;->onPostDone(Lcom/beetalk/sdk/plugin/PluginResult;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;->onPostExecute(Lcom/beetalk/sdk/plugin/PluginResult;)V

    return-void
.end method
