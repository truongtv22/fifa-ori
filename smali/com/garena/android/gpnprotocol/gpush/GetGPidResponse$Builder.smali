.class public final Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GetGPidResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;",
        "Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ConnServerAddr:Ljava/lang/String;

.field public GPid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnServerAddr(Ljava/lang/String;)Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->ConnServerAddr:Ljava/lang/String;

    return-object p0
.end method

.method public GPid(Ljava/lang/Long;)Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->GPid:Ljava/lang/Long;

    return-object p0
.end method

.method public build()Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->GPid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->ConnServerAddr:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;

    iget-object v1, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->GPid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->ConnServerAddr:Ljava/lang/String;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;-><init>(Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const-string v2, "GPid"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->ConnServerAddr:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "ConnServerAddr"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse$Builder;->build()Lcom/garena/android/gpnprotocol/gpush/GetGPidResponse;

    move-result-object v0

    return-object v0
.end method
