.class public Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;
.super Ljava/lang/Object;
.source "RemoteTransactionGenerator.java"

# interfaces
.implements Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateTransactionInfo(Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 0

    return-void
.end method

.method public generateTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sku"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p2, "uid"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    const-string p2, "synergy.product"

    invoke-interface {p1, p2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/rest/genOrder"

    const/4 v4, 0x0

    new-instance v5, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;

    invoke-direct {v5, p0, p3}, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V

    invoke-interface/range {v0 .. v5}, Lcom/ea/nimble/ISynergyNetwork;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/ISynergyRequest$IJsonData;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void
.end method

.method public getCatalogItem(Ljava/util/HashMap;Ljava/lang/String;)Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    return-object p1
.end method
