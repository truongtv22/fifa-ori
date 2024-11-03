.class Lcom/ea/InAppWebBrowser/BrowserAndroid$7;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroy - UI Thread: "

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

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    const-string v1, "destroy(): webview already destroyed or never been initialized."

    invoke-static {v0, v1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object v1, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object v1, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    :try_start_0
    sget-object v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...Destroy - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    return-void
.end method
