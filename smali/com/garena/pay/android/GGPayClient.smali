.class Lcom/garena/pay/android/GGPayClient;
.super Ljava/lang/Object;
.source "GGPayClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/GGPayClient$PaymentState;,
        Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4c53e6f29bca50ccL


# instance fields
.field private transient activity:Lcom/garena/pay/android/GGPayActivity;

.field private currentHandler:Lcom/garena/pay/android/GGPayRequestHandler;

.field private handlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/GGPayRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field private payRequest:Lcom/garena/pay/android/GGPayRequest;

.field private paymentChannels:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation
.end field

.field private transient paymentCompleteListener:Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;

.field private transient progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/garena/pay/android/GGPayRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->handlers:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->currentHandler:Lcom/garena/pay/android/GGPayRequestHandler;

    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->initHandlers()Lbolts/Task;

    return-void
.end method

.method static synthetic access$000(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->hideProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGPayClient;->failedToPay(Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/garena/pay/android/GGPayClient;->failedToPay(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/garena/pay/android/GGPayClient;Lcom/beetalk/sdk/data/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGPayClient;->notifyListener(Lcom/beetalk/sdk/data/Result;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayActivity;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGPayClient;->activity:Lcom/garena/pay/android/GGPayActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->resumePayment()V

    return-void
.end method

.method static synthetic access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    return-object p0
.end method

.method static synthetic access$400(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequestHandler;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGPayClient;->currentHandler:Lcom/garena/pay/android/GGPayRequestHandler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayRequestHandler;)Lcom/garena/pay/android/GGPayRequestHandler;
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient;->currentHandler:Lcom/garena/pay/android/GGPayRequestHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/garena/pay/android/GGPayClient;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGPayClient;->handlers:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object p0
.end method

.method static synthetic access$602(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->showChannels()V

    return-void
.end method

.method static synthetic access$800(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->showProducts()V

    return-void
.end method

.method static synthetic access$900(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->showProgress()V

    return-void
.end method

.method private failedToPay(Lcom/garena/pay/android/GGErrorCode;)V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/data/Result;->createErrorResult(Lcom/garena/pay/android/GGPayRequest;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGPayClient;->notifyListener(Lcom/beetalk/sdk/data/Result;)V

    return-void
.end method

.method private failedToPay(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-static {v0, p1, p2}, Lcom/beetalk/sdk/data/Result;->createErrorResult(Lcom/garena/pay/android/GGPayRequest;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGPayClient;->notifyListener(Lcom/beetalk/sdk/data/Result;)V

    return-void
.end method

.method private hideProgress()V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initHandlers()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->paymentChannels:Lbolts/Task;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->getInstance()Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->getPaymentChannels(Landroid/content/Context;ZLcom/garena/pay/android/GGPayRequest;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/garena/pay/android/GGPayClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/GGPayClient$$ExternalSyntheticLambda0;-><init>(Lcom/garena/pay/android/GGPayClient;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->paymentChannels:Lbolts/Task;

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->paymentChannels:Lbolts/Task;

    return-object v0
.end method

.method private notifyListener(Lcom/beetalk/sdk/data/Result;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->paymentCompleteListener:Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;->onPaymentComplete(Lcom/beetalk/sdk/data/Result;)V

    :cond_1
    return-void
.end method

.method private parseWebHandlers(Lcom/garena/pay/android/GGPayRequest;Lcom/beetalk/sdk/networking/model/ChannelsResp;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Lcom/beetalk/sdk/networking/model/ChannelsResp;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/GGPayRequestHandler;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "JSON From Payment Server %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getChannels()Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3116d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGPayRequest;->getClientPaymentRequest()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GGPayment;->getAppServerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/garena/pay/android/data/GGPayment;->getRoleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    move-object v2, v4

    :goto_1
    new-instance v5, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v6, p0, Lcom/garena/pay/android/GGPayClient;->activity:Lcom/garena/pay/android/GGPayActivity;

    invoke-direct {v5, v6, v4, v2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v5, v1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->setPaymentChannel(Lcom/garena/pay/android/data/GGPayment$PaymentChannel;)V

    invoke-virtual {v5}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->consumeAll()Lbolts/Task;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private resumePayment()V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->paymentChannels:Lbolts/Task;

    new-instance v1, Lcom/garena/pay/android/GGPayClient$2;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/GGPayClient$2;-><init>(Lcom/garena/pay/android/GGPayClient;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method private showChannels()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/garena/pay/android/view/GatewayView;->dismiss(Z)V

    invoke-static {v0}, Lcom/garena/pay/android/view/DenominationView;->dismiss(Z)V

    new-instance v0, Lcom/garena/pay/android/GGPayClient$3;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/GGPayClient$3;-><init>(Lcom/garena/pay/android/GGPayClient;)V

    invoke-static {v0}, Lcom/garena/pay/android/view/GatewayView;->setCallback(Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient;->handlers:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/garena/pay/android/view/GatewayView;->initialize(Landroid/app/Activity;Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/view/GatewayView;->showAtCenter(Landroid/view/View;)V

    return-void
.end method

.method private showProducts()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/garena/pay/android/view/GatewayView;->dismiss(Z)V

    invoke-static {v0}, Lcom/garena/pay/android/view/DenominationView;->dismiss(Z)V

    new-instance v0, Lcom/garena/pay/android/GGPayClient$4;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/GGPayClient$4;-><init>(Lcom/garena/pay/android/GGPayClient;)V

    invoke-static {v0}, Lcom/garena/pay/android/view/DenominationView;->setCallback(Lcom/garena/pay/android/view/DenominationView$DenominationCallback;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequest;->getDenominations()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGPayRequest;->getVirtualCurrencyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/garena/pay/android/view/DenominationView;->initialize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/pay/android/view/DenominationView;->showAtCenter(Landroid/view/View;)V

    return-void
.end method

.method private showProgress()V
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private startPayment(Lcom/garena/pay/android/GGPayRequest;)V
    .locals 2

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->showProgress()V

    iget-object p1, p0, Lcom/garena/pay/android/GGPayClient;->paymentChannels:Lbolts/Task;

    new-instance v0, Lcom/garena/pay/android/GGPayClient$1;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/GGPayClient$1;-><init>(Lcom/garena/pay/android/GGPayClient;)V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->activity:Lcom/garena/pay/android/GGPayActivity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->activity:Lcom/garena/pay/android/GGPayActivity;

    return-object v0
.end method

.method synthetic lambda$initHandlers$0$com-garena-pay-android-GGPayClient(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Response Recd from Server: %s"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/model/ChannelsResp;->getErrorCode()I

    move-result v1

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {p0, v1, v0}, Lcom/garena/pay/android/GGPayClient;->parseWebHandlers(Lcom/garena/pay/android/GGPayRequest;Lcom/beetalk/sdk/networking/model/ChannelsResp;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/networking/model/ChannelsResp;

    return-object p1
.end method

.method onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGPayClient$PaymentState;->previousStep()Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->resumePayment()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->handlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/GGPayRequestHandler;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->progress:Landroid/app/ProgressDialog;

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/garena/pay/android/view/DenominationView;->dismiss(Z)V

    return-void
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->currentHandler:Lcom/garena/pay/android/GGPayRequestHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequestHandler;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method processPayRequest(Lcom/garena/pay/android/GGPayRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->payRequest:Lcom/garena/pay/android/GGPayRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/garena/pay/android/GGPayClient;->resumePayment()V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

    iput-object v0, p0, Lcom/garena/pay/android/GGPayClient;->mPaymentState:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGPayClient;->startPayment(Lcom/garena/pay/android/GGPayRequest;)V

    :goto_1
    return-void
.end method

.method setActivity(Lcom/garena/pay/android/GGPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient;->activity:Lcom/garena/pay/android/GGPayActivity;

    return-void
.end method

.method setPaymentCompleteListener(Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient;->paymentCompleteListener:Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;

    return-void
.end method
