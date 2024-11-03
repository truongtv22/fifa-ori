.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->OnSucceed(Lcom/ea/games/gamesdk/PayInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 3

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "result"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->BILLING_DELIVER_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->BILLING_RESPONSE_FAILED:Lcom/ea/nimble/Error$Code;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1$1;->this$2:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    :goto_0
    return-void
.end method
