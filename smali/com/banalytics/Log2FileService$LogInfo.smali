.class Lcom/banalytics/Log2FileService$LogInfo;
.super Ljava/lang/Object;
.source "Log2FileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/banalytics/Log2FileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogInfo"
.end annotation


# instance fields
.field dirPath:Ljava/lang/String;

.field filePath:Ljava/lang/String;

.field forceFlush:Z

.field isFatal:Z

.field key:Ljava/lang/String;

.field log:Ljava/lang/String;

.field time:J


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "time"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/banalytics/Log2FileService$LogInfo;->time:J

    const-string v0, "log"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/banalytics/Log2FileService$LogInfo;->log:Ljava/lang/String;

    invoke-static {}, Lcom/banalytics/Log2FileService;->access$100()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/banalytics/Log2FileService$LogInfo;->time:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/banalytics/Log2FileService$LogInfo;->key:Ljava/lang/String;

    const-string v0, "isFatal"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/banalytics/Log2FileService$LogInfo;->isFatal:Z

    const-string v0, "forceFlush"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/banalytics/Log2FileService$LogInfo;->forceFlush:Z

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/banalytics/Log2FileService$LogInfo;->filePath:Ljava/lang/String;

    const-string v0, "dir_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/banalytics/Log2FileService$LogInfo;->dirPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Lcom/banalytics/Log2FileService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/banalytics/Log2FileService$LogInfo;-><init>(Landroid/content/Intent;)V

    return-void
.end method
