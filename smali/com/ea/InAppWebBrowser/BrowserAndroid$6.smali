.class Lcom/ea/InAppWebBrowser/BrowserAndroid$6;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;->EvaluateJavaScript(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

.field final synthetic val$requestTag:I

.field final synthetic val$script:Ljava/lang/String;

.field final synthetic val$uniqueRequestId:I


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object p2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->val$script:Ljava/lang/String;

    iput p3, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->val$requestTag:I

    iput p4, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->val$uniqueRequestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Evaluate Javascript - UI Thread: "

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

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-virtual {v1, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->addUUID(Ljava/util/UUID;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript: var scriptResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->val$script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; EAAndroidJavascriptCallback.ReceiveResult(scriptResult, \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->val$requestTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->val$uniqueRequestId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\');"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v1, v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...Evaluate Javascript - UI Thread: "

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
