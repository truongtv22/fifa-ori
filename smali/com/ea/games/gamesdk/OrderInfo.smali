.class public Lcom/ea/games/gamesdk/OrderInfo;
.super Ljava/lang/Object;
.source "OrderInfo.java"


# instance fields
.field private accessKey:Ljava/lang/String;

.field private amount:F

.field private itemDesc:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    iget v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->amount:F

    return v0
.end method

.method public getItemDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->itemDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/OrderInfo;->orderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public setAmount(F)V
    .locals 0

    iput p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->amount:F

    return-void
.end method

.method public setItemDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->itemDesc:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/OrderInfo;->orderNumber:Ljava/lang/String;

    return-void
.end method
