.class Lcom/ea/nimble/LogImpl$GuardTask;
.super Ljava/lang/Object;
.source "LogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/LogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuardTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/LogImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/LogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/LogImpl;Lcom/ea/nimble/LogImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/LogImpl$GuardTask;-><init>(Lcom/ea/nimble/LogImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v0}, Lcom/ea/nimble/LogImpl;->access$000(Lcom/ea/nimble/LogImpl;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v0}, Lcom/ea/nimble/LogImpl;->access$000(Lcom/ea/nimble/LogImpl;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v2}, Lcom/ea/nimble/LogImpl;->access$100(Lcom/ea/nimble/LogImpl;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/LogImpl$GuardTask;->this$0:Lcom/ea/nimble/LogImpl;

    invoke-static {v0}, Lcom/ea/nimble/LogImpl;->access$200(Lcom/ea/nimble/LogImpl;)V

    :cond_0
    return-void
.end method
