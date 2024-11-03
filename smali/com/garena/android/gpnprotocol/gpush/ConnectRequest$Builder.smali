.class public final Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConnectRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;",
        "Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public GPid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public GPid(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;->GPid:Ljava/lang/Long;

    return-object p0
.end method

.method public build()Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;
    .locals 3

    iget-object v0, p0, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;->GPid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;->GPid:Ljava/lang/Long;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;-><init>(Ljava/lang/Long;Lokio/ByteString;)V

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

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/ConnectRequest$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/ConnectRequest;

    move-result-object v0

    return-object v0
.end method
