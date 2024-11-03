.class final Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;
.super Lcom/squareup/wire/ProtoAdapter;
.source "GetGPidRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_GetGPidRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->OldId(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->Sign(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p2, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    invoke-virtual {p0, p1, p2}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;)I
    .locals 4

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    invoke-virtual {p0, p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;->encodedSize(Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;
    .locals 0

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->newBuilder()Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    invoke-virtual {p0, p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;->redact(Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;)Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    move-result-object p1

    return-object p1
.end method
