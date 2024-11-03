.class public Lio/sentry/connection/AsyncConnection;
.super Ljava/lang/Object;
.source "AsyncConnection.java"

# interfaces
.implements Lio/sentry/connection/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/connection/AsyncConnection$ShutDownHook;,
        Lio/sentry/connection/AsyncConnection$EventSubmitter;
    }
.end annotation


# static fields
.field private static final lockdownLogger:Lorg/slf4j/Logger;

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final actualConnection:Lio/sentry/connection/Connection;

.field private volatile closed:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private gracefulShutdown:Z

.field private final shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

.field private final shutdownTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/sentry/connection/AsyncConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/sentry/SentryClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lockdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/sentry/connection/AsyncConnection;->lockdownLogger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/sentry/connection/Connection;Ljava/util/concurrent/ExecutorService;ZJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/sentry/connection/AsyncConnection$ShutDownHook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/sentry/connection/AsyncConnection$ShutDownHook;-><init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/connection/AsyncConnection$1;)V

    iput-object v0, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    iput-object p1, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    :goto_0
    if-eqz p3, :cond_1

    iput-boolean p3, p0, Lio/sentry/connection/AsyncConnection;->gracefulShutdown:Z

    invoke-direct {p0}, Lio/sentry/connection/AsyncConnection;->addShutdownHook()V

    :cond_1
    iput-wide p4, p0, Lio/sentry/connection/AsyncConnection;->shutdownTimeout:J

    return-void
.end method

.method static synthetic access$300(Lio/sentry/connection/AsyncConnection;)Lio/sentry/connection/Connection;
    .locals 0

    iget-object p0, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    return-object p0
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lio/sentry/connection/AsyncConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lio/sentry/connection/AsyncConnection;->doClose()V

    return-void
.end method

.method private addShutdownHook()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private doClose()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "{} tasks failed to execute before shutdown."

    sget-object v1, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v2, "Gracefully shutting down Sentry async threads."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/sentry/connection/AsyncConnection;->closed:Z

    iget-object v2, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_0
    iget-wide v2, p0, Lio/sentry/connection/AsyncConnection;->shutdownTimeout:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    :goto_0
    iget-object v1, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v2, "Still waiting on async executor to terminate."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Graceful shutdown took too much time, forcing the shutdown."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    sget-object v1, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v2, "Shutdown finished."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v0}, Lio/sentry/connection/Connection;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lio/sentry/connection/AsyncConnection;->logger:Lorg/slf4j/Logger;

    const-string v2, "Graceful shutdown interrupted, forcing the shutdown."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    iget-object v1, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v1}, Lio/sentry/connection/Connection;->close()V

    throw v0
.end method


# virtual methods
.method public addEventSendCallback(Lio/sentry/connection/EventSendCallback;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->actualConnection:Lio/sentry/connection/Connection;

    invoke-interface {v0, p1}, Lio/sentry/connection/Connection;->addEventSendCallback(Lio/sentry/connection/EventSendCallback;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/sentry/connection/AsyncConnection;->gracefulShutdown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    invoke-static {v0}, Lio/sentry/util/Util;->safelyRemoveShutdownHook(Ljava/lang/Thread;)Z

    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->shutDownHook:Lio/sentry/connection/AsyncConnection$ShutDownHook;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/sentry/connection/AsyncConnection$ShutDownHook;->access$202(Lio/sentry/connection/AsyncConnection$ShutDownHook;Z)Z

    :cond_0
    invoke-direct {p0}, Lio/sentry/connection/AsyncConnection;->doClose()V

    return-void
.end method

.method public send(Lio/sentry/event/Event;)V
    .locals 4

    iget-boolean v0, p0, Lio/sentry/connection/AsyncConnection;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/connection/AsyncConnection;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/sentry/connection/AsyncConnection$EventSubmitter;

    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lio/sentry/connection/AsyncConnection$EventSubmitter;-><init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;Lio/sentry/connection/AsyncConnection$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
