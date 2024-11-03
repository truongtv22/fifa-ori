.class Lcom/ea/nimble/Timer$SingleRunTask;
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
    name = "SingleRunTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/Timer;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/Timer$SingleRunTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/Timer;Lcom/ea/nimble/Timer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/Timer$SingleRunTask;-><init>(Lcom/ea/nimble/Timer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/Timer$SingleRunTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v0}, Lcom/ea/nimble/Timer;->access$000(Lcom/ea/nimble/Timer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Timer$SingleRunTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v0}, Lcom/ea/nimble/Timer;->access$100(Lcom/ea/nimble/Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Timer$SingleRunTask;->this$0:Lcom/ea/nimble/Timer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/Timer;->access$102(Lcom/ea/nimble/Timer;Z)Z

    iget-object v0, p0, Lcom/ea/nimble/Timer$SingleRunTask;->this$0:Lcom/ea/nimble/Timer;

    invoke-static {v0}, Lcom/ea/nimble/Timer;->access$200(Lcom/ea/nimble/Timer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
