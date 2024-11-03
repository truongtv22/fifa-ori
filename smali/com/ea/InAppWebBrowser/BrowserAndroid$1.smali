.class Lcom/ea/InAppWebBrowser/BrowserAndroid$1;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;->init(IIIIIIIIIZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

.field final synthetic val$javascriptState:I

.field final synthetic val$overScrollModeEnabled:Z

.field final synthetic val$saveFormDataState:I

.field final synthetic val$scrollbarState:I

.field final synthetic val$scrollbarStyle:I

.field final synthetic val$transparentBackgroundEnabled:Z


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;ZZIIII)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-boolean p2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$transparentBackgroundEnabled:Z

    iput-boolean p3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$overScrollModeEnabled:Z

    iput p4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$javascriptState:I

    iput p5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$saveFormDataState:I

    iput p6, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarState:I

    iput p7, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarStyle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Landroid/webkit/WebView;

    sget-object v2, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-direct {v1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;-><init>()V

    iput-object v1, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mInstanceID:I

    iput v1, v0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-boolean v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$transparentBackgroundEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v4, "setLayerType"

    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v5, v5, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v5, v5, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const/4 v0, 0x0

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$overScrollModeEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_1
    const-string v4, "setOverScrollMode"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "OVER_SCROLL_NEVER"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v5, v5, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v5, v5, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/ea/InAppWebBrowser/BrowserAndroid$1$1;

    invoke-direct {v4, p0}, Lcom/ea/InAppWebBrowser/BrowserAndroid$1$1;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid$1;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$javascriptState:I

    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$saveFormDataState:I

    if-ne v4, v3, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget v4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$saveFormDataState:I

    if-ne v4, v3, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget v4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarState:I

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget v4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarState:I

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/ea/InAppWebBrowser/JavascriptInterfaceX;

    iget-object v5, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v5, v5, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-direct {v4, v5}, Lcom/ea/InAppWebBrowser/JavascriptInterfaceX;-><init>(Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;)V

    const-string v5, "EAAndroidJavascriptCallback"

    invoke-virtual {v0, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->val$scrollbarStyle:I

    if-eq v0, v3, :cond_a

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    :goto_7
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...Init - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->notifyUiThreadOperationCompleted()V

    return-void
.end method
