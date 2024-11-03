.class public Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestoreItemData"
.end annotation


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private logPrice:J

.field private productId:I

.field private stampToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLogPrice()J
    .locals 2

    iget-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->logPrice:J

    return-wide v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->productId:I

    return v0
.end method

.method public getStampToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->stampToken:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public setLogPrice(J)V
    .locals 0

    iput-wide p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->logPrice:J

    return-void
.end method

.method public setProductId(I)V
    .locals 0

    iput p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->productId:I

    return-void
.end method

.method public setStampToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->stampToken:Ljava/lang/String;

    return-void
.end method
