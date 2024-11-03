.class public abstract Lcom/beetalk/sdk/cache/StorageCache;
.super Ljava/lang/Object;
.source "StorageCache.java"


# static fields
.field public static final GUEST_PASSWORD_KEY:Ljava/lang/String; = "com.garena.msdk.guest_password"

.field public static final GUEST_PASSWORD_KEY_SANDBOX:Ljava/lang/String; = "com.garena.msdk.guest_password_sandbox"

.field public static final GUEST_TOKEN_KEY:Ljava/lang/String; = "com.garena.msdk.guest_token"

.field public static final GUEST_TOKEN_KEY_SANDBOX:Ljava/lang/String; = "com.garena.msdk.guest_token_sandbox"

.field public static final GUEST_UID_KEY:Ljava/lang/String; = "com.garena.msdk.guest_uid"

.field public static final GUEST_UID_KEY_SANDBOX:Ljava/lang/String; = "com.garena.msdk.guest_uid_sandbox"

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.garena.msdk.token"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getGuestTokenKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "com.garena.msdk.guest_token_sandbox"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v0, "com.garena.msdk.guest_token"

    return-object v0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public clearSession()V
    .locals 1

    const-string v0, "com.garena.msdk.token"

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    const-string v0, "com.garena.msdk.guest_token"

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    const-string v0, "com.garena.msdk.guest_token_sandbox"

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGuestInfo()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method public getGuestPassword()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGuestPasswordKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "com.garena.msdk.guest_password_sandbox"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v0, "com.garena.msdk.guest_password"

    return-object v0
.end method

.method public getGuestToken()Lcom/beetalk/sdk/data/AuthToken;
    .locals 2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestTokenKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/beetalk/sdk/data/AuthToken;->fromJson(Ljava/lang/String;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getGuestUID()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGuestUidKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "com.garena.msdk.guest_uid_sandbox"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v0, "com.garena.msdk.guest_uid"

    return-object v0
.end method

.method public getToken()Lcom/beetalk/sdk/data/AuthToken;
    .locals 2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->load()Ljava/util/Map;

    move-result-object v0

    const-string v1, "com.garena.msdk.token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/beetalk/sdk/data/AuthToken;->fromJson(Ljava/lang/String;)Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    return-object v0
.end method

.method public abstract load()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public putGuestInfo(JLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->save(Ljava/util/Map;)V

    return-void
.end method

.method public putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestTokenKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/beetalk/sdk/data/AuthToken;->toJsonString(Lcom/beetalk/sdk/data/AuthToken;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->save(Ljava/util/Map;)V

    return-void
.end method

.method public putToken(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 2

    const-string v0, "com.garena.msdk.token"

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/beetalk/sdk/data/AuthToken;->toJsonString(Lcom/beetalk/sdk/data/AuthToken;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->save(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public removeGuestToken()V
    .locals 1

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestTokenKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public abstract save(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
