.class Lcom/beetalk/sdk/GGPlatform$3$1;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform$3;->onTokenResult(Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGPlatform$3;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGPlatform$3;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3$1;->this$0:Lcom/beetalk/sdk/GGPlatform$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, "bind result: "

    invoke-static {p1}, Lcom/beetalk/sdk/helper/StringUtils;->responseHasError(Lorg/json/JSONObject;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3$1;->this$0:Lcom/beetalk/sdk/GGPlatform$3;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$3;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3$1;->this$0:Lcom/beetalk/sdk/GGPlatform$3;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$3;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bind exception: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3$1;->this$0:Lcom/beetalk/sdk/GGPlatform$3;

    iget-object p1, p1, Lcom/beetalk/sdk/GGPlatform$3;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
