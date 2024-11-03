.class Lcom/ea/nimble/NetworkImpl$TimerTask;
.super Ljava/lang/Object;
.source "NetworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NetworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NetworkImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/NetworkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl$TimerTask;-><init>(Lcom/ea/nimble/NetworkImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ea/nimble/NetworkImpl;->access$302(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/Timer;)Lcom/ea/nimble/Timer;

    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    const-string v2, "https://www.ea.com"

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-static {v1, v2, v3, v4}, Lcom/ea/nimble/NetworkImpl;->access$400(Lcom/ea/nimble/NetworkImpl;Ljava/lang/String;D)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
