.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getItemCatalog(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;

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

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "SynergyCatalog"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-static {v3, v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->access$000(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;->callback(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;

    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->EMPTY_SYNERGY_CATALOG:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "EMPTY_SYNERGY_CATALOG"

    invoke-direct {v0, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;->callback(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;->callback(Ljava/util/List;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
