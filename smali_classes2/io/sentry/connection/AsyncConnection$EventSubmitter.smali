.class final Lio/sentry/connection/AsyncConnection$EventSubmitter;
.super Ljava/lang/Object;
.source "AsyncConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/connection/AsyncConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventSubmitter"
.end annotation


# instance fields
.field private final event:Lio/sentry/event/Event;

.field private mdcContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/connection/AsyncConnection;


# direct methods
.method private constructor <init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/event/Event;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->this$0:Lio/sentry/connection/AsyncConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->event:Lio/sentry/event/Event;

    iput-object p3, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->mdcContext:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;Lio/sentry/connection/AsyncConnection$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/connection/AsyncConnection$EventSubmitter;-><init>(Lio/sentry/connection/AsyncConnection;Lio/sentry/event/Event;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Dropping an Event due to lockdown: "

    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->startManagingThread()V

    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->mdcContext:Ljava/util/Map;

    if-nez v2, :cond_0

    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    :goto_0
    :try_start_0
    iget-object v2, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->this$0:Lio/sentry/connection/AsyncConnection;

    invoke-static {v2}, Lio/sentry/connection/AsyncConnection;->access$300(Lio/sentry/connection/AsyncConnection;)Lio/sentry/connection/Connection;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->event:Lio/sentry/event/Event;

    invoke-interface {v2, v3}, Lio/sentry/connection/Connection;->send(Lio/sentry/event/Event;)V
    :try_end_0
    .catch Lio/sentry/connection/LockedDownException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/sentry/connection/TooManyRequestsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :goto_1
    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    :goto_2
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->stopManagingThread()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lio/sentry/connection/AsyncConnection;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "An exception occurred while sending the event to Sentry."

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez v1, :cond_1

    goto :goto_1

    :catch_1
    invoke-static {}, Lio/sentry/connection/AsyncConnection;->access$400()Lorg/slf4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/connection/AsyncConnection$EventSubmitter;->event:Lio/sentry/event/Event;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    if-nez v1, :cond_2

    invoke-static {}, Lorg/slf4j/MDC;->clear()V

    goto :goto_5

    :cond_2
    invoke-static {v1}, Lorg/slf4j/MDC;->setContextMap(Ljava/util/Map;)V

    :goto_5
    invoke-static {}, Lio/sentry/environment/SentryEnvironment;->stopManagingThread()V

    throw v0
.end method
