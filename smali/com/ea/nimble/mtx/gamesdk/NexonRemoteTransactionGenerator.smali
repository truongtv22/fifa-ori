.class public Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;
.super Ljava/lang/Object;
.source "NexonRemoteTransactionGenerator.java"

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
    .locals 4

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$2;-><init>(Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;)V

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;

    invoke-direct {v1, p0, p2}, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$3;-><init>(Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V

    new-instance p2, Lcom/ea/nimble/SynergyRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/m/shop/mobilecash/buyable/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p2, p1, v2, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyIdManager;->getAuthenticatorIdentifier()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/ea/nimble/HttpRequest;

    invoke-direct {p1}, Lcom/ea/nimble/HttpRequest;-><init>()V

    iput-object v0, p1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    iput-object p1, p2, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method

.method public generateTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "productid"

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

    const-string v2, "/m/shop/mobilecash/buyable"

    const/4 v4, 0x0

    new-instance v5, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$1;

    invoke-direct {v5, p0, p3}, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V

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
