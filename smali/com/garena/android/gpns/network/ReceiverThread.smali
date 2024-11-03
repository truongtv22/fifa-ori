.class public Lcom/garena/android/gpns/network/ReceiverThread;
.super Ljava/lang/Object;
.source "ReceiverThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mConnectionId:I

.field private final mPacketReader:Lcom/garena/android/gpns/network/TCPPacketReader;

.field private final mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;


# direct methods
.method public constructor <init>(ILcom/garena/android/gpns/network/TCPPacketReader;Lcom/garena/android/gpns/network/PacketReadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mConnectionId:I

    iput-object p2, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mPacketReader:Lcom/garena/android/gpns/network/TCPPacketReader;

    iput-object p3, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;

    return-void
.end method

.method private runPacketReadingLoop()V
    .locals 2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mPacketReader:Lcom/garena/android/gpns/network/TCPPacketReader;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/TCPPacketReader;->readPacket()Lcom/garena/android/gpns/network/tcp/TCPPacket;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;

    invoke-interface {v1, v0}, Lcom/garena/android/gpns/network/PacketReadListener;->onPacketRead(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    :try_end_0
    .catch Lcom/garena/android/gpns/network/exception/ConnectionDroppedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mReadListener:Lcom/garena/android/gpns/network/PacketReadListener;

    iget v1, p0, Lcom/garena/android/gpns/network/ReceiverThread;->mConnectionId:I

    invoke-interface {v0, v1}, Lcom/garena/android/gpns/network/PacketReadListener;->onReadFailed(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/garena/android/gpns/network/ReceiverThread;->runPacketReadingLoop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
