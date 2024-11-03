.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->loadBinaryDataForItems(Ljava/util/Collection;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;

.field final synthetic val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    iput-object p3, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 6

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1000

    :try_start_0
    new-array v3, v2, [B

    :goto_0
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error reading binary data"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "binaryData"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-static {p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->access$106(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I

    iget-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-static {p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->access$100(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;->callback(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
