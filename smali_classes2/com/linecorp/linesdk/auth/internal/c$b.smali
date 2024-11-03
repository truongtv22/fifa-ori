.class final Lcom/linecorp/linesdk/auth/internal/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/linecorp/linesdk/auth/internal/c;


# direct methods
.method private constructor <init>(Lcom/linecorp/linesdk/auth/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/linecorp/linesdk/auth/internal/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/linecorp/linesdk/auth/internal/c$b;-><init>(Lcom/linecorp/linesdk/auth/internal/c;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/c;->h:Lcom/linecorp/linesdk/auth/internal/d;

    iget v0, v0, Lcom/linecorp/linesdk/auth/internal/d;->d:I

    sget v1, Lcom/linecorp/linesdk/auth/internal/d$a;->c:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/c;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/c$b;->a:Lcom/linecorp/linesdk/auth/internal/c;

    iget-object v0, v0, Lcom/linecorp/linesdk/auth/internal/c;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;

    sget-object v1, Lcom/linecorp/linesdk/auth/LineLoginResult;->CANCEL:Lcom/linecorp/linesdk/auth/LineLoginResult;

    invoke-virtual {v0, v1}, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationActivity;->a(Lcom/linecorp/linesdk/auth/LineLoginResult;)V

    :cond_1
    :goto_0
    return-void
.end method
