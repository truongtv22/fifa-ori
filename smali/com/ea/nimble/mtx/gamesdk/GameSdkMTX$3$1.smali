.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/games/gamesdk/SdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V
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
.field final synthetic this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

.field final synthetic val$component:Lcom/ea/nimble/Component;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;Lcom/ea/nimble/Component;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->val$component:Lcom/ea/nimble/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void
.end method

.method public OnFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void
.end method

.method public OnSucceed(Lcom/ea/games/gamesdk/PayInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-virtual {p1}, Lcom/ea/games/gamesdk/PayInfo;->getSdkOrderId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mReceipt:Ljava/lang/String;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->val$component:Lcom/ea/nimble/Component;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/ea/nimble/tracking/ITracking;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "eventType"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SYNERGYTRACKING::CUSTOM"

    invoke-interface {p1, v1, v0}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$purchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->this$1:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    iget-object v0, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;->val$newTransaction:Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-void
.end method

.method public bridge synthetic OnSucceed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ea/games/gamesdk/PayInfo;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3$1;->OnSucceed(Lcom/ea/games/gamesdk/PayInfo;)V

    return-void
.end method
