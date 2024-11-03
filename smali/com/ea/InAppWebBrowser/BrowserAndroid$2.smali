.class Lcom/ea/InAppWebBrowser/BrowserAndroid$2;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/BrowserAndroid;->LoadFromFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iput-object p2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load From File - UI Thread: "

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

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    iget-object v0, v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->val$filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...Load From File - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;->this$0:Lcom/ea/InAppWebBrowser/BrowserAndroid;

    invoke-virtual {v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->notifyUiThreadOperationCompleted()V

    return-void
.end method
