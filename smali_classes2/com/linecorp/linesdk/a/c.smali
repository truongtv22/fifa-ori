.class public final Lcom/linecorp/linesdk/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/linecorp/a/a/a/b;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/linecorp/a/a/a/b;

    const-string v1, "com.linecorp.linesdk.sharedpreference.encryptionsalt"

    invoke-direct {v0, v1}, Lcom/linecorp/a/a/a/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/linecorp/linesdk/a/c;->a:Lcom/linecorp/a/a/a/b;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/linecorp/linesdk/a/c;->b:Z

    return-void
.end method

.method public static a()Lcom/linecorp/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/a/c;->a:Lcom/linecorp/a/a/a/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/linecorp/linesdk/a/c;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/linecorp/linesdk/a/c;->b:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/linecorp/linesdk/a/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/a/c$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/linecorp/a/a/a/b;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/a/c;->a:Lcom/linecorp/a/a/a/b;

    return-object v0
.end method
