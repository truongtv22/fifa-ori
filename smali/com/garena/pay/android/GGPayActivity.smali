.class public Lcom/garena/pay/android/GGPayActivity;
.super Landroid/app/Activity;
.source "GGPayActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GGPayActivity"


# instance fields
.field private client:Lcom/garena/pay/android/GGPayClient;

.field private request:Lcom/garena/pay/android/GGPayRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/garena/pay/android/GGPayActivity;)Lcom/garena/pay/android/GGPayRequest;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    return-object p0
.end method

.method static synthetic access$100(Lcom/garena/pay/android/GGPayActivity;Lcom/beetalk/sdk/data/Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/GGPayActivity;->onPaymentComplete(Lcom/beetalk/sdk/data/Result;)V

    return-void
.end method

.method private initView()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/garena/msdk/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/GGPayActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private onPaymentComplete(Lcom/beetalk/sdk/data/Result;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/Result;->getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/data/Result;->isError(Lcom/beetalk/sdk/data/Result$ResultCode;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.garena.pay.android.extras.result"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/garena/pay/android/GGPayActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayActivity;->finish()V

    const p1, 0x10a0001

    invoke-virtual {p0, v1, p1}, Lcom/garena/pay/android/GGPayActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayActivity;->client:Lcom/garena/pay/android/GGPayClient;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGPayClient;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "GGPayActivity onCreate() start..."

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/garena/pay/android/GGPayActivity;->initView()V

    const-string v1, "com.garena.pay.android.extras.pay_request"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/garena/pay/android/GGPayRequest;

    iput-object p1, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/garena/pay/android/GGPayRequest;

    iput-object p1, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    :goto_0
    iget-object p1, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    if-nez p1, :cond_1

    const-string p1, "GGPayActivity no request to process, finish..."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayActivity;->finish()V

    return-void

    :cond_1
    new-instance v1, Lcom/garena/pay/android/GGPayClient;

    invoke-direct {v1, p1}, Lcom/garena/pay/android/GGPayClient;-><init>(Lcom/garena/pay/android/GGPayRequest;)V

    iput-object v1, p0, Lcom/garena/pay/android/GGPayActivity;->client:Lcom/garena/pay/android/GGPayClient;

    invoke-virtual {v1, p0}, Lcom/garena/pay/android/GGPayClient;->setActivity(Lcom/garena/pay/android/GGPayActivity;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGPayActivity;->client:Lcom/garena/pay/android/GGPayClient;

    new-instance v1, Lcom/garena/pay/android/GGPayActivity$1;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/GGPayActivity$1;-><init>(Lcom/garena/pay/android/GGPayActivity;)V

    invoke-virtual {p1, v1}, Lcom/garena/pay/android/GGPayClient;->setPaymentCompleteListener(Lcom/garena/pay/android/GGPayClient$OnPaymentComplete;)V

    const-string p1, "GGPayActivity onCreate() end..."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/garena/pay/android/GGPayActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/garena/pay/android/GGPayActivity;->client:Lcom/garena/pay/android/GGPayClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/pay/android/GGPayClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GGPayActivity onNewIntent"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/garena/pay/android/GGPayActivity;->client:Lcom/garena/pay/android/GGPayClient;

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayClient;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GGPayActivity onPause()"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->getInstance()Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/garena/pay/android/GGPayActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/garena/pay/android/GGPayActivity;->client:Lcom/garena/pay/android/GGPayClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/GGPayClient;->processPayRequest(Lcom/garena/pay/android/GGPayRequest;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.garena.pay.android.extras.pay_request"

    iget-object v1, p0, Lcom/garena/pay/android/GGPayActivity;->request:Lcom/garena/pay/android/GGPayRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/garena/pay/android/GGPayActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-direct {v0}, Lcom/beetalk/sdk/cache/RedeemCache;-><init>()V

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/RedeemCache;->clearRedeemCache()V

    return-void
.end method
