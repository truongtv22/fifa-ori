.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getNonce(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 2

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "nonce"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;->callback(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
