.class Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;
.super Ljava/lang/Object;
.source "RemoteTransactionGenerator.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;->generateTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;

.field final synthetic val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;->this$0:Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 4

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "thirdPartyOrder"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;

    const-string v1, "orderId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "accessKey"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "orderNumber"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;->onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
