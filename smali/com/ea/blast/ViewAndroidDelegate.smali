.class Lcom/ea/blast/ViewAndroidDelegate;
.super Ljava/lang/Object;
.source "ViewAndroidDelegate.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/blast/ViewAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public SetViewFrame(ILjava/lang/Object;IIIIZ)V
    .locals 8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Set View Frame - App Thread: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/blast/ViewAndroidDelegate;->Log(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    instance-of p1, p2, Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/ea/blast/ViewAndroidDelegate$1;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p7

    move v4, p5

    move v5, p6

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/ViewAndroidDelegate$1;-><init>(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/Object;ZIIII)V

    sget-object p2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {p2, p1}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "...Set View Frame - App Thread: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/blast/ViewAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method
