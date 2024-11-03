.class public final Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MsgType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpnprotocol/gpush/MsgType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
        "Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public Appid:Ljava/lang/Integer;

.field public Data:Lokio/ByteString;

.field public Msgid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public Appid(Ljava/lang/Integer;)Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Appid:Ljava/lang/Integer;

    return-object p0
.end method

.method public Data(Lokio/ByteString;)Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Data:Lokio/ByteString;

    return-object p0
.end method

.method public Msgid(Ljava/lang/Integer;)Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Msgid:Ljava/lang/Integer;

    return-object p0
.end method

.method public build()Lcom/garena/android/gpnprotocol/gpush/MsgType;
    .locals 5

    iget-object v0, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Appid:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Msgid:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Data:Lokio/ByteString;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/MsgType;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Appid:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Msgid:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Data:Lokio/ByteString;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/garena/android/gpnprotocol/gpush/MsgType;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lokio/ByteString;Lokio/ByteString;)V

    return-object v0

    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "Appid"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Msgid:Ljava/lang/Integer;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "Msgid"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->Data:Lokio/ByteString;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "Data"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/MsgType$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/MsgType;

    move-result-object v0

    return-object v0
.end method
