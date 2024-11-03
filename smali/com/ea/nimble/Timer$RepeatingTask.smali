.class Lcom/ea/nimble/Timer$RepeatingTask;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepeatingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/Timer;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/Timer;Lcom/ea/nimble/Timer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/Timer$RepeatingTask;-><init>(Lcom/ea/nimble/Timer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v0}, Lcom/ea/nimble/Timer;->access$000(Lcom/ea/nimble/Timer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v0}, Lcom/ea/nimble/Timer;->access$100(Lcom/ea/nimble/Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v0}, Lcom/ea/nimble/Timer;->access$200(Lcom/ea/nimble/Timer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v3}, Lcom/ea/nimble/Timer;->access$300(Lcom/ea/nimble/Timer;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Timer;->access$302(Lcom/ea/nimble/Timer;J)J

    invoke-static {}, Lcom/ea/nimble/Timer;->access$500()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/Timer$RepeatingTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v1}, Lcom/ea/nimble/Timer;->access$400(Lcom/ea/nimble/Timer;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
