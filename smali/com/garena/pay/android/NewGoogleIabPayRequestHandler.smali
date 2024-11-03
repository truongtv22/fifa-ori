.class public Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;
.super Lcom/garena/pay/android/GGPayRequestHandler;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "google-iab"

.field private static final TIMEOUT:I = 0xa

.field private static final serialVersionUID:J = 0x556a74c81a32147dL


# instance fields
.field private final billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

.field private final billingSetupObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/android/billingclient/api/BillingResult;",
            ">;"
        }
    .end annotation
.end field

.field private transient connectTcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final transient context:Landroid/content/Context;

.field private transient lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field public openId:Ljava/lang/String;

.field private transient payTcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource<",
            "Lcom/beetalk/sdk/data/Result;",
            ">;"
        }
    .end annotation
.end field

.field public productId:Ljava/lang/String;

.field public final roleId:Ljava/lang/Integer;

.field public final serverId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayRequestHandler;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/garena/pay/android/GGBillingDataSource;->getInstance(Landroid/app/Application;)Lcom/garena/pay/android/GGBillingDataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$1;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V

    iput-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingSetupObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGBillingDataSource;->getBillingSetupComplete()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    invoke-direct {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->addReleaseObserver(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->openId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/garena/pay/android/GGBillingDataSource;->updateUserInfo(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Landroidx/lifecycle/LifecycleObserver;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    return-object p0
.end method

.method static synthetic access$002(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/LifecycleObserver;
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Lbolts/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    return-object p0
.end method

.method static synthetic access$200(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Lcom/garena/pay/android/GGBillingDataSource;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    return-object p0
.end method

.method static synthetic access$400(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;)Lbolts/Task;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->launchBillingFlow(Landroid/app/Activity;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->querySkuDetails(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private addReleaseObserver(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$2;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private connectToPlayBillingService()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "google-iab"

    const-string v1, "connectToPlayBillingService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGBillingDataSource;->getBillingSetupComplete()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private connectWithTimeout()Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbolts/CancellationTokenSource;

    invoke-direct {v0}, Lbolts/CancellationTokenSource;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lbolts/Task;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v0}, Lcom/garena/pay/android/helper/Utils;->newTimeoutTask(JLjava/util/concurrent/TimeUnit;Lbolts/CancellationTokenSource;)Lbolts/Task;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectToPlayBillingService()Lbolts/Task;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->whenAnyResult(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$9;

    invoke-direct {v2, p0, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$9;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Lbolts/CancellationTokenSource;)V

    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getSkuDetailsById(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->isSubscription(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

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

    invoke-virtual {p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->getPaymentChannel()Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    move-result-object v0

    const-string v1, "9999"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.test.purchased"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getDenomination(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$Denomination;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$Denomination;->isSubscription()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "subs"

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->querySkuDetails(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$5;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getSkuDetailsById$3(Lbolts/TaskCompletionSource;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "querySkuDetailsAsync, responseCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skuDetailsList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google-iab"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "SkuDetails is not found, with Id: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "query skuDetails by id failed1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$launchBillingFlow$0(Lcom/android/billingclient/api/SkuDetails;Lbolts/Task;)Lcom/android/billingclient/api/SkuDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/PaymentEligibility;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->isFailure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->eligible:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "payment eligibility result: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->eligible:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/model/PaymentEligibility;->getResultCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "payment is not eligible"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$launchBillingFlow$1(Ljava/lang/String;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid purchase, detect incorrect currency "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/beetalk/sdk/networking/service/BillingService;->checkPaymentEligibility(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object p0

    new-instance p1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/billingclient/api/SkuDetails;)V

    invoke-virtual {p0, p1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private launchBillingFlow(Landroid/app/Activity;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/GGPayRequest;",
            ")",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchBillingFlow, productId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google-iab"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lbolts/TaskCompletionSource;

    invoke-direct {p1}, Lbolts/TaskCompletionSource;-><init>()V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "invalid productId"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "9999"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, "android.test.purchased"

    :cond_1
    invoke-virtual {p3}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/garena/pay/android/GGPayRequest;->getChosenDenomination()Lcom/garena/pay/android/data/GGPayment$Denomination;

    move-result-object v1

    iget-object v1, v1, Lcom/garena/pay/android/data/GGPayment$Denomination;->priceCode:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->getSkuDetailsById(Ljava/lang/String;)Lbolts/Task;

    move-result-object p2

    new-instance v2, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p2

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;Landroid/app/Activity;)V

    invoke-virtual {p2, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method private onPurchaseFinished(Lcom/android/billingclient/api/Purchase;Lcom/beetalk/sdk/networking/model/CommitResp;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "app_point_amount"

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/CommitResp;->getAppPointAmount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/CommitResp;->getCurrentCommitTxnId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "txn_id"

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "item_name"

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/CommitResp;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rebate_card_id"

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/CommitResp;->getRebateCardId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "remaining_days"

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/CommitResp;->getRemainingDays()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "quantity"

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/pay/android/helper/Utils;->convertBundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/beetalk/sdk/data/Result;->createSuccessResult(Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lcom/beetalk/sdk/data/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    iget-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->openId:Ljava/lang/String;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/garena/pay/android/GGBillingDataSource;->unregisterOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    return-void
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

    iget-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;

    invoke-direct {v1, p0, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$8;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Lbolts/TaskCompletionSource;)V

    invoke-virtual {p2, p1, v1}, Lcom/garena/pay/android/GGBillingDataSource;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)Z

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

.method private setConnectionResult(ZLjava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "google-iab"

    const-string v1, "Wrong state."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-static {v1, p2, p1}, Lcom/beetalk/sdk/data/Result;->createErrorResult(Lcom/garena/pay/android/GGPayRequest;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    iget-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->openId:Ljava/lang/String;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/garena/pay/android/GGBillingDataSource;->unregisterOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method consumeAll()Lbolts/Task;
    .locals 2
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

    invoke-direct {p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectWithTimeout()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$6;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$6;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/garena/msdk/R$string;->text_google_in_app_purchases:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageResId()I
    .locals 1

    sget v0, Lcom/garena/msdk/R$drawable;->msdk_googleplay_icon:I

    return v0
.end method

.method synthetic lambda$getSkuDetailsById$4$com-garena-pay-android-NewGoogleIabPayRequestHandler(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    invoke-virtual {p2}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "subs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "inapp"

    :goto_1
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p2

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    new-instance v2, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;-><init>(Lbolts/TaskCompletionSource;Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lcom/garena/pay/android/GGBillingDataSource;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "query skuDetails by id failed2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :cond_2
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$launchBillingFlow$2$com-garena-pay-android-NewGoogleIabPayRequestHandler(Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;Landroid/app/Activity;Lbolts/Task;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p4}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/billingclient/api/SkuDetails;

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/Security;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/beetalk/sdk/cache/PayCachePreference;->getInstance(Landroid/content/Context;)Lcom/beetalk/sdk/cache/PayCachePreference;

    move-result-object v3

    invoke-virtual {p4}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, v2, p1, p4}, Lcom/beetalk/sdk/cache/PayCachePreference;->saveTransactionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "#"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object p4

    sget-object v3, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v4, "google-iab"

    if-ne p4, v3, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v3, "Original key: "

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Account ID: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment;->isOfferPersonalized()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/garena/pay/android/GGBillingDataSource;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onSkuDetailsResponse, res.getResponseCode() = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "google-iab"

    const-string v1, "onBillingServiceDisconnected, reconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "google-iab"

    if-nez v0, :cond_0

    const-string p1, "onBillingSetupFinished successfully"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->setConnectionResult(ZLjava/lang/Exception;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->setConnectionResult(ZLjava/lang/Exception;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->setConnectionResult(ZLjava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method onDestroy()V
    .locals 5

    const-string v0, "google-iab"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectTcs:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->openId:Ljava/lang/String;

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/garena/pay/android/GGBillingDataSource;->unregisterOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGBillingDataSource;->getBillingSetupComplete()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingSetupObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public processPurchased(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/beetalk/sdk/networking/model/CommitResp;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->productId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "android.test.purchased"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    const-string v2, "9999"

    iget-object v6, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->productId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->productId:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object p1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_BINDING:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result p1

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;->getResultCode()I

    move-result v2

    if-ne p1, v2, :cond_4

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_SUBSCRIPTION_BINDING:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_4

    :cond_4
    if-eqz v0, :cond_5

    sget-object p1, Lcom/beetalk/sdk/networking/ResultCode;->PENDING_TRANSACTION:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {p1}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result p1

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;->getResultCode()I

    move-result v2

    if-ne p1, v2, :cond_5

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_PENDING_TRANSACTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;->isError()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7

    const-string p1, "Pending transaction"

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_PENDING_TRANSACTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    if-eq p1, v5, :cond_8

    const-string p1, "Purchase state is incorrect."

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_GENERAL_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_4

    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->onPurchaseFinished(Lcom/android/billingclient/api/Purchase;Lcom/beetalk/sdk/networking/model/CommitResp;)V

    goto :goto_4

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/CommitResp;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    const-string p1, "Failed to commit"

    :goto_3
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_GENERAL_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    :goto_4
    return-void

    :cond_b
    const-string p1, ""

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_GENERAL_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->complain(Ljava/lang/String;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method querySkuDetails(Ljava/util/List;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectWithTimeout()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method startPay(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/data/Result;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->productId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Processing another product."

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->payTcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getOpenId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->openId:Ljava/lang/String;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->billingDataSource:Lcom/garena/pay/android/GGBillingDataSource;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->serverId:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->roleId:Ljava/lang/Integer;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/garena/pay/android/GGBillingDataSource;->registerOnPurchaseUpdatedListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V

    :cond_2
    iput-object p3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->productId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->connectWithTimeout()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;)V

    sget-object p1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, p1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    new-instance p2, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;

    invoke-direct {p2, p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$3;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V

    sget-object p3, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2, p3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
