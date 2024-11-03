.class Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;
.super Ljava/lang/Object;
.source "TCPPacketTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;->this$0:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;->this$0:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    invoke-static {v0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->access$000(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;->this$0:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    invoke-static {v0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->access$000(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$1;->this$0:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    invoke-static {v1}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->access$100(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)Lcom/garena/android/gpns/network/tcp/TCPPacket;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;->onTimeout(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    :cond_0
    return-void
.end method
