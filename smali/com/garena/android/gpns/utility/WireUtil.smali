.class public Lcom/garena/android/gpns/utility/WireUtil;
.super Ljava/lang/Object;
.source "WireUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Lcom/squareup/wire/Message;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/Message;",
            ">(TT;)[B"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/wire/Message;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->encode(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static parseGetGPidResponse([BII)Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;

    return-object p0
.end method

.method public static parseGetRegionResponse([BII)Lcom/garena/android/gpnprotocol/gpush/GetRegionResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/GetRegionResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/garena/android/gpnprotocol/gpush/GetRegionResponse;

    return-object p0
.end method

.method public static parsePushMsg([BII)Lcom/garena/android/gpnprotocol/gpush/PushMsg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/PushMsg;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->decode(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg;

    return-object p0
.end method
