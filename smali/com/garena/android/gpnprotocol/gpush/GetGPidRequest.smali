.class public final Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;
.super Lcom/squareup/wire/Message;
.source "GetGPidRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;,
        Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_OLDID:Ljava/lang/Long;

.field public static final DEFAULT_SIGN:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final OldId:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x2
    .end annotation
.end field

.field public final Sign:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$ProtoAdapter_GetGPidRequest;-><init>()V

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->DEFAULT_SIGN:Ljava/lang/Long;

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->DEFAULT_OLDID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;-><init>(Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)V
    .locals 1

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    iput-object p2, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    iget-object v3, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_1
    return v0
.end method

.method public newBuilder()Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;
    .locals 2

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;-><init>()V

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->Sign:Ljava/lang/Long;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->OldId:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->newBuilder()Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", Sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->Sign:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v1, ", OldId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidRequest;->OldId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    const-string v2, "GetGPidRequest{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
