.class public Lcom/ea/InAppWebBrowser/JavascriptInterfaceX;
.super Ljava/lang/Object;
.source "JavascriptInterfaceX.java"


# instance fields
.field private mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;


# direct methods
.method public constructor <init>(Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/JavascriptInterfaceX;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    return-void
.end method


# virtual methods
.method public Notify(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/JavascriptInterfaceX;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-virtual {v0, p1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->onJavascriptNotification(Ljava/lang/String;)V

    return-void
.end method

.method public ReceiveResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/JavascriptInterfaceX;->mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->onJavascriptResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
