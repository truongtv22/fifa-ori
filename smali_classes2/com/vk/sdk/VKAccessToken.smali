.class public Lcom/vk/sdk/VKAccessToken;
.super Ljava/lang/Object;
.source "VKAccessToken.java"


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final HTTPS_REQUIRED:Ljava/lang/String; = "https_required"

.field public static final SCOPE:Ljava/lang/String; = "scope"

.field public static final SECRET:Ljava/lang/String; = "secret"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field private static final VK_SDK_ACCESS_TOKEN_PREF_KEY:Ljava/lang/String; = "VK_SDK_ACCESS_TOKEN_PLEASE_DONT_TOUCH"

.field private static volatile sCurrentToken:Lcom/vk/sdk/VKAccessToken;


# instance fields
.field public accessToken:Ljava/lang/String;

.field public created:J

.field public email:Ljava/lang/String;

.field public expiresIn:I

.field public httpsRequired:Z

.field private scope:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public secret:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/vk/sdk/VKAccessToken;->expiresIn:I

    iput-object v0, p0, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/VKAccessToken;->secret:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/vk/sdk/VKAccessToken;->created:J

    iput-object v0, p0, Lcom/vk/sdk/VKAccessToken;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/VKAccessToken;->scope:Ljava/util/Map;

    return-void
.end method

.method public static currentToken()Lcom/vk/sdk/VKAccessToken;
    .locals 3

    sget-object v0, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    if-nez v0, :cond_1

    const-class v0, Lcom/vk/sdk/VKAccessToken;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/vk/sdk/VKUIHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "VK_SDK_ACCESS_TOKEN_PLEASE_DONT_TOUCH"

    invoke-static {v1, v2}, Lcom/vk/sdk/VKAccessToken;->tokenFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/vk/sdk/VKAccessToken;

    move-result-object v1

    sput-object v1, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

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
    sget-object v0, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    return-object v0
.end method

.method public static removeTokenAtKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static replaceToken(Landroid/content/Context;Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    sput-object p1, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    sget-object p1, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    if-eqz p1, :cond_0

    sget-object p0, Lcom/vk/sdk/VKAccessToken;->sCurrentToken:Lcom/vk/sdk/VKAccessToken;

    invoke-virtual {p0}, Lcom/vk/sdk/VKAccessToken;->save()V

    goto :goto_0

    :cond_0
    const-string p1, "VK_SDK_ACCESS_TOKEN_PLEASE_DONT_TOUCH"

    invoke-static {p0, p1}, Lcom/vk/sdk/VKAccessToken;->removeTokenAtKey(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static tokenFromFile(Ljava/lang/String;)Lcom/vk/sdk/VKAccessToken;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/vk/sdk/util/VKUtil;->fileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vk/sdk/VKAccessToken;->tokenFromUrlString(Ljava/lang/String;)Lcom/vk/sdk/VKAccessToken;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static tokenFromParameters(Ljava/util/Map;)Lcom/vk/sdk/VKAccessToken;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vk/sdk/VKAccessToken;"
        }
    .end annotation

    const-string v0, "created"

    const-string v1, "https_required"

    const-string v2, "expires_in"

    const/4 v3, 0x0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v4, Lcom/vk/sdk/VKAccessToken;

    invoke-direct {v4}, Lcom/vk/sdk/VKAccessToken;-><init>()V

    :try_start_0
    const-string v5, "access_token"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    const-string v5, "user_id"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    const-string v5, "secret"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/vk/sdk/VKAccessToken;->secret:Ljava/lang/String;

    const-string v5, "email"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/vk/sdk/VKAccessToken;->email:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/vk/sdk/VKAccessToken;->expiresIn:I

    :cond_1
    const-string v2, "scope"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v8, v2

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v9, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iput-object v7, v4, Lcom/vk/sdk/VKAccessToken;->scope:Ljava/util/Map;

    :cond_3
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v4, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    goto :goto_1

    :cond_4
    iget-object v1, v4, Lcom/vk/sdk/VKAccessToken;->secret:Ljava/lang/String;

    if-nez v1, :cond_5

    iput-boolean v6, v4, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    :cond_5
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/vk/sdk/VKAccessToken;->created:J

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v4, Lcom/vk/sdk/VKAccessToken;->created:J

    :goto_2
    iget-object p0, v4, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_7

    move-object v3, v4

    :catch_0
    :cond_7
    :goto_3
    return-object v3
.end method

.method public static tokenFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/vk/sdk/VKAccessToken;
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vk/sdk/VKAccessToken;->tokenFromUrlString(Ljava/lang/String;)Lcom/vk/sdk/VKAccessToken;

    move-result-object p0

    return-object p0
.end method

.method public static tokenFromUrlString(Ljava/lang/String;)Lcom/vk/sdk/VKAccessToken;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/vk/sdk/util/VKUtil;->explodeQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/vk/sdk/VKAccessToken;->tokenFromParameters(Ljava/util/Map;)Lcom/vk/sdk/VKAccessToken;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copyWithToken(Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;
    .locals 1

    invoke-virtual {p0}, Lcom/vk/sdk/VKAccessToken;->tokenParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vk/sdk/VKAccessToken;->tokenParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/vk/sdk/VKAccessToken;->tokenFromParameters(Ljava/util/Map;)Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    return-object p1
.end method

.method public varargs hasScope([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/vk/sdk/VKAccessToken;->scope:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isExpired()Z
    .locals 5

    iget v0, p0, Lcom/vk/sdk/VKAccessToken;->expiresIn:I

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/vk/sdk/VKAccessToken;->created:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public save()V
    .locals 2

    invoke-static {}, Lcom/vk/sdk/VKUIHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VK_SDK_ACCESS_TOKEN_PLEASE_DONT_TOUCH"

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/VKAccessToken;->saveTokenToSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public saveTokenToFile(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vk/sdk/VKAccessToken;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vk/sdk/util/VKUtil;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveTokenToSharedPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vk/sdk/VKAccessToken;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected serialize()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/vk/sdk/VKAccessToken;->tokenParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/sdk/util/VKStringJoiner;->joinParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tokenParams()Ljava/util/Map;
    .locals 4
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

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vk/sdk/VKAccessToken;->expiresIn:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "expires_in"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user_id"

    iget-object v3, p0, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/vk/sdk/VKAccessToken;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "created"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vk/sdk/VKAccessToken;->scope:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/vk/sdk/VKAccessToken;->secret:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "secret"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    if-eqz v1, :cond_2

    const-string v1, "https_required"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/VKAccessToken;->email:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
