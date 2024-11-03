.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->downloadContent(Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 2

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;->callback(Ljava/io/InputStream;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;->callback(Ljava/io/InputStream;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
