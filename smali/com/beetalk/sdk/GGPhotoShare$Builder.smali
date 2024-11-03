.class public Lcom/beetalk/sdk/GGPhotoShare$Builder;
.super Ljava/lang/Object;
.source "GGPhotoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGPhotoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final photoShare:Lcom/beetalk/sdk/GGPhotoShare;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/GGPhotoShare;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGPhotoShare;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->scene:I

    iput-object p2, v0, Lcom/beetalk/sdk/GGPhotoShare;->file:Ljava/lang/String;

    iput p3, v0, Lcom/beetalk/sdk/GGPhotoShare;->gameId:I

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/GGPhotoShare;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGPhotoShare;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->scene:I

    iput-object p2, v0, Lcom/beetalk/sdk/GGPhotoShare;->imgData:[B

    iput p3, v0, Lcom/beetalk/sdk/GGPhotoShare;->gameId:I

    array-length p1, p2

    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->imgDataLength:I

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/GGPhotoShare;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    return-object v0
.end method

.method public setFile(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->file:Ljava/lang/String;

    return-object p0
.end method

.method public setImgLength(I)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->imgDataLength:I

    return-object p0
.end method

.method public setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->mediaTag:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageAction(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->messageAction:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageExt(Ljava/lang/String;)Lcom/beetalk/sdk/GGPhotoShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGPhotoShare$Builder;->photoShare:Lcom/beetalk/sdk/GGPhotoShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGPhotoShare;->messageExt:Ljava/lang/String;

    return-object p0
.end method
