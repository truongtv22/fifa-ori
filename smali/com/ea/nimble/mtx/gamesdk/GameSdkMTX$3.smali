.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->purchaseItem(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)Lcom/ea/nimble/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

.field final synthetic val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

.field final synthetic val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

.field final synthetic val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

.field final synthetic val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;Lcom/ea/games/gamesdk/GameSdkInterface;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    iput-object p3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iput-object p4, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    iput-object p5, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "genOrder failed, error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_PURCHASE_VERIFICATION_FAILURE:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void
.end method

.method public onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-direct {v1, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    iget-object v1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->USER_INITIATED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    const-string v0, "com.ea.nimble.tracking"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/ea/nimble/tracking/ITracking;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    iget-object v3, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    const-string v4, "NIMBLESTANDARD::KEY_MTX_ORDERID"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "NIMBLESTANDARD::MTX_ITEM_BEGIN_PURCHASE"

    invoke-interface {v1, v3, v2}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    new-instance v1, Lcom/ea/games/gamesdk/UserInfo;

    invoke-direct {v1}, Lcom/ea/games/gamesdk/UserInfo;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v2}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "UserId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/UserInfo;->setUserId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v2}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "UserName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/UserInfo;->setUserName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v2}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "UserLevel"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/UserInfo;->setUserLevel(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v2}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ServerId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/UserInfo;->setServerId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v2}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ServerName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/UserInfo;->setServerName(Ljava/lang/String;)V

    new-instance v2, Lcom/ea/games/gamesdk/OrderInfo;

    invoke-direct {v2}, Lcom/ea/games/gamesdk/OrderInfo;-><init>()V

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    iget-object v3, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ea/games/gamesdk/OrderInfo;->setOrderId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->getAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ea/games/gamesdk/OrderInfo;->setAccessKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->getOrderNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ea/games/gamesdk/OrderInfo;->setOrderNumber(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ea/games/gamesdk/OrderInfo;->setItemId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ea/games/gamesdk/OrderInfo;->setItemName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ea/games/gamesdk/OrderInfo;->setItemDesc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getPriceDecimal()F

    move-result p1

    invoke-virtual {v2, p1}, Lcom/ea/games/gamesdk/OrderInfo;->setAmount(F)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/ea/games/gamesdk/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ea/games/gamesdk/OrderInfo;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/UserInfo;->getUserLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/UserInfo;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v3}, Lcom/ea/games/gamesdk/GameSdkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    new-instance v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;

    invoke-direct {v4, p0, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;Lcom/ea/nimble/Component;)V

    invoke-interface {v3, v4}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerPayCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->pay(Landroid/app/Activity;Lcom/ea/games/gamesdk/UserInfo;Lcom/ea/games/gamesdk/OrderInfo;Ljava/lang/String;)V

    return-void
.end method
