.class public final Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;
.super Lcom/squareup/wire/Message;
.source "GetGPidResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$ProtoAdapter_GetGPidResponse;,
        Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONNSERVERADDR:Ljava/lang/String; = ""

.field public static final DEFAULT_GPID:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final ConnServerAddr:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x2
    .end annotation
.end field

.field public final GPid:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$ProtoAdapter_GetGPidResponse;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$ProtoAdapter_GetGPidResponse;-><init>()V

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->DEFAULT_GPID:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;-><init>(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V
    .locals 1

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    iput-object p2, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    iget-object v3, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public newBuilder()Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;
    .locals 2

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;-><init>()V

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->GPid:Ljava/lang/Long;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->ConnServerAddr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->newBuilder()Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", GPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->GPid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ConnServerAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;->ConnServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const-string v2, "GetGPidResponse{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
