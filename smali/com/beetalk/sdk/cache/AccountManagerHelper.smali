.class public Lcom/beetalk/sdk/cache/AccountManagerHelper;
.super Lcom/beetalk/sdk/cache/StorageCache;
.source "AccountManagerHelper.java"


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String;

.field private static final FALLBACK_SHARED_PREF_FILE_NAME:Ljava/lang/String; = "com.garena.msdk.persist.fallback"

.field private static volatile sInstance:Lcom/beetalk/sdk/cache/AccountManagerHelper;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppVariant(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/StorageCache;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v0, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.garena.msdk.persist.fallback"

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    return-void
.end method

.method private getAccountFromAccountManager()Landroid/accounts/Account;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    sget-object v2, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->sInstance:Lcom/beetalk/sdk/cache/AccountManagerHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/beetalk/sdk/cache/AccountManagerHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/cache/AccountManagerHelper;->sInstance:Lcom/beetalk/sdk/cache/AccountManagerHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/beetalk/sdk/cache/AccountManagerHelper;

    invoke-direct {v1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;-><init>()V

    sput-object v1, Lcom/beetalk/sdk/cache/AccountManagerHelper;->sInstance:Lcom/beetalk/sdk/cache/AccountManagerHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->sInstance:Lcom/beetalk/sdk/cache/AccountManagerHelper;

    return-object v0
.end method

.method private loadFromAccountManager()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getAccountFromAccountManager()Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v3, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v4, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v5, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private loadFromSharedPreference()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->load()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private saveToAccountManager(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getAccountFromAccountManager()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroid/accounts/Account;

    sget-object v3, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v5, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p1, v2, v1, v0}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private sync(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-interface {p1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    cmp-long p2, v4, v2

    if-lez p2, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->save(Ljava/util/Map;)V

    :cond_a
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->saveToAccountManager(Ljava/util/Map;)V

    goto :goto_3

    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->saveToAccountManager(Ljava/util/Map;)V

    :cond_d
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->save(Ljava/util/Map;)V

    :cond_e
    :goto_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->clear()V

    :try_start_0
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getAccountFromAccountManager()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public deleteGuestInfoSafely()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->load()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->loadFromAccountManager()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/beetalk/sdk/cache/StorageCache;->deleteGuestInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v0, v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->remove(Ljava/lang/String;)V

    return-object v5

    :cond_3
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    return-object v4
.end method

.method public load()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->loadFromSharedPreference()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->loadFromAccountManager()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->sync(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public putGuestInfo(JLjava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getAccountFromAccountManager()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUidKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/accounts/Account;

    sget-object v2, Lcom/beetalk/sdk/cache/AccountManagerHelper;->ACCOUNT_TYPE:Ljava/lang/String;

    invoke-direct {p2, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p1, p2, p3, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public save(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/cache/AccountManagerHelper;->mFallbackStorage:Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->save(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->load()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->saveToAccountManager(Ljava/util/Map;)V

    return-void
.end method
