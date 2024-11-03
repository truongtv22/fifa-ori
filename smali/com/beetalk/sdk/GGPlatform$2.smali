.class Lcom/beetalk/sdk/GGPlatform$2;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field final synthetic val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$platformToken:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$platformToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, "error"

    invoke-static {p1}, Lcom/beetalk/sdk/helper/StringUtils;->responseHasError(Lorg/json/JSONObject;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "open_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "expiry_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v3, Lcom/beetalk/sdk/data/AuthToken;

    sget-object v4, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v5, 0x4

    invoke-direct {v3, v0, v4, v5}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {v3, v1}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/beetalk/sdk/cache/StorageCache;->putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$platformToken:Lcom/beetalk/sdk/data/AuthToken;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, v3, v0}, Lcom/beetalk/sdk/GGPlatform;->access$200(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "grand token result: "

    if-eqz v1, :cond_4

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "auth_error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    :cond_3
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$2;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
