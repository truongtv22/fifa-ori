.class public Lcom/garena/android/gpns/network/exception/UnableToConnectException;
.super Lcom/garena/android/gpns/network/exception/AbstractNetworkException;
.source "UnableToConnectException.java"


# static fields
.field private static final MESSAGE:Ljava/lang/String; = "Unable to connect to the server."


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Unable to connect to the server."

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/network/exception/AbstractNetworkException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
