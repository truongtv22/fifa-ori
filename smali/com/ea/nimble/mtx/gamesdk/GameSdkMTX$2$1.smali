.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/games/gamesdk/SdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ea/games/gamesdk/SdkCallback<",
        "Lcom/ea/games/gamesdk/PayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

.field final synthetic val$component:Lcom/ea/nimble/Component;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;Lcom/ea/nimble/Component;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->val$component:Lcom/ea/nimble/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "100201"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->BILLING_NOT_VONDER_COMSUME:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    :cond_0
    const-string v0, "100200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->BILLING_USER_CANCEL:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    :goto_0
    return-void
.end method

.method public OnFailed(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->BILLING_INVALID_TRANSACTION:Lcom/ea/nimble/Error$Code;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void
.end method

.method public OnSucceed(Lcom/ea/games/gamesdk/PayInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-virtual {p1}, Lcom/ea/games/gamesdk/PayInfo;->getStampToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mReceipt:Ljava/lang/String;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->val$component:Lcom/ea/nimble/Component;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "eventType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SYNERGYTRACKING::CUSTOM"

    invoke-interface {v0, v2, v1}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const-string v0, "com.ea.nimble.marketingsdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/INimbleMarketingSdk;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget v1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$product_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v2, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iget-object v2, v2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mCurrencyCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v3, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iget v3, v3, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->mPriceDecimal:F

    float-to-double v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ea/nimble/INimbleMarketingSdk;->trackPurchase(Ljava/lang/String;Ljava/lang/String;D)V

    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "garena"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "stamp_token"

    invoke-virtual {p1}, Lcom/ea/games/gamesdk/PayInfo;->getStampToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$gameSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "ui_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getLogPrice()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "price"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$catalogInfo:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "currency_unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v2

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    const-string v1, "synergy.product"

    invoke-interface {p1, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/m/shop/mobilecash/delivery/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget v1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$product_id:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {v6, p1, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/HashMap;)V

    new-instance v7, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;

    invoke-direct {v7, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;)V

    invoke-interface/range {v2 .. v7}, Lcom/ea/nimble/ISynergyNetwork;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/ISynergyRequest$IJsonData;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void
.end method

.method public bridge synthetic OnSucceed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ea/games/gamesdk/PayInfo;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->OnSucceed(Lcom/ea/games/gamesdk/PayInfo;)V

    return-void
.end method
