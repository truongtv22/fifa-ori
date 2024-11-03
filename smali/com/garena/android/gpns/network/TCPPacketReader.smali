.class public Lcom/garena/android/gpns/network/TCPPacketReader;
.super Ljava/lang/Object;
.source "TCPPacketReader.java"


# static fields
.field private static final COMMAND_FIELD_SIZE:I = 0x1

.field private static final LENGTH_FIELD_SIZE:I = 0x4


# instance fields
.field private final mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/gpns/network/TCPPacketReader;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method private static byteArrayToInt([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private readNBytes(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/garena/android/gpns/network/TCPPacketReader;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_1

    if-ge v2, p1, :cond_0

    add-int/2addr v1, v2

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public readPacket()Lcom/garena/android/gpns/network/tcp/TCPPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/garena/android/gpns/network/exception/ConnectionDroppedException;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/TCPPacketReader;->readNBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/network/TCPPacketReader;->byteArrayToInt([B)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/garena/android/gpns/network/TCPPacketReader;->readNBytes(I)[B

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/garena/android/gpns/network/TCPPacketReader;->readNBytes(I)[B

    move-result-object v0

    new-instance v1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-direct {v1, v2, v0}, Lcom/garena/android/gpns/network/tcp/TCPPacket;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/garena/android/gpns/network/exception/ConnectionDroppedException;

    invoke-direct {v1, v0}, Lcom/garena/android/gpns/network/exception/ConnectionDroppedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
