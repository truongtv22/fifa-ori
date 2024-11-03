.class Lcom/garena/pay/android/GoogleIabInventoryScanner;
.super Ljava/lang/Object;
.source "GoogleIabInventoryScanner.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static startScan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/garena/pay/android/GoogleIapInventoryScanCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/garena/pay/android/helper/GMSHelper;->getCurrentGooglePlayServiceState(Landroid/content/Context;)Lcom/garena/android/model/Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/garena/android/model/Result;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/garena/pay/android/helper/GMSHelper;->printGMSAvailabilityResult(Lcom/garena/android/model/Result;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p5, p0}, Lcom/garena/pay/android/GoogleIapInventoryScanCallback;->onResult(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v0, Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {v0}, Lcom/garena/pay/android/GGPayRequest;-><init>()V

    new-instance v1, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    invoke-direct {v1}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setBuyerId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->build()Lcom/garena/pay/android/data/GGPayment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setClientPaymentRequest(Lcom/garena/pay/android/data/GGPayment;)V

    new-instance p1, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->consumeAll()Lbolts/Task;

    move-result-object p0

    new-instance p2, Lcom/garena/pay/android/GoogleIabInventoryScanner$1;

    invoke-direct {p2, p5, p1}, Lcom/garena/pay/android/GoogleIabInventoryScanner$1;-><init>(Lcom/garena/pay/android/GoogleIapInventoryScanCallback;Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V

    sget-object p1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method
