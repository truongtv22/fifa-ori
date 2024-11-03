.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;
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

.field final synthetic val$product_id:I

.field final synthetic val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/games/gamesdk/GameSdkInterface;Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;ILcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    iput-object p3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    iput-object p4, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iput p5, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$product_id:I

    iput-object p6, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void
.end method

.method public onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;->getAccessKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.ea.nimble.tracking"

    invoke-static {p1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NIMBLESTANDARD::MTX_ITEM_BEGIN_PURCHASE"

    invoke-interface {v0, v2, v1}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    new-instance v0, Lcom/ea/games/gamesdk/UserInfo;

    invoke-direct {v0}, Lcom/ea/games/gamesdk/UserInfo;-><init>()V

    const-string v1, "chimble.synergy.sdk"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nexon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "nexonID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/AccountInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "garena"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "openID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/AccountInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "UserId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "UserName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "UserLevel"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setUserLevel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ServerId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setServerId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ServerName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/games/gamesdk/UserInfo;->setServerName(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/ea/games/gamesdk/OrderInfo;

    invoke-direct {v1}, Lcom/ea/games/gamesdk/OrderInfo;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/OrderInfo;->setItemId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/OrderInfo;->setItemName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/OrderInfo;->setItemDesc(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getPriceDecimal()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ea/games/gamesdk/OrderInfo;->setAmount(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/OrderInfo;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v3}, Lcom/ea/games/gamesdk/GameSdkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    new-instance v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    invoke-direct {v4, p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;Lcom/ea/nimble/Component;)V

    invoke-interface {v3, v4}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerPayCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/ea/games/gamesdk/GameSdkInterface;->pay(Landroid/app/Activity;Lcom/ea/games/gamesdk/UserInfo;Lcom/ea/games/gamesdk/OrderInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->BILLING_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    :goto_1
    return-void
.end method
