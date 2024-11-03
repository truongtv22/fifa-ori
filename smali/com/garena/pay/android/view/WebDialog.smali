.class public Lcom/garena/pay/android/view/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;,
        Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BACKGROUND_GRAY:I = -0x34000000

.field private static final CANCEL_URI:Ljava/lang/String; = "pay/channel/cancel"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x780

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x438

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field private static final REDIRECT_URI:Ljava/lang/String; = "pay/result?"


# instance fields
.field protected contentLayout:Landroid/view/ViewGroup;

.field private isDetached:Z

.field private listenerCalled:Z

.field private mContext:Landroid/content/Context;

.field protected needMargin:Z

.field private onCompleteListener:Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/Dialog;

.field private url:Ljava/lang/String;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garena/pay/android/view/WebDialog;->needMargin:Z

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/garena/pay/android/view/WebDialog;->needMargin:Z

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/garena/pay/android/view/WebDialog;->needMargin:Z

    iput-object p2, p0, Lcom/garena/pay/android/view/WebDialog;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/garena/pay/android/view/WebDialog;->needMargin:Z

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/garena/pay/android/view/WebDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/view/WebDialog;->sendCancelToListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/garena/pay/android/view/WebDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/view/WebDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/garena/pay/android/view/WebDialog;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->isWhitelisted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/garena/pay/android/view/WebDialog;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/garena/pay/android/view/WebDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/garena/pay/android/view/WebDialog;->isDetached:Z

    return p0
.end method

.method static synthetic access$500(Lcom/garena/pay/android/view/WebDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/view/WebDialog;->spinner:Landroid/app/Dialog;

    return-object p0
.end method

.method private getScaledSize(IFII)I
    .locals 4

    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-int p2, v0

    if-gt p2, p3, :cond_0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-lt p2, p4, :cond_1

    move-wide p2, v0

    goto :goto_0

    :cond_1
    sub-int p2, p4, p2

    int-to-double v2, p2

    sub-int/2addr p4, p3

    int-to-double p2, p4

    div-double/2addr v2, p2

    mul-double v2, v2, v0

    add-double p2, v2, v0

    :goto_0
    int-to-double v0, p1

    mul-double v0, v0, p2

    double-to-int p1, v0

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private sendCancelToListener()V
    .locals 3

    new-instance v0, Lcom/garena/pay/android/exception/ErrorException;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/garena/pay/android/exception/ErrorException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/view/WebDialog;->sendErrorToListener(Lcom/garena/pay/android/exception/ErrorException;)V

    return-void
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->onCompleteListener:Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/garena/pay/android/view/WebDialog;->listenerCalled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/garena/pay/android/view/WebDialog;->listenerCalled:Z

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/garena/pay/android/exception/ErrorException;)V

    :cond_0
    return-void
.end method

.method private setUpWebView(I)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/garena/pay/android/view/WebDialog;->onConfigWebView(Landroid/webkit/WebView;)V

    iget-object v2, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/garena/pay/android/view/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/garena/pay/android/view/WebDialog$3;

    invoke-direct {v2, p0}, Lcom/garena/pay/android/view/WebDialog$3;-><init>(Lcom/garena/pay/android/view/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->contentLayout:Landroid/view/ViewGroup;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->contentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected calculateSize()V
    .locals 6

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    const/16 v5, 0x438

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/garena/pay/android/view/WebDialog;->getScaledSize(IFII)I

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x320

    const/16 v5, 0x780

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/garena/pay/android/view/WebDialog;->getScaledSize(IFII)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected createWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;-><init>(Lcom/garena/pay/android/view/WebDialog;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->contentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/garena/pay/android/view/WebDialog;->isDetached:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->spinner:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->spinner:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewSettings()Landroid/webkit/WebSettings;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initContentLayout()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/garena/pay/android/view/WebDialog;->contentLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garena/pay/android/view/WebDialog;->isDetached:Z

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigWebView(Landroid/webkit/WebView;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->createWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget-boolean v3, Lcom/beetalk/sdk/SDKConstants;->RELEASE_VERSION:Z

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    :cond_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/beetalk/sdk/networking/GarenaUserAgent;

    invoke-direct {v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;-><init>()V

    invoke-virtual {v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/view/WebDialog;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/garena/pay/android/view/WebDialog$1;

    invoke-direct {p1, p0}, Lcom/garena/pay/android/view/WebDialog$1;-><init>(Lcom/garena/pay/android/view/WebDialog;)V

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$style;->ProgressDialogTheme:I

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->spinner:Landroid/app/Dialog;

    sget v0, Lcom/garena/msdk/R$layout;->msdk_progress_dialog:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->spinner:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->spinner:Landroid/app/Dialog;

    new-instance v1, Lcom/garena/pay/android/view/WebDialog$2;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/view/WebDialog$2;-><init>(Lcom/garena/pay/android/view/WebDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->initContentLayout()V

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->calculateSize()V

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/garena/pay/android/view/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-boolean p1, p0, Lcom/garena/pay/android/view/WebDialog;->needMargin:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x14

    :cond_0
    invoke-direct {p0, v0}, Lcom/garena/pay/android/view/WebDialog;->setUpWebView(I)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->contentLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/view/WebDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/garena/pay/android/view/WebDialog;->isDetached:Z

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method protected parseServerErrors(Ljava/lang/String;)Lcom/garena/pay/android/exception/ErrorException;
    .locals 3

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "error_params"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "error_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "error_scope"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "server_error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_INVALID_SERVER_RESPONSE:Lcom/garena/pay/android/GGErrorCode;

    :cond_4
    :goto_1
    new-instance p1, Lcom/garena/pay/android/exception/ErrorException;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/garena/pay/android/exception/ErrorException;-><init>(Ljava/lang/String;I)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7a7a59f4 -> :sswitch_3
        -0x30cf32a3 -> :sswitch_2
        -0x30bbb6fe -> :sswitch_1
        0x11af4b9d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected sendErrorToListener(Lcom/garena/pay/android/exception/ErrorException;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_error_code"

    invoke-virtual {p1}, Lcom/garena/pay/android/exception/ErrorException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error"

    invoke-virtual {p1}, Lcom/garena/pay/android/exception/ErrorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/garena/pay/android/view/WebDialog;->onCompleteListener:Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/garena/pay/android/view/WebDialog;->listenerCalled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/garena/pay/android/view/WebDialog;->listenerCalled:Z

    invoke-interface {v1, v0, p1}, Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/garena/pay/android/exception/ErrorException;)V

    :cond_0
    return-void
.end method

.method public setOnCompleteListener(Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->onCompleteListener:Lcom/garena/pay/android/view/WebDialog$OnCompleteListener;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog;->url:Ljava/lang/String;

    return-void
.end method
