.class public final Lcom/linecorp/linesdk/api/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/api/LineApiClient;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/linecorp/linesdk/a/a/b;

.field private final c:Lcom/linecorp/linesdk/a/a/d;

.field private final d:Lcom/linecorp/linesdk/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/a/a/b;Lcom/linecorp/linesdk/a/a/d;Lcom/linecorp/linesdk/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/a/b;->b:Lcom/linecorp/linesdk/a/a/b;

    iput-object p3, p0, Lcom/linecorp/linesdk/api/a/b;->c:Lcom/linecorp/linesdk/a/a/d;

    iput-object p4, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    return-void
.end method


# virtual methods
.method public final getCurrentAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/a/a;->b()Lcom/linecorp/linesdk/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "The cached access token does not exist."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v7, Lcom/linecorp/linesdk/LineAccessToken;

    iget-object v2, v0, Lcom/linecorp/linesdk/a/d;->a:Ljava/lang/String;

    iget-wide v3, v0, Lcom/linecorp/linesdk/a/d;->b:J

    iget-wide v5, v0, Lcom/linecorp/linesdk/a/d;->c:J

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-static {v7}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getProfile()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3
    .annotation runtime Lcom/linecorp/linesdk/api/a/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/a/a;->b()Lcom/linecorp/linesdk/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/a/b;->c:Lcom/linecorp/linesdk/a/a/d;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/a/a/d;->a(Lcom/linecorp/linesdk/a/d;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public final logout()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/a/a;->b()Lcom/linecorp/linesdk/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/a/b;->b:Lcom/linecorp/linesdk/a/a/b;

    iget-object v2, v1, Lcom/linecorp/linesdk/a/a/b;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "oauth"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "revoke"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "refresh_token"

    iget-object v0, v0, Lcom/linecorp/linesdk/a/d;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, v1, Lcom/linecorp/linesdk/a/a/b;->g:Lcom/linecorp/linesdk/a/a/a/a;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/linecorp/linesdk/a/a/b;->e:Lcom/linecorp/linesdk/a/a/a/c;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/linecorp/linesdk/a/a/a/a;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/a/a/a/c;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/a/a;->a()V

    :cond_1
    return-object v0
.end method

.method public final refreshAccessToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineAccessToken;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/a/a;->b()Lcom/linecorp/linesdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/linecorp/linesdk/a/d;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/a/b;->b:Lcom/linecorp/linesdk/a/a/b;

    iget-object v2, p0, Lcom/linecorp/linesdk/api/a/b;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/linecorp/linesdk/a/a/b;->f:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "oauth"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "accessToken"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "grant_type"

    const-string v6, "refresh_token"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/linecorp/linesdk/a/d;->d:Ljava/lang/String;

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "client_id"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/linecorp/linesdk/a/a/b;->g:Lcom/linecorp/linesdk/a/a/a/a;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    sget-object v5, Lcom/linecorp/linesdk/a/a/b;->d:Lcom/linecorp/linesdk/a/a/a/c;

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/linecorp/linesdk/a/a/a/a;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/a/a/a/c;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/a/g;

    iget-object v2, v1, Lcom/linecorp/linesdk/a/g;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/linecorp/linesdk/a/d;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/linecorp/linesdk/a/g;->c:Ljava/lang/String;

    :goto_0
    move-object v8, v0

    new-instance v0, Lcom/linecorp/linesdk/a/d;

    iget-object v3, v1, Lcom/linecorp/linesdk/a/g;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/linecorp/linesdk/a/g;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/a/d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object v1, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v1, v0}, Lcom/linecorp/linesdk/a/a;->a(Lcom/linecorp/linesdk/a/d;)V

    new-instance v1, Lcom/linecorp/linesdk/LineAccessToken;

    iget-object v3, v0, Lcom/linecorp/linesdk/a/d;->a:Ljava/lang/String;

    iget-wide v4, v0, Lcom/linecorp/linesdk/a/d;->b:J

    iget-wide v6, v0, Lcom/linecorp/linesdk/a/d;->c:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    invoke-static {v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token or refresh token is not found."

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method

.method public final verifyToken()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/linecorp/linesdk/LineApiResponse<",
            "Lcom/linecorp/linesdk/LineCredential;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/a/a;->b()Lcom/linecorp/linesdk/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/linecorp/linesdk/api/a/b;->b:Lcom/linecorp/linesdk/a/a/b;

    iget-object v2, v1, Lcom/linecorp/linesdk/a/a/b;->f:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "oauth"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "verify"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "access_token"

    iget-object v5, v0, Lcom/linecorp/linesdk/a/d;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/linecorp/linesdk/a/a/b;->g:Lcom/linecorp/linesdk/a/a/a/a;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/linecorp/linesdk/a/a/b;->c:Lcom/linecorp/linesdk/a/a/a/c;

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/linecorp/linesdk/a/a/a/a;->a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/a/a/a/c;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v0

    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->createAsError(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linecorp/linesdk/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, p0, Lcom/linecorp/linesdk/api/a/b;->d:Lcom/linecorp/linesdk/a/a;

    new-instance v12, Lcom/linecorp/linesdk/a/d;

    iget-object v3, v0, Lcom/linecorp/linesdk/a/d;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/linecorp/linesdk/a/b;->a:J

    iget-object v8, v0, Lcom/linecorp/linesdk/a/d;->d:Ljava/lang/String;

    move-object v2, v12

    move-wide v6, v9

    invoke-direct/range {v2 .. v8}, Lcom/linecorp/linesdk/a/d;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/linecorp/linesdk/a/a;->a(Lcom/linecorp/linesdk/a/d;)V

    new-instance v8, Lcom/linecorp/linesdk/LineCredential;

    new-instance v11, Lcom/linecorp/linesdk/LineAccessToken;

    iget-object v3, v0, Lcom/linecorp/linesdk/a/d;->a:Ljava/lang/String;

    iget-wide v4, v1, Lcom/linecorp/linesdk/a/b;->a:J

    move-object v2, v11

    invoke-direct/range {v2 .. v7}, Lcom/linecorp/linesdk/LineAccessToken;-><init>(Ljava/lang/String;JJ)V

    iget-object v0, v1, Lcom/linecorp/linesdk/a/b;->b:Ljava/util/List;

    invoke-direct {v8, v11, v0}, Lcom/linecorp/linesdk/LineCredential;-><init>(Lcom/linecorp/linesdk/LineAccessToken;Ljava/util/List;)V

    invoke-static {v8}, Lcom/linecorp/linesdk/LineApiResponse;->createAsSuccess(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    return-object v0
.end method
