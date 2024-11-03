.class public Lcom/garena/android/gpns/network/exception/ConnectionDroppedException;
.super Lcom/garena/android/gpns/network/exception/AbstractNetworkException;
.source "ConnectionDroppedException.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "TCP Socket connection was unexpectedly closed."


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "TCP Socket connection was unexpectedly closed."

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/network/exception/AbstractNetworkException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
