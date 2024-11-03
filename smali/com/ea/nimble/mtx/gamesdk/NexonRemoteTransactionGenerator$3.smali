.class Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;
.super Ljava/lang/Object;
.source "NexonRemoteTransactionGenerator.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;->generateTransactionInfo(Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;

.field final synthetic val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;->this$0:Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

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

    if-nez v0, :cond_1

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

    const-string v0, "resources"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "body"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "buyable"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;->onSucceed(Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$TransactionInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/Error;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;->val$cb:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;

    invoke-virtual {p1}, Lcom/ea/nimble/Error;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
