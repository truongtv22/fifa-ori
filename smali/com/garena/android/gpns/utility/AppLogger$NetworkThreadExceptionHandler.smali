.class public abstract Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;
.super Ljava/lang/Object;
.source "AppLogger.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/utility/AppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NetworkThreadExceptionHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "NETWORK THREAD CRASH"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    return-void
.end method
