.class Lcom/ea/InAppWebBrowser/BrowserAndroid$4;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;->LoadHTML(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

.field final synthetic val$baseURL:Ljava/lang/String;

.field final synthetic val$htmlContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object p2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->val$baseURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->val$htmlContent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load HTML - UI Thread: "

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

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->val$baseURL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->val$htmlContent:Ljava/lang/String;

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "appbundle:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "file:///android_asset/"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "file:///appbundle:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    move-object v2, v0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->val$htmlContent:Ljava/lang/String;

    const-string v4, "text/html"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...Load HTML - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->notifyUiThreadOperationCompleted()V

    return-void
.end method
