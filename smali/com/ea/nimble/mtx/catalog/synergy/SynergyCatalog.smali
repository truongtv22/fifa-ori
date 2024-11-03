.class public Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;,
        Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;
    }
.end annotation


# static fields
.field public static final MTX_INFO_KEY_CURRENCY:Ljava/lang/String; = "localCurrency"

.field public static final MTX_INFO_KEY_SELLID:Ljava/lang/String; = "sellId"

.field private static final SYNERGY_API_GET_AVAILABLE_ITEMS:Ljava/lang/String; = "/m/shop/mobilecash/info"

.field private static final SYNERGY_API_GET_CATEGORIES:Ljava/lang/String; = "/product/api/core/getMTXGameCategories"

.field private static final SYNERGY_API_GET_DOWNLOAD_URL:Ljava/lang/String; = "/product/api/core/getDownloadItemUrl"

.field private static final SYNERGY_API_GET_NONCE:Ljava/lang/String; = "/drm/api/core/getNonce"

.field private static final SYNERGY_API_GET_PURCHASED_ITEMS:Ljava/lang/String; = "/drm/api/core/getPurchasedItems"


# instance fields
.field private m_channelName:Ljava/lang/String;

.field private m_itemSkuPrefix:Ljava/lang/String;

.field private m_itemsLoadingBinaryData:I

.field private m_platformName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    sget-object v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->AMAZON:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;)V

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_platformName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_channelName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->createItemFromMap(Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I
    .locals 0

    iget p0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    return p0
.end method

.method static synthetic access$106(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    return v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->downloadContent(Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    return-object p0
.end method

.method private createItemFromMap(Ljava/util/Map;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;"
        }
    .end annotation

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;-><init>()V

    const-string v1, "sellId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "skuAlias_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc2"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Sku Mapping] SellID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | SKU="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    :goto_0
    const-string v1, "sku"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    :cond_3
    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_title:Ljava/lang/String;

    :cond_4
    const-string v1, "consumable"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->NONCONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    :goto_1
    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_type:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    :cond_6
    const-string v1, "desc"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_description:Ljava/lang/String;

    :cond_7
    const-string v1, "packUrl"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_metaDataUrl:Ljava/lang/String;

    :cond_8
    const-string v1, "free"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_isFree:Z

    :cond_9
    iget-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "binaryPack"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    const-string v2, "binaryData"

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-object v0
.end method

.method private downloadContent(Ljava/lang/String;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p1

    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;

    invoke-direct {v1, p0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$13;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2, v1}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    return-void

    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid url: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getDownloadUrlForItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    .locals 3

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$11;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;)V

    new-instance p1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;

    invoke-direct {p1, p0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$12;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V

    new-instance p2, Lcom/ea/nimble/SynergyRequest;

    const-string v1, "/product/api/core/getDownloadItemUrl"

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p2, v1, v2, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public downloadItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V
    .locals 1

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;

    invoke-direct {v0, p0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$6;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$DataCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getDownloadUrlForItem(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V

    return-void
.end method

.method public getCategories(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;)V
    .locals 4

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$9;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$9;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$10;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CategoryCallback;)V

    new-instance p1, Lcom/ea/nimble/SynergyRequest;

    const-string v2, "/product/api/core/getMTXGameCategories"

    sget-object v3, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p1, v2, v3, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method

.method public getItemCatalog(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
    .locals 4

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$1;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$2;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V

    new-instance p1, Lcom/ea/nimble/SynergyRequest;

    const-string v2, "/m/shop/mobilecash/info"

    sget-object v3, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p1, v2, v3, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyIdManager;->getAuthenticatorIdentifier()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Authorization"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0}, Lcom/ea/nimble/HttpRequest;-><init>()V

    iput-object v2, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    iput-object v0, p1, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method

.method public getItemSkuPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SynergyCatalog"

    return-object v0
.end method

.method public getNonce(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    .locals 4

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$4;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$4;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$5;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V

    new-instance p1, Lcom/ea/nimble/SynergyRequest;

    const-string v2, "/drm/api/core/getNonce"

    sget-object v3, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p1, v2, v3, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method

.method public getPurchasedItems(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;)V
    .locals 4

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$7;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$7;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)V

    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$8;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$8;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemSkuCallback;)V

    new-instance p1, Lcom/ea/nimble/SynergyRequest;

    const-string v2, "/drm/api/core/getPurchasedItems"

    sget-object v3, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {p1, v2, v3, v0}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    return-void
.end method

.method public getSellIdFromSku(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemSkuPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->isOnlyDecimalCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public loadBinaryDataForItems(Ljava/util/Collection;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;",
            ">;",
            "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Error: items already loading binary data"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    iget-object v2, v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    const-string v3, "binaryData"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getMetaDataUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->m_itemsLoadingBinaryData:I

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v2

    new-instance v4, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;

    invoke-direct {v4, p0, v0, p2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V

    const/4 v0, 0x0

    invoke-interface {v2, v3, v0, v4}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Error: Malformed item url: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
