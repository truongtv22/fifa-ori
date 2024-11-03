.class public final Lcom/garena/android/gpns/utility/AppLogger;
.super Ljava/lang/Object;
.source "AppLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;
    }
.end annotation


# static fields
.field private static final APP_LOG_FLAG:Ljava/lang/String; = "GPNS MSDK"

.field public static ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/garena/android/gpns/utility/AppLogger;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "GPNS MSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/garena/android/gpns/utility/AppLogger;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "GPNS MSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/garena/android/gpns/utility/AppLogger;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "GPNS MSDK"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/garena/android/gpns/utility/AppLogger;->ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "GPNS MSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
