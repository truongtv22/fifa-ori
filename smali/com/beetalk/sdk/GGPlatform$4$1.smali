.class Lcom/beetalk/sdk/GGPlatform$4$1;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform$4;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGPlatform$4;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGPlatform$4;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {p1}, Lcom/beetalk/sdk/helper/StringUtils;->responseHasError(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$4;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object v0, v0, Lcom/beetalk/sdk/GGPlatform$4;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object v1, v1, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/GGPlatform;->access$300(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "bind successful"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-string p1, "bind failed"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$4;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object v0, v0, Lcom/beetalk/sdk/GGPlatform$4;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object v1, v1, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/GGPlatform;->access$300(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$4;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object v0, v0, Lcom/beetalk/sdk/GGPlatform$4;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$4$1;->this$0:Lcom/beetalk/sdk/GGPlatform$4;

    iget-object v1, v1, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/GGPlatform;->access$300(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_0
    return-void
.end method
