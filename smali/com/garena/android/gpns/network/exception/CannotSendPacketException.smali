.class public Lcom/garena/android/gpns/network/exception/CannotSendPacketException;
.super Lcom/garena/android/gpns/network/exception/AbstractNetworkException;
.source "CannotSendPacketException.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Unable to send data on TCP Socket."


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Unable to send data on TCP Socket."

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/network/exception/AbstractNetworkException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
