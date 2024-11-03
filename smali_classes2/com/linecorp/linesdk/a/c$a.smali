.class final Lcom/linecorp/linesdk/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/a/c$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/linecorp/linesdk/a/c;->b()Lcom/linecorp/a/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/linecorp/linesdk/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/linecorp/a/a/a/b;->a(Landroid/content/Context;)V

    return-void
.end method
