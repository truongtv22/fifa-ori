.class public Lcom/ea/games/gamesdk/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"


# instance fields
.field private productId:Ljava/lang/String;

.field private sdkOrderId:Ljava/lang/String;

.field private servicePayload:Ljava/lang/String;

.field private stampId:Ljava/lang/String;

.field private stampToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/PayInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/PayInfo;->sdkOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePayload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/PayInfo;->servicePayload:Ljava/lang/String;

    return-object v0
.end method

.method public getStampId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/PayInfo;->stampId:Ljava/lang/String;

    return-object v0
.end method

.method public getStampToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/PayInfo;->stampToken:Ljava/lang/String;

    return-object v0
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/PayInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setSdkOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/PayInfo;->sdkOrderId:Ljava/lang/String;

    return-void
.end method

.method public setServicePayload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/PayInfo;->servicePayload:Ljava/lang/String;

    return-void
.end method

.method public setStampId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/PayInfo;->stampId:Ljava/lang/String;

    return-void
.end method

.method public setStampToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/PayInfo;->stampToken:Ljava/lang/String;

    return-void
.end method
