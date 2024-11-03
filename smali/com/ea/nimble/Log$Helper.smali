.class public Lcom/ea/nimble/Log$Helper;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs LOG(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x258

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x258

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static LOGFUNC(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s [Line %d] called..."

    invoke-interface {v0, v3, p0, v2, v1}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static LOGFUNCS(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s [Line %d] called..."

    invoke-interface {v0, v3, p0, v2, v1}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static LOGPUBLICFUNC(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x64

    const-string v3, "%s [Line %d] called..."

    invoke-interface {v0, v2, p0, v3, v1}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static LOGPUBLICFUNCS(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/ea/nimble/Log$Helper;->getLineNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0x64

    const-string v3, "%s [Line %d] called..."

    invoke-interface {v0, v2, p0, v3, v1}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x190

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v0

    const/16 v1, 0x190

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/nimble/ILog;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static getLineNumber()I
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    return v0
.end method

.method private static getMethodName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
