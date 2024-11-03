.class public final Lcom/garena/android/gpnprotocol/gpush/MsgType;
.super Lcom/squareup/wire/Message;
.source "MsgType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpnprotocol/gpush/MsgType$ProtoAdapter_MsgType;,
        Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
        "Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_APPID:Ljava/lang/Integer;

.field public static final DEFAULT_DATA:Lokio/ByteString;

.field public static final DEFAULT_MSGID:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final Appid:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field

.field public final Data:Lokio/ByteString;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BYTES"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x3
    .end annotation
.end field

.field public final Msgid:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/MsgType$ProtoAdapter_MsgType;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/MsgType$ProtoAdapter_MsgType;-><init>()V

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->DEFAULT_APPID:Ljava/lang/Integer;

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->DEFAULT_MSGID:Ljava/lang/Integer;

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->DEFAULT_DATA:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;)V
    .locals 1

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/garena/android/gpnprotocol/gpush/MsgType;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;)V
    .locals 1

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p4}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/MsgType;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/MsgType;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    invoke-virtual {v1, p1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/MsgType;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public newBuilder()Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;
    .locals 2

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;-><init>()V

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Appid:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Msgid:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Data:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/MsgType;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/MsgType;->newBuilder()Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", Appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Appid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Msgid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Msgid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType;->Data:Lokio/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const-string v2, "MsgType{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
