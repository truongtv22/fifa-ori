.class public Lcom/beetalk/sdk/networking/service/BillingService;
.super Ljava/lang/Object;
.source "BillingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkPaymentEligibility(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/PaymentEligibility;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/service/BillingService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static commitGooglePayment(Landroid/content/Context;Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/billingclient/api/Purchase;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/beetalk/sdk/networking/model/CommitReq;->toParams(Lcom/android/billingclient/api/Purchase;IILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/service/BillingService$2;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/networking/service/BillingService$2;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/service/BillingService$1;

    invoke-direct {p1}, Lcom/beetalk/sdk/networking/service/BillingService$1;-><init>()V

    sget-object p2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1, p2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getEventPricing(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventPricingResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$14;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$14;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$13;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$13;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getLessIsMoreEvents(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/LessIsMoreEventsResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$16;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$16;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$15;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$15;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentAppItems(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/AppItemsResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$4;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$4;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$3;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$3;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentChannels(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$8;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$8;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$7;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$7;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPaymentRebates(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/RebatesResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$6;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$6;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$5;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$5;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getProductItems(Landroid/content/Context;Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->getApiVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lcom/beetalk/sdk/networking/service/BillingService;->getProductItemsV1(Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$20;

    invoke-direct {v0, p2}, Lcom/beetalk/sdk/networking/service/BillingService$20;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$19;

    invoke-direct {v0, p1, p0}, Lcom/beetalk/sdk/networking/service/BillingService$19;-><init>(Lcom/garena/pay/android/GGPayRequest;Landroid/content/Context;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v0, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getProductItemsV1(Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$18;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/networking/service/BillingService$18;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$17;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$17;-><init>(Lcom/garena/pay/android/GGPayRequest;)V

    sget-object p0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private static getSignatureKey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkPaymentEligibility$0(Ljava/lang/String;Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getMainPlatform()I

    move-result v0

    invoke-static {v1, v2, v0, p0, p1}, Lcom/garena/pay/android/data/PaymentEligibilityReqParams;->buildParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {p1, v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V

    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGooglePayEligibilityUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeStringSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    move-result-object p0

    iget-boolean p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    invoke-static {p0}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->parse(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No session found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static payEventCancel(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventCancelResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$10;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$10;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$9;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$9;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static payEventInit(Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/EventInitResp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$12;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/service/BillingService$12;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/networking/service/BillingService$11;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/service/BillingService$11;-><init>()V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method public static redeemRebateCard(Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask;

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-direct {v0, v1, p1, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    invoke-static {}, Lcom/beetalk/sdk/networking/service/BillingService;->getSignatureKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask;->setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRedeemURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->executeParallel(Ljava/lang/String;)V

    return-void
.end method
