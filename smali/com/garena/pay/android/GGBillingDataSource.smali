.class public Lcom/garena/pay/android/GGBillingDataSource;
.super Ljava/lang/Object;
.source "GGBillingDataSource.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/BillingClientStateListener;
.implements Ljava/io/Serializable;


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "#"

.field private static final RECONNECT_TIMER_MAX_TIME_MILLISECONDS:J = 0xdbba0L

.field private static final RECONNECT_TIMER_START_MILLISECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "Garena MSDK:GGBillingDataSource"

.field private static final handler:Landroid/os/Handler;

.field private static volatile sInstance:Lcom/garena/pay/android/GGBillingDataSource;


# instance fields
.field private final app:Landroid/app/Application;

.field private final billingClient:Lcom/android/billingclient/api/BillingClient;

.field private final billingSetupComplete:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/android/billingclient/api/BillingResult;",
            ">;"
        }
    .end annotation
.end field

.field private final lastUserInfoRecord:Lcom/garena/pay/android/data/UserInfoRecord;

.field private reconnectMilliseconds:J

.field userToHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/garena/pay/android/GGBillingDataSource;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/garena/pay/android/data/UserInfoRecord;

    invoke-direct {v0}, Lcom/garena/pay/android/data/UserInfoRecord;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->lastUserInfoRecord:Lcom/garena/pay/android/data/UserInfoRecord;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->userToHandlerMap:Ljava/util/Map;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->reconnectMilliseconds:J

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource;->app:Landroid/app/Application;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/garena/pay/android/GGBillingDataSource;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/garena/pay/android/GGBillingDataSource;Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->doConsume(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/garena/pay/android/GGBillingDataSource;Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->doAcknowledge(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/garena/pay/android/GGBillingDataSource;Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->isSubscription(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/garena/pay/android/GGBillingDataSource;Ljava/util/Collection;)Lbolts/Task;
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->processPurchases(Ljava/util/Collection;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->userToHandlerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-virtual {v1, p1, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private doAcknowledge(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$5;

    invoke-direct {v1, p0, v0}, Lcom/garena/pay/android/GGBillingDataSource$5;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Lbolts/TaskCompletionSource;)V

    invoke-virtual {p0, p1, v1}, Lcom/garena/pay/android/GGBillingDataSource;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    invoke-virtual {p1}, Lbolts/Task;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private doCommit(Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/beetalk/sdk/networking/service/BillingService;->commitGooglePayment(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/garena/pay/android/GGBillingDataSource$2;

    invoke-direct {p2, p0}, Lcom/garena/pay/android/GGBillingDataSource$2;-><init>(Lcom/garena/pay/android/GGBillingDataSource;)V

    invoke-virtual {p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private doConsume(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$4;

    invoke-direct {v1, p0, v0}, Lcom/garena/pay/android/GGBillingDataSource$4;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Lbolts/TaskCompletionSource;)V

    invoke-virtual {p0, p1, v1}, Lcom/garena/pay/android/GGBillingDataSource;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    invoke-virtual {p1}, Lbolts/Task;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/garena/pay/android/GGBillingDataSource;
    .locals 2

    sget-object v0, Lcom/garena/pay/android/GGBillingDataSource;->sInstance:Lcom/garena/pay/android/GGBillingDataSource;

    if-nez v0, :cond_1

    const-class v0, Lcom/garena/pay/android/GGBillingDataSource;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/garena/pay/android/GGBillingDataSource;->sInstance:Lcom/garena/pay/android/GGBillingDataSource;

    if-nez v1, :cond_0

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/GGBillingDataSource;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/garena/pay/android/GGBillingDataSource;->sInstance:Lcom/garena/pay/android/GGBillingDataSource;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/garena/pay/android/GGBillingDataSource;->sInstance:Lcom/garena/pay/android/GGBillingDataSource;

    return-object p0
.end method

.method private googleQueryPurchases(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$10;

    invoke-direct {v1, p0, v0}, Lcom/garena/pay/android/GGBillingDataSource$10;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Lbolts/TaskCompletionSource;)V

    invoke-virtual {p0, p1, v1}, Lcom/garena/pay/android/GGBillingDataSource;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    invoke-virtual {p1}, Lbolts/Task;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private isSubscription(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->isSubscription(Ljava/lang/String;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private isSubscription(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "9999"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.test.purchased"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "subs"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/garena/pay/android/GGBillingDataSource;->querySkuDetails(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$6;

    invoke-direct {v1, p0, p1}, Lcom/garena/pay/android/GGBillingDataSource$6;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private isSubscriptionSupported()Z
    .locals 4

    const-string v0, "subscriptions"

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/GGBillingDataSource;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSubscriptionSupported() error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processPurchase(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/Purchase;",
            ")",
            "Lbolts/Task<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/garena/pay/android/GGBillingDataSource;->app:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/beetalk/sdk/helper/Security;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.test.purchased"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "9999"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v2

    if-eqz v5, :cond_8

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_8

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v7, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "User accountId doesn\'t match with the purchased item. Skip "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    const-string v0, "#"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v1, :cond_9

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/garena/pay/android/GGBillingDataSource;->lastUserInfoRecord:Lcom/garena/pay/android/data/UserInfoRecord;

    invoke-virtual {v2}, Lcom/garena/pay/android/data/UserInfoRecord;->getRecord()Lcom/garena/pay/android/data/UserInfoRecord$UserInfo;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "User info cannot be found. Skip "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_6
    iget-object v6, v2, Lcom/garena/pay/android/data/UserInfoRecord$UserInfo;->openId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "User openId doesn\'t match. Skip "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_7
    iget v3, v2, Lcom/garena/pay/android/data/UserInfoRecord$UserInfo;->serverId:I

    iget v0, v2, Lcom/garena/pay/android/data/UserInfoRecord$UserInfo;->roleId:I

    goto :goto_2

    :cond_8
    :goto_1
    return-object v1

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-nez v5, :cond_a

    const-string v5, ""

    :cond_a
    invoke-direct {p0, p1, v3, v0, v5}, Lcom/garena/pay/android/GGBillingDataSource;->doCommit(Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$3;

    invoke-direct {v1, p0, p1, v4}, Lcom/garena/pay/android/GGBillingDataSource$3;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Lcom/android/billingclient/api/Purchase;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_b
    :goto_3
    return-object v1
.end method

.method private processPurchased()Lbolts/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Continuation<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/garena/pay/android/GGBillingDataSource$9;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/GGBillingDataSource$9;-><init>(Lcom/garena/pay/android/GGBillingDataSource;)V

    return-object v0
.end method

.method private processPurchases(Ljava/util/Collection;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/garena/pay/android/GGBillingDataSource;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/cache/PayCachePreference;->hit(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/beetalk/sdk/cache/PendingPayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PendingPayCachePreference;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/beetalk/sdk/cache/PendingPayCachePreference;->needCommitPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/garena/pay/android/GGBillingDataSource;->processPurchase(Lcom/android/billingclient/api/Purchase;)Lbolts/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object p1

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$8;

    invoke-direct {v1, p0, v0}, Lcom/garena/pay/android/GGBillingDataSource$8;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private querySkuDetails(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance p2, Lcom/garena/pay/android/GGBillingDataSource$7;

    invoke-direct {p2, p0, v0}, Lcom/garena/pay/android/GGBillingDataSource$7;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Lbolts/TaskCompletionSource;)V

    invoke-virtual {p0, p1, p2}, Lcom/garena/pay/android/GGBillingDataSource;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    invoke-virtual {p1}, Lbolts/Task;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private retryBillingServiceConnectionWithExponentialBackoff()V
    .locals 4

    sget-object v0, Lcom/garena/pay/android/GGBillingDataSource;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$1;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/GGBillingDataSource$1;-><init>(Lcom/garena/pay/android/GGBillingDataSource;)V

    iget-wide v2, p0, Lcom/garena/pay/android/GGBillingDataSource;->reconnectMilliseconds:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->reconnectMilliseconds:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xdbba0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->reconnectMilliseconds:J

    return-void
.end method


# virtual methods
.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string p2, "acknowledgePurchase: billingSetupIncomplete"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string p2, "consumeAsync: billingSetupIncomplete"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getBillingSetupComplete()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/android/billingclient/api/BillingResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string v0, "isFeatureSupported: billingSetupIncomplete"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string p2, "launchBillingFlow: billingSetupIncomplete"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBillingServiceDisconnected()V
    .locals 3

    sget-object v0, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string v1, "onBillingServiceDisconnected, retrying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/garena/pay/android/GGBillingDataSource;->retryBillingServiceConnectionWithExponentialBackoff()V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onBillingSetupFinished: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->reconnectMilliseconds:J

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/garena/pay/android/GGBillingDataSource;->retryBillingServiceConnectionWithExponentialBackoff()V

    :goto_0
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    sget-object v1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Billing Result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGBillingDataSource;->processPurchases(Ljava/util/Collection;)Lbolts/Task;

    move-result-object p1

    invoke-direct {p0}, Lcom/garena/pay/android/GGBillingDataSource;->processPurchased()Lbolts/Continuation;

    move-result-object p2

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    goto :goto_0

    :cond_1
    const/4 p2, 0x7

    if-ne v0, p2, :cond_2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/garena/pay/android/GGBillingDataSource;->queryPurchasesAsync()Lbolts/Task;

    move-result-object p1

    invoke-direct {p0}, Lcom/garena/pay/android/GGBillingDataSource;->processPurchased()Lbolts/Continuation;

    move-result-object p2

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-ne v0, p2, :cond_3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "User cancelled payment"

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1, p2}, Lcom/garena/pay/android/GGBillingDataSource;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Error Recd."

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-direct {p0, p1, p2}, Lcom/garena/pay/android/GGBillingDataSource;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    :goto_0
    return-void
.end method

.method public queryPurchasesAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string v1, "queryPurchasesAsync called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "inapp"

    invoke-direct {p0, v1}, Lcom/garena/pay/android/GGBillingDataSource;->googleQueryPurchases(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/garena/pay/android/GGBillingDataSource;->isSubscriptionSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "subs"

    invoke-direct {p0, v1}, Lcom/garena/pay/android/GGBillingDataSource;->googleQueryPurchases(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/garena/pay/android/GGBillingDataSource$12;

    invoke-direct {v2, p0, v0}, Lcom/garena/pay/android/GGBillingDataSource$12;-><init>(Lcom/garena/pay/android/GGBillingDataSource;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/GGBillingDataSource$11;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/GGBillingDataSource$11;-><init>(Lcom/garena/pay/android/GGBillingDataSource;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string p2, "queryPurchasesAsync: billingSetupIncomplete"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingSetupComplete:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    const-string p2, "querySkuDetailsAsync: billingSetupIncomplete"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public registerOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/garena/pay/android/GGBillingDataSource;->userToHandlerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/garena/pay/android/GGBillingDataSource;->userToHandlerMap:Ljava/util/Map;

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Google Handler added: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/garena/pay/android/GGBillingDataSource;->userToHandlerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/garena/pay/android/GGBillingDataSource;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Google Handler removed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateUserInfo(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource;->lastUserInfoRecord:Lcom/garena/pay/android/data/UserInfoRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/garena/pay/android/data/UserInfoRecord;->update(Ljava/lang/String;II)V

    return-void
.end method
