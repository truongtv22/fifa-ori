.class public Lcom/beetalk/sdk/GarenaAuthActivity;
.super Landroid/app/Activity;
.source "GarenaAuthActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final REQUEST_INFO_INTENT_KEY:Ljava/lang/String; = "garena_request_info"

.field protected static final RESULT_INTENT_KEY:Ljava/lang/String; = "garena_auth_result"


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

.field private redirectUrl:Ljava/lang/String;


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

.method static synthetic access$000(Lcom/beetalk/sdk/GarenaAuthActivity;)Lcom/beetalk/sdk/AuthClient$AuthClientRequest;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/GarenaAuthActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/GarenaAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthCancelled()V

    return-void
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/GarenaAuthActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthFailed(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/beetalk/sdk/GarenaAuthActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private onAuthCancelled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    return-void
.end method

.method private onAuthFailed(I)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAuthFailed-failed"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity$4;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onAuthSuccess(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onAuthSuccess-user code %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity$3;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbed

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbec

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "garena_auth_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p1, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-static {p1}, Lcom/beetalk/sdk/AuthClient$Result;->isError(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    return-void
.end method

.method private requestUserToken(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 8

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeGarenaTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v2, "open_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "refresh_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "expiry_time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "platform"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance v6, Lcom/beetalk/sdk/data/AuthToken;

    sget-object v7, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-direct {v6, v3, v7, p1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v6, v3}, Lcom/beetalk/sdk/data/AuthToken;->setTokenProvider(Lcom/beetalk/sdk/data/TokenProvider;)V

    :cond_1
    invoke-virtual {v6, v4}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-static {p2, v6, v2, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-nez v1, :cond_3

    invoke-static {p2, v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v1

    :cond_3
    return-object v1
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-beetalk-sdk-GarenaAuthActivity(Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "gop"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getGarenaLoginTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/garena/msdk/R$string;->beetalk_sdk_label_garena_login:I

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getGarenaLoginTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/garena/msdk/R$color;->com_facebook_blue:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$1;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$2;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$2;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "garena_request_info"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://auth/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "redirect_uri"

    iget-object v3, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->redirectUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "response_type"

    const-string v3, "code"

    invoke-direct {v1, v2, v3}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "client_id"

    invoke-direct {v1, v2, p1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result p1

    const v1, 0xdbed

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "create_grant"

    const-string v2, "false"

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v1, "grant"

    const-string/jumbo v2, "true"

    invoke-direct {p1, v1, v2}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p1

    new-instance v1, Lcom/beetalk/sdk/networking/HttpParam;

    const-string v2, "locale"

    invoke-static {p1}, Lcom/beetalk/sdk/helper/LocaleHelper;->getLocaleStringForServer(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/beetalk/sdk/networking/HttpParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1
    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGarenaOAuthUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/StringUtils;->httpParamsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GarenaAuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->loadUrlWithAutoSwitch(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    :goto_1
    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/GarenaAuthActivity;->finish()V

    return-void
.end method
