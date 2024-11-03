.class public Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "InAppWebBrowserWebViewClient.java"


# instance fields
.field private mConnecting:Z

.field public mInstanceID:I

.field private mJavascriptIds:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    iput-boolean v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mConnecting:Z

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mJavascriptIds:Ljava/util/SortedSet;

    return-void
.end method

.method private StartTimeoutTimer(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->GetTimeoutInterval(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testapp"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;-><init>(Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;ILjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mConnecting:Z

    return p0
.end method


# virtual methods
.method public native GetTimeoutInterval(I)I
.end method

.method public native OnJavascriptNotification(Ljava/lang/String;I)V
.end method

.method public native OnJavascriptResult(Ljava/lang/String;III)V
.end method

.method public native OnLoadError(Ljava/lang/String;I)V
.end method

.method public native OnLoadFinished(Ljava/lang/String;I)V
.end method

.method public native OnLoadStarted(Ljava/lang/String;I)V
.end method

.method public native OnTimeout(Ljava/lang/String;I)V
.end method

.method public native ShouldLoadURL(Ljava/lang/String;I)Z
.end method

.method public addUUID(Ljava/util/UUID;)Z
    .locals 1

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mJavascriptIds:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mJavascriptIds:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onJavascriptNotification(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p1, v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnJavascriptNotification(Ljava/lang/String;I)V

    return-void
.end method

.method public onJavascriptResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mJavascriptIds:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mJavascriptIds:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iget p4, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnJavascriptResult(Ljava/lang/String;III)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Unable to verify validity of script result."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLoadResource: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppWebBrowserWebViewClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p2, p1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPageFinished: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppWebBrowserWebViewClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mConnecting:Z

    iget p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p2, p1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadFinished(Ljava/lang/String;I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onPageStarted: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "InAppWebBrowserWebViewClient"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mConnecting:Z

    invoke-direct {p0, p2}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->StartTimeoutTimer(Ljava/lang/String;)V

    iget p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p2, p1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadStarted(Ljava/lang/String;I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "InAppWebBrowserWebViewClient"

    const-string v0, "onReceivedError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mConnecting:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Loading Error. URL: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " ErrorCode: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Description: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p1, p2}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnLoadError(Ljava/lang/String;I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldOverrideUrlLoading: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppWebBrowserWebViewClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {p0, p2, p1}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->ShouldLoadURL(Ljava/lang/String;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
