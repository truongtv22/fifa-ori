.class public Lcom/beetalk/sdk/GGPhotoShare;
.super Ljava/lang/Object;
.source "GGPhotoShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/GGPhotoShare$Builder;
    }
.end annotation


# instance fields
.field protected file:Ljava/lang/String;

.field protected gameId:I

.field protected imgData:[B

.field protected imgDataLength:I

.field protected mediaTag:Ljava/lang/String;

.field protected messageAction:Ljava/lang/String;

.field protected messageExt:Ljava/lang/String;

.field protected scene:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->scene:I

    const-string v1, ""

    iput-object v1, p0, Lcom/beetalk/sdk/GGPhotoShare;->mediaTag:Ljava/lang/String;

    iput v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->gameId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/beetalk/sdk/GGPhotoShare;->imgData:[B

    iput v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->imgDataLength:I

    iput-object v1, p0, Lcom/beetalk/sdk/GGPhotoShare;->messageAction:Ljava/lang/String;

    iput-object v1, p0, Lcom/beetalk/sdk/GGPhotoShare;->messageExt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->gameId:I

    return v0
.end method

.method public getImgData()[B
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->imgData:[B

    return-object v0
.end method

.method public getImgDataLength()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->imgDataLength:I

    return v0
.end method

.method public getMediaTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->mediaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->messageAction:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->messageExt:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGPhotoShare;->scene:I

    return v0
.end method
