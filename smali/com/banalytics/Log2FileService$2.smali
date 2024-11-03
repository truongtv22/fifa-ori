.class Lcom/banalytics/Log2FileService$2;
.super Ljava/lang/Object;
.source "Log2FileService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/banalytics/Log2FileService;->flushBuff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/banalytics/Log2FileService$LogInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/banalytics/Log2FileService;


# direct methods
.method constructor <init>(Lcom/banalytics/Log2FileService;)V
    .locals 0

    iput-object p1, p0, Lcom/banalytics/Log2FileService$2;->this$0:Lcom/banalytics/Log2FileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/banalytics/Log2FileService$LogInfo;Lcom/banalytics/Log2FileService$LogInfo;)I
    .locals 5

    iget-wide v0, p1, Lcom/banalytics/Log2FileService$LogInfo;->time:J

    iget-wide v2, p2, Lcom/banalytics/Log2FileService$LogInfo;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-wide v0, p1, Lcom/banalytics/Log2FileService$LogInfo;->time:J

    iget-wide p1, p2, Lcom/banalytics/Log2FileService$LogInfo;->time:J

    sub-long/2addr v0, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/banalytics/Log2FileService$LogInfo;

    check-cast p2, Lcom/banalytics/Log2FileService$LogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/banalytics/Log2FileService$2;->compare(Lcom/banalytics/Log2FileService$LogInfo;Lcom/banalytics/Log2FileService$LogInfo;)I

    move-result p1

    return p1
.end method
