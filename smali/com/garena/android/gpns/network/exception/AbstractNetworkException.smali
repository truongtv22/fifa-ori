.class public Lcom/garena/android/gpns/network/exception/AbstractNetworkException;
.super Ljava/lang/Exception;
.source "AbstractNetworkException.java"


# instance fields
.field private final mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/garena/android/gpns/network/exception/AbstractNetworkException;->mMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseExceptionMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/network/exception/AbstractNetworkException;->mMessage:Ljava/lang/String;

    return-object v0
.end method
