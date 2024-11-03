.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$7;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getPurchasedItems(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$7;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 4

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    const-string v1, "synergy.drm"

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "apiVer"

    const-string v3, "1.0.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "masterSellId"

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p1, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyRequest;->send()V

    return-void
.end method
