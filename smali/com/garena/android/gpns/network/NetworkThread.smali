.class public Lcom/garena/android/gpns/network/NetworkThread;
.super Landroid/os/HandlerThread;
.source "NetworkThread.java"

# interfaces
.implements Lcom/garena/android/gpns/network/NetworkRequestHandler;
.implements Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;
.implements Lcom/garena/android/gpns/network/PacketReadListener;


# static fields
.field private static final NETWORK_THREAD:Ljava/lang/String; = "NETWORK_THREAD"


# instance fields
.field private final context:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mNetworkHandler:Lcom/garena/android/gpns/network/NetworkHandler;

.field private mReadHandler:Lcom/garena/android/gpns/network/ReadHandler;

.field private final mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

.field private mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/garena/android/gpns/network/NetworkResponseListener;)V
    .locals 1

    const-string v0, "NETWORK_THREAD"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/garena/android/gpns/network/NetworkThread;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/android/gpns/network/NetworkThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private connect(I)V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/garena/android/gpns/network/TCPFactory;->newConnection(Landroid/content/Context;I)Lcom/garena/android/gpns/network/tcp/TCPConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    :try_start_0
    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->connect()V

    invoke-direct {p0}, Lcom/garena/android/gpns/network/NetworkThread;->initPacketReceiver()V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onConnectionOK(I)V
    :try_end_0
    .catch Lcom/garena/android/gpns/network/exception/UnableToConnectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onUnableToConnect(I)V

    :goto_0
    return-void
.end method

.method private disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private initPacketReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/network/TCPFactory;->newPacketReader(Ljava/io/InputStream;)Lcom/garena/android/gpns/network/TCPPacketReader;

    move-result-object v0

    new-instance v1, Lcom/garena/android/gpns/network/ReceiverThread;

    iget-object v2, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v2}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/garena/android/gpns/network/NetworkThread;->mReadHandler:Lcom/garena/android/gpns/network/ReadHandler;

    invoke-direct {v1, v2, v0, v3}, Lcom/garena/android/gpns/network/ReceiverThread;-><init>(ILcom/garena/android/gpns/network/TCPPacketReader;Lcom/garena/android/gpns/network/PacketReadListener;)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public connectAuthenticationServer()V
    .locals 1

    invoke-direct {p0}, Lcom/garena/android/gpns/network/NetworkThread;->disconnect()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/NetworkThread;->connect(I)V

    return-void
.end method

.method public connectNotificationServer()V
    .locals 1

    invoke-direct {p0}, Lcom/garena/android/gpns/network/NetworkThread;->disconnect()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/NetworkThread;->connect(I)V

    return-void
.end method

.method public connectRegionServer()V
    .locals 1

    invoke-direct {p0}, Lcom/garena/android/gpns/network/NetworkThread;->disconnect()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/NetworkThread;->connect(I)V

    return-void
.end method

.method public getHandler()Lcom/garena/android/gpns/network/NetworkRequestHandler;
    .locals 2

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/NetworkThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/network/NetworkThread;->mNetworkHandler:Lcom/garena/android/gpns/network/NetworkHandler;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/garena/android/gpns/network/NetworkHandler;

    invoke-direct {v1, v0, p0}, Lcom/garena/android/gpns/network/NetworkHandler;-><init>(Landroid/os/Looper;Lcom/garena/android/gpns/network/NetworkRequestHandler;)V

    iput-object v1, p0, Lcom/garena/android/gpns/network/NetworkThread;->mNetworkHandler:Lcom/garena/android/gpns/network/NetworkHandler;

    :cond_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mNetworkHandler:Lcom/garena/android/gpns/network/NetworkHandler;

    return-object v0
.end method

.method public isTCPDisconnected()Z
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    new-instance v0, Lcom/garena/android/gpns/network/ReadHandler;

    invoke-virtual {p0}, Lcom/garena/android/gpns/network/NetworkThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/garena/android/gpns/network/ReadHandler;-><init>(Landroid/os/Looper;Lcom/garena/android/gpns/network/PacketReadListener;)V

    iput-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mReadHandler:Lcom/garena/android/gpns/network/ReadHandler;

    return-void
.end method

.method public onPacketRead(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 2

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->getKeepConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->getTimer()Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->isWaitingFor(Lcom/garena/android/gpns/network/tcp/TCPPacket;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onResponseArrived(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    :cond_2
    return-void
.end method

.method public onReadFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onConnectionDropped(I)V

    :cond_0
    return-void
.end method

.method public onTimeout(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TIMEOUT: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->getCommand()I

    move-result v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/TCPPacketFactory;->getPacketName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    return-void
.end method

.method public quit()Z
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->disconnect()V

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mNetworkHandler:Lcom/garena/android/gpns/network/NetworkHandler;

    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->sendDataSynchronous([B)V

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/tcp/TCPPacket;->isTimed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;

    invoke-direct {v0, p1}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;-><init>(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    invoke-virtual {v0, p0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->setOnTimeoutListener(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer$OnTimeoutListener;)V

    invoke-virtual {v0}, Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;->start()V

    iget-object v1, p0, Lcom/garena/android/gpns/network/NetworkThread;->mTCPConnection:Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-virtual {v1, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->setTimer(Lcom/garena/android/gpns/network/tcp/TCPPacketTimer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
    :try_end_0
    .catch Lcom/garena/android/gpns/network/exception/CannotSendPacketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/garena/android/gpns/network/NetworkThread;->mResponseHandler:Lcom/garena/android/gpns/network/NetworkResponseListener;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkResponseListener;->onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    :cond_1
    :goto_0
    return-void
.end method
