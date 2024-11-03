.class final Lcom/linecorp/linesdk/auth/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/c$a;,
        Lcom/linecorp/linesdk/auth/internal/c$b;,
        Lcom/linecorp/linesdk/auth/internal/c$c;
    }
.end annotation


# instance fields
.field final a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

.field final b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

.field final c:Lcom/linecorp/linesdk/a/a/b;

.field final d:Lcom/linecorp/linesdk/a/a/d;

.field final e:Lcom/linecorp/linesdk/auth/internal/a;

.field final f:Lcom/linecorp/linesdk/a/a;

.field final g:[Ljava/lang/String;

.field final h:Lcom/linecorp/linesdk/auth/internal/d;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/a/a/b;Lcom/linecorp/linesdk/a/a/d;Lcom/linecorp/linesdk/auth/internal/a;Lcom/linecorp/linesdk/a/a;Lcom/linecorp/linesdk/auth/internal/d;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/c;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/c;->b:Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;

    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/c;->c:Lcom/linecorp/linesdk/a/a/b;

    iput-object p4, p0, Lcom/linecorp/linesdk/auth/internal/c;->d:Lcom/linecorp/linesdk/a/a/d;

    iput-object p5, p0, Lcom/linecorp/linesdk/auth/internal/c;->e:Lcom/linecorp/linesdk/auth/internal/a;

    iput-object p6, p0, Lcom/linecorp/linesdk/auth/internal/c;->f:Lcom/linecorp/linesdk/a/a;

    iput-object p7, p0, Lcom/linecorp/linesdk/auth/internal/c;->h:Lcom/linecorp/linesdk/auth/internal/d;

    iput-object p8, p0, Lcom/linecorp/linesdk/auth/internal/c;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/auth/internal/d;[Ljava/lang/String;)V
    .locals 9

    new-instance v3, Lcom/linecorp/linesdk/a/a/b;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getEndPointBaseUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/linecorp/linesdk/a/a/b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v4, Lcom/linecorp/linesdk/a/a/d;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getEndPointBaseUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/linecorp/linesdk/a/a/d;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v5, Lcom/linecorp/linesdk/auth/internal/a;

    invoke-direct {v5, p3}, Lcom/linecorp/linesdk/auth/internal/a;-><init>(Lcom/linecorp/linesdk/auth/internal/d;)V

    new-instance v6, Lcom/linecorp/linesdk/a/a;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/linecorp/linesdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/linecorp/linesdk/auth/internal/c;-><init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/a/a/b;Lcom/linecorp/linesdk/a/a/d;Lcom/linecorp/linesdk/auth/internal/a;Lcom/linecorp/linesdk/a/a;Lcom/linecorp/linesdk/auth/internal/d;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/linecorp/linesdk/LineApiResponse;)Lcom/linecorp/linesdk/auth/LineLoginResult;
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getResponseCode()Lcom/linecorp/linesdk/LineApiResponseCode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiResponse;->getErrorData()Lcom/linecorp/linesdk/LineApiError;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/linecorp/linesdk/auth/LineLoginResult;-><init>(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)V

    return-object v0
.end method
