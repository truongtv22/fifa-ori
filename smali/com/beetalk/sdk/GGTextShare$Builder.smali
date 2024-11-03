.class public Lcom/beetalk/sdk/GGTextShare$Builder;
.super Ljava/lang/Object;
.source "GGTextShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGTextShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final textShare:Lcom/beetalk/sdk/GGTextShare;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/GGTextShare;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGTextShare;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    const/4 v1, 0x0

    iput v1, v0, Lcom/beetalk/sdk/GGTextShare;->scene:I

    iput p1, v0, Lcom/beetalk/sdk/GGTextShare;->gameId:I

    const-string p1, ""

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->caption:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/GGTextShare;

    invoke-direct {v0}, Lcom/beetalk/sdk/GGTextShare;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    const/4 v1, 0x0

    iput v1, v0, Lcom/beetalk/sdk/GGTextShare;->scene:I

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->thumbData:[B

    iput p2, v0, Lcom/beetalk/sdk/GGTextShare;->gameId:I

    array-length p1, p1

    iput p1, v0, Lcom/beetalk/sdk/GGTextShare;->thumDataLength:I

    const-string p1, ""

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->caption:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/GGTextShare;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->caption:Ljava/lang/String;

    return-object p0
.end method

.method public setDesc(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->mediaTag:Ljava/lang/String;

    return-object p0
.end method

.method public setScene(Ljava/lang/Integer;)Lcom/beetalk/sdk/GGTextShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/GGTextShare;->scene:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGTextShare$Builder;->textShare:Lcom/beetalk/sdk/GGTextShare;

    iput-object p1, v0, Lcom/beetalk/sdk/GGTextShare;->url:Ljava/lang/String;

    return-object p0
.end method
