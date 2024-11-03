.class public final Lcom/garena/android/gpns/network/TCPFactory;
.super Ljava/lang/Object;
.source "TCPFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newConnection(Landroid/content/Context;I)Lcom/garena/android/gpns/network/tcp/TCPConnection;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "gpushsg1.beetalkmobile.com"

    const/16 v1, 0x2766

    invoke-static {p0, v1, p1}, Lcom/garena/android/gpns/network/TCPFactory;->newConnection(Ljava/lang/String;II)Lcom/garena/android/gpns/network/tcp/TCPConnection;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->setKeepConnected(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getConnectionAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/android/gpns/network/TCPFactory;->parseIPAndPort(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/garena/android/gpns/network/TCPFactory;->newConnection(Ljava/lang/String;II)Lcom/garena/android/gpns/network/tcp/TCPConnection;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->setKeepConnected(Z)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getAuthServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/garena/android/gpns/network/TCPFactory;->parseIPAndPort(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v1, p0, p1}, Lcom/garena/android/gpns/network/TCPFactory;->newConnection(Ljava/lang/String;II)Lcom/garena/android/gpns/network/tcp/TCPConnection;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/garena/android/gpns/network/tcp/TCPConnection;->setKeepConnected(Z)V

    :goto_0
    return-object p0
.end method

.method public static newConnection(Ljava/lang/String;II)Lcom/garena/android/gpns/network/tcp/TCPConnection;
    .locals 1

    new-instance v0, Lcom/garena/android/gpns/network/tcp/TCPConnection;

    invoke-direct {v0, p0, p1, p2}, Lcom/garena/android/gpns/network/tcp/TCPConnection;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static newPacketReader(Ljava/io/InputStream;)Lcom/garena/android/gpns/network/TCPPacketReader;
    .locals 1

    new-instance v0, Lcom/garena/android/gpns/network/TCPPacketReader;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/network/TCPPacketReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static parseIPAndPort(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance v1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
