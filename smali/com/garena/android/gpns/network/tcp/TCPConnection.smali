.class public Lcom/garena/android/gpns/network/tcp/TCPConnection;
.super Ljava/lang/Object;
.source "TCPConnection.java"


# static fields
.field public static final STATUS_CONNECTED:I = 0x0

.field public static final STATUS_DISCONNECTED:I = 0x1


# instance fields
.field private final mIP:Ljava/lang/String;

.field private mId:I

.field private mInput:Ljava/io/InputStream;

.field private mKeepConnected:Z

.field private mOutput:Ljava/io/OutputStream;

.field private final mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mStatus:I

.field private mTimer:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mKeepConnected:Z

    iput-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mIP:Ljava/lang/String;

    iput p2, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mPort:I

    iput p3, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mId:I

    return-void
.end method

.method private close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private close(Ljava/net/Socket;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mStatus:I

    return-void
.end method

.method private stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mTimer:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->close(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mInput:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->close(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mOutput:Ljava/io/OutputStream;

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method public connect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/android/gpns/network/exception/UnableToConnectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mIP:Ljava/lang/String;

    iget v2, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mSocket:Ljava/net/Socket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mInput:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->setStatus(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    new-instance v1, Lcom/garena/android/gpns/network/exception/UnableToConnectException;

    invoke-direct {v1, v0}, Lcom/garena/android/gpns/network/exception/UnableToConnectException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public disconnect()V
    .locals 1

    invoke-direct {p0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->stopTimer()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->setStatus(I)V

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->close()V

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mId:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getKeepConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mKeepConnected:Z

    return v0
.end method

.method public declared-synchronized getTimer()Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mTimer:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDisconnected()Z
    .locals 2

    iget v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public sendDataSynchronous([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/android/gpns/network/exception/CannotSendPacketException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->sendDataSynchronous([BII)V

    return-void
.end method

.method public sendDataSynchronous([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/android/gpns/network/exception/CannotSendPacketException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    new-instance p2, Lcom/garena/android/gpns/network/exception/CannotSendPacketException;

    invoke-direct {p2, p1}, Lcom/garena/android/gpns/network/exception/CannotSendPacketException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setKeepConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mKeepConnected:Z

    return-void
.end method

.method public declared-synchronized setTimer(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->stopTimer()V

    iput-object p1, p0, Lcom/garena/android/gpns/network/tcp/TCPConnection;->mTimer:Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
