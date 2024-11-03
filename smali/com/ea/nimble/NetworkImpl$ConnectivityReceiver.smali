.class Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NetworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NetworkImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/NetworkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;->this$0:Lcom/ea/nimble/NetworkImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;-><init>(Lcom/ea/nimble/NetworkImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "Network reachability changed!"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;->this$0:Lcom/ea/nimble/NetworkImpl;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/ea/nimble/NetworkImpl$ConnectivityReceiver;->this$0:Lcom/ea/nimble/NetworkImpl;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/ea/nimble/NetworkImpl;->access$000(Lcom/ea/nimble/NetworkImpl;Z)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
