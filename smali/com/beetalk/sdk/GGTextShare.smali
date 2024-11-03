.class public Lcom/beetalk/sdk/GGTextShare;
.super Ljava/lang/Object;
.source "GGTextShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/GGTextShare$Builder;
    }
.end annotation


# instance fields
.field protected caption:Ljava/lang/String;

.field protected desc:Ljava/lang/String;

.field protected gameId:I

.field protected mediaTag:Ljava/lang/String;

.field protected scene:I

.field protected thumDataLength:I

.field protected thumbData:[B

.field protected title:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetalk/sdk/GGTextShare;->scene:I

    const-string v1, ""

    iput-object v1, p0, Lcom/beetalk/sdk/GGTextShare;->mediaTag:Ljava/lang/String;

    iput v0, p0, Lcom/beetalk/sdk/GGTextShare;->gameId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beetalk/sdk/GGTextShare;->thumbData:[B

    iput v0, p0, Lcom/beetalk/sdk/GGTextShare;->thumDataLength:I

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGTextShare;->gameId:I

    return v0
.end method

.method public getMediaTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare;->mediaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGTextShare;->scene:I

    return v0
.end method

.method public getThumDataLength()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGTextShare;->thumDataLength:I

    return v0
.end method

.method public getThumbData()[B
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare;->thumbData:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare;->url:Ljava/lang/String;

    return-object v0
.end method
