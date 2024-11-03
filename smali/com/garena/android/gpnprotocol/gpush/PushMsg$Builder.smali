.class public final Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PushMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpnprotocol/gpush/PushMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/garena/android/gpnprotocol/gpush/PushMsg;",
        "Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public GPid:Ljava/lang/Long;

.field public Msg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->Msg:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public GPid(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->GPid:Ljava/lang/Long;

    return-object p0
.end method

.method public Msg(Ljava/util/List;)Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/android/gpnprotocol/gpush/MsgType;",
            ">;)",
            "Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->Msg:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/garena/android/gpnprotocol/gpush/PushMsg;
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->GPid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/PushMsg;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->GPid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->Msg:Ljava/util/List;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/garena/android/gpnprotocol/gpush/PushMsg;-><init>(Ljava/lang/Long;Ljava/util/List;Lokio/ByteString;)V

    return-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "GPid"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/PushMsg$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/PushMsg;

    move-result-object v0

    return-object v0
.end method
