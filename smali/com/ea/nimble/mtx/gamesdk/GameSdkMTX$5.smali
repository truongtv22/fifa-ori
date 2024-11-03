.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restoreSdkProgressOneByOne(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

.field final synthetic val$itemDataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->val$itemDataList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 5

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    const/4 v2, 0x0

    if-nez v0, :cond_3

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

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1, v1, v2, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "restorePurchasedTransactionsImpl responseErrorCode = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    sget-object v0, Lcom/ea/nimble/Error$Code;->BILLING_DELIVER_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const-string v0, "restorePurchasedTransactionsImpl ----2---3----4-"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0, v2, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$400(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$402(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;I)I

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;->val$itemDataList:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$600(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;)V

    return-void
.end method
