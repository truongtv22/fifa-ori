.class public final synthetic Lcom/google/common/util/concurrent/ListeningScheduledExecutorService$-CC;
.super Ljava/lang/Object;
.source "ListeningScheduledExecutorService.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "ea87655719898b9807d7a88878e9de051d12af172d2fab563c9881b5e404e7d4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$schedule(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$schedule(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$scheduleAtFixedRate(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface/range {p0 .. p6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public static bridge synthetic $default$scheduleWithFixedDelay(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    invoke-interface/range {p0 .. p6}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object p1

    return-object p1
.end method
