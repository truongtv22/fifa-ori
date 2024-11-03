.class Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;
.super Ljava/lang/Object;
.source "InAppWebBrowserWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->StartTimeoutTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

.field final synthetic val$fTimeoutInterval:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->this$0:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    iput p2, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->val$fTimeoutInterval:I

    iput-object p3, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->val$fTimeoutInterval:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->this$0:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    invoke-static {v0}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->access$000(Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->this$0:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timeout. URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient$1;->this$0:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;

    iget v2, v2, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->mInstanceID:I

    invoke-virtual {v0, v1, v2}, Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;->OnTimeout(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
