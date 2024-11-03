.class public final Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;
.super Lcom/squareup/wire/Message;
.source "PushMsgAck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$ProtoAdapter_PushMsgAck;,
        Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;",
        "Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MSGID:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final FailList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        tag = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final Msgid:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$ProtoAdapter_PushMsgAck;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$ProtoAdapter_PushMsgAck;-><init>()V

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->DEFAULT_MSGID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;-><init>(Ljava/lang/Integer;Ljava/util/List;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/List;Lokio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->Msgid:Ljava/lang/Integer;

    const-string p1, "FailList"

    invoke-static {p1, p2}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->Msgid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->Msgid:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    iget-object p1, p1, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->Msgid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public newBuilder()Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;
    .locals 3

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;

    invoke-direct {v0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;-><init>()V

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->Msgid:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;->Msgid:Ljava/lang/Integer;

    const-string v1, "FailList"

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/squareup/wire/internal/Internal;->copyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;->FailList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->newBuilder()Lcom/garena/android/gpnprotocol/gpush/PushMsgAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", Msgid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->Msgid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", FailList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsgAck;->FailList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x2

    const-string v2, "PushMsgAck{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
