.class public Lcom/beetalk/sdk/exception/SessionAccessException;
.super Ljava/lang/RuntimeException;
.source "SessionAccessException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    return-void
.end method
