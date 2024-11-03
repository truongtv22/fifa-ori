.class public Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;
.super Lcom/ea/nimble/Component;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/mtx/INimbleMTX;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;,
        Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;,
        Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;
    }
.end annotation


# static fields
.field private static final CACHE_EXPIRE_TIME:D = 3600.0

.field private static final CACHE_TIMESTAMP_KEY:Ljava/lang/String; = "cacheTimestamp"

.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.mtx.gamesdk"

.field private static CURRENCY_CODE:Ljava/lang/String; = ""

.field private static final DEFERRED_CALLBACK_DELAY:D = 0.1

.field private static final MAX_REQUEST_RETRY_DELAY:D = 300.0

.field private static final PERSISTENCE_CATALOG_ITEMS:Ljava/lang/String; = "catalogItems"


# instance fields
.field mCatalogItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field mPendingTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private m_cacheTimestamp:Ljava/lang/Long;

.field private m_itemRestorer:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

.field private m_restoreInProgress:Z

.field m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field private m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

.field private m_transactionIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_itemRestorer:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionIndex:I

    :try_start_0
    const-string v0, "%ef%bf%a5"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->CURRENCY_CODE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restorePurchasedTransactionsImpl(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->updateTransactionRecordState(Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)I
    .locals 0

    iget p0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;I)I
    .locals 0

    iput p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restoreSdkProgressOneByOne(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->CURRENCY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->onCatalogItemsRefreshed(Ljava/util/List;ZLjava/lang/Exception;)V

    return-void
.end method

.method private broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/os/Bundle;

    if-eqz p4, :cond_0

    invoke-direct {p1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string p4, "result"

    if-nez p2, :cond_1

    const-string p2, "1"

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "error"

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "0"

    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_2

    const-string p2, "TRANSACTION_ID"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private deferredConsumeCallback(Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 2

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$8;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    const-wide p1, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/mtx/INimbleMTX;
    .locals 1

    const-string v0, "com.ea.nimble.mtx.gamesdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/INimbleMTX;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;-><init>()V

    const-string v1, "com.ea.nimble.mtx.gamesdk"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method private isCacheExpired()Z
    .locals 5

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_cacheTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_cacheTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTransactionPending()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->isTransactionPending(Z)Z

    move-result v0

    return v0
.end method

.method private isTransactionPending(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private loadFromPersistence()V
    .locals 4

    const-string v0, "com.ea.nimble.mtx.gamesdk"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const-string v1, "catalogItems"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/HashMap;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Restored %d catalog items from persistence."

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v1, "cacheTimestamp"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_cacheTimestamp:Ljava/lang/Long;

    return-void
.end method

.method private onCatalogItemsRefreshed(Ljava/util/List;ZLjava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;",
            ">;Z",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_2

    const-string v1, "Catalog Updated."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->saveCatalogToPersistence()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error updating Catalog: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, p1

    :goto_2
    const-string p3, "nimble.notification.mtx.refreshcatalogfinished"

    invoke-direct {p0, p3, p2, p1, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private restorePurchasedTransactionsImpl(Z)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "restorePurchasedTransactionsImpl"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    if-eqz v1, :cond_0

    const-string p1, "restorePurchasedTransactions called while restore already in progress. Aborting."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->isTransactionPending(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "restorePurchasedTransactions called while transactions still pending."

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "pendingTransactions: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    const-string v0, "Can\'t restore purchases while transaction is pending"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string p1, "restorePurchasedTransactions called."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "chimble.synergy.sdk"

    invoke-static {p1}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nexon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    invoke-direct {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restoreSdkProgress()V

    return-void
.end method

.method private restoreSdkProgress()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/GameSdk;->getComponent()Lcom/ea/nimble/INimbleGameSdk;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INimbleGameSdk;->getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$4;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->requestRestoreItems(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->restore(Landroid/app/Activity;)V

    return-void
.end method

.method private restoreSdkProgressOneByOne(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;

    if-nez v0, :cond_1

    const-string p1, "restorePurchasedTransactionsImpl null"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "stamp_token"

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->getStampToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->getLogPrice()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "price"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "currency_unit"

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$RestoreItemData;->getProductId()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restorePurchasedTransactionsImpl ----productid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v4

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    const-string v3, "synergy.product"

    invoke-interface {v2, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/m/shop/mobilecash/restore/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;

    invoke-direct {v8, p0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/HashMap;)V

    new-instance v9, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;

    invoke-direct {v9, p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$5;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/List;)V

    invoke-interface/range {v4 .. v9}, Lcom/ea/nimble/ISynergyNetwork;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/ISynergyRequest$IJsonData;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-void
.end method

.method private saveCatalogToPersistence()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "com.ea.nimble.mtx.gamesdk"

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Saving %d catalog items to persistence."

    invoke-static {p0, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "catalogItems"

    invoke-virtual {v1, v2, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_cacheTimestamp:Ljava/lang/Long;

    const-string v2, "cacheTimestamp"

    invoke-virtual {v1, v2, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1}, Lcom/ea/nimble/Persistence;->synchronize()V

    return-void
.end method

.method private savePendingTransactionsToPersistence()V
    .locals 0

    return-void
.end method

.method private updateTransactionRecordState(Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V
    .locals 0

    iput-object p2, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTimeStamp:Ljava/util/Date;

    invoke-direct {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->savePendingTransactionsToPersistence()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Component cleanup"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public finalizeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;
    .locals 7

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not find transaction by Id to perform finalize, id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-direct {p2, v0, p1}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p2

    :cond_0
    iget-object v2, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionState:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Finalize called on unfinished transaction, for sku, %s."

    invoke-static {p0, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getError()Ljava/lang/Exception;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "com.ea.nimble.tracking"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Lcom/ea/nimble/tracking/ITracking;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "NIMBLESTANDARD::KEY_MTX_ORDERID"

    iget-object v5, v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getPriceDecimal()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NIMBLESTANDARD::KEY_MTX_PRICE"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v4

    const-string v5, "localCurrency"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "NIMBLESTANDARD::KEY_MTX_CURRENCY"

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v4, "Currency information not currently available; using local currency instead."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v4, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Currency;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

    invoke-interface {v2, v1, v3}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-direct {p0, v0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->updateTransactionRecordState(Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getError()Ljava/lang/Exception;

    if-eqz p2, :cond_4

    invoke-interface {p2, v0}, Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;->finalizeComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAvailableCatalogItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/NimbleCatalogItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->isCacheExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1SkuComparator;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1SkuComparator;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.mtx.gamesdk"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "MTX GameSDK"

    return-object v0
.end method

.method public getPendingTransactions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPurchasedTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRecoveredTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTransaction(Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXTransaction;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    return-object p1
.end method

.method public itemGranted(Ljava/lang/String;Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;)Lcom/ea/nimble/Error;
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p1, "itemGranted called with empty callback parameter."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    const-string p3, "Missing callback in itemGranted call."

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    if-nez v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not find transaction by Id to perform item grant, id: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string p3, "Could not find transaction to perform item grant."

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object p1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object p1

    sget-object v3, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    if-ne p1, v3, :cond_2

    sget-object p1, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    if-eq p2, p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Game called item grant for SKU, %s, and indicated NOT consumable, though cached catalog data indicates the item is a consumable."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getError()Ljava/lang/Exception;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const-string v0, "Transaction for item SKU, %s, granted by game, despite an error. Clearing error from transaction."

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    :cond_3
    sget-object p1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-direct {p0, v1, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->updateTransactionRecordState(Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;)V

    invoke-direct {p0, p3, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->deferredConsumeCallback(Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    return-object p2
.end method

.method public networkCallGetAvailableItems()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$7;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$7;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getItemCatalog(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nimble.notification.mtx.refreshcatalogfinished"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v3}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public networkCallGetAvailableItemsNexonGarena()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    new-instance v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$6;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getItemCatalog(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nimble.notification.mtx.refreshcatalogfinished"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v3}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)Lcom/ea/nimble/Error;
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "GameSdkMTX purchaseItem"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/GameSdk;->getComponent()Lcom/ea/nimble/INimbleGameSdk;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/INimbleGameSdk;->getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_1

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    const-string v0, "Missing purchase callback"

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->isTransactionPending()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "purchaseItem called while transactions still pending."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pendingTransactions: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v0, "Another transaction is still outstanding."

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_2
    iget-boolean v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    if-eqz v2, :cond_3

    const-string v2, "chimble.synergy.local"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p1, "purchaseItem called while restore is in progress."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v0, "Can\'t purchase item while restore is in progress."

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_3
    iget-object v2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    iget-object v3, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-interface {v2, v3, p1}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;->getCatalogItem(Ljava/util/HashMap;Ljava/lang/String;)Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;

    move-result-object v6

    if-nez v6, :cond_4

    const-string p1, "can`t find catalogInfo."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SKU:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v0, "Can`t find catalogInfo."

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_4
    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    const-string v3, "UserId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    new-instance v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    invoke-direct {v4}, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;-><init>()V

    iput-object p1, v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mItemSku:Ljava/lang/String;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->PURCHASE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v2, v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getPriceDecimal()F

    move-result v2

    iput v2, v4, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mPriceDecimal:F

    const-string v2, "chimble.synergy.sdk"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "purchaseItem SdkMode: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "nexon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "garena"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    new-instance v9, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;

    move-object v2, v9

    move-object v3, p0

    move-object v5, v6

    move-object v6, v1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$3;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;Lcom/ea/games/gamesdk/GameSdkInterface;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)V

    invoke-interface {v0, v8, p1, v9}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;->generateTransactionInfo(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V

    goto :goto_1

    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "purchaseItem catalogInfo.getAdditionalInfo(): "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p1

    const-string v2, "product_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "purchaseItem product_id: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;

    move-object v2, v9

    move-object v3, p0

    move-object v5, v1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$2;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;Lcom/ea/games/gamesdk/GameSdkInterface;Lcom/ea/nimble/mtx/gamesdk/GameSdkCatalogItem;ILcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)V

    invoke-interface {p1, v0, v9}, Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;->generateTransactionInfo(Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_7
    :goto_2
    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v0, "INimbleGameSdk is not set up"

    invoke-direct {p1, p2, v0}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1
.end method

.method public refreshAvailableCatalogItems()V
    .locals 5

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    const-string v2, "nimble.notification.mtx.refreshcatalogfinished"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    const-string v0, "refreshAvailable returning because there is no network connection"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyIdManager;->getAuthenticatorIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "refreshAvailable returning because there is no AuthenticatorIdentifier(SessionKey)."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "garena"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "tencent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->networkCallGetAvailableItems()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->networkCallGetAvailableItemsNexonGarena()V

    :cond_4
    :goto_1
    return-void
.end method

.method public restore()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Component restore"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    sget-object v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->GOOGLE:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    invoke-static {}, Lcom/ea/nimble/GameSdk;->getComponent()Lcom/ea/nimble/INimbleGameSdk;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/INimbleGameSdk;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROID"

    invoke-direct {v0, v1, v3, v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-direct {p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->loadFromPersistence()V

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    const-string v1, "nimble.notification.languageChange"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_itemRestorer:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->restoreItems()V

    :cond_0
    return-void
.end method

.method public restorePurchasedTransactions()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restorePurchasedTransactionsImpl(Z)V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Component resume"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_itemRestorer:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->restoreItems()V

    :cond_0
    return-void
.end method

.method public resumeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;
    .locals 0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "Resuming transaction id, %s."

    invoke-static {p0, p3, p2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string p3, "Null transaction ID"

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-boolean p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_restoreInProgress:Z

    if-eqz p2, :cond_1

    const-string p1, "resumeTransaction called while restore is in progress."

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string p3, "Can\'t resume transaction while restore is in progress."

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Resume called while transactions are pending: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string p3, "Another transaction is pending. It needs to finish and finalize first."

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_2
    iget-object p2, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mError:Ljava/lang/Exception;

    if-nez p2, :cond_3

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object p2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string p3, "Cannot resume a pending transaction with no error"

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    return-object p1

    :cond_3
    iget-object p1, p1, Lcom/ea/nimble/mtx/gamesdk/GameSdkTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->RESTORE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    if-ne p1, p2, :cond_4

    new-instance p1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object p2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string p3, "Cannot resume a restore transaction. Only Purchase transactions can be resumed."

    invoke-direct {p1, p2, p3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public setPlatformParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setup()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Component setup"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "chimble.synergy.local"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chimble.synergy.sdk"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdkMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/LocalTransactionGenerator;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/gamesdk/LocalTransactionGenerator;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    goto :goto_1

    :cond_0
    const-string v0, "nexon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "garena"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/gamesdk/RemoteTransactionGenerator;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_transactionGenerator:Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator;

    :goto_1
    return-void
.end method

.method public suspend()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Component suspend"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_itemRestorer:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->cancel()V

    :cond_0
    return-void
.end method

.method protected teardown()V
    .locals 2

    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nexon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->m_itemRestorer:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->cancel()V

    :cond_0
    return-void
.end method
