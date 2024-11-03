.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getDownloadUrlForItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;->val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 4

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "synergy.product"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "apiVer"

    const-string v3, "1.0.0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ver"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "langCode"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;->val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getSellId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sellId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p1, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyRequest;->send()V

    return-void
.end method
