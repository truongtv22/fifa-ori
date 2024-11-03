.class Lcom/ea/nimble/WebView$1;
.super Landroid/webkit/WebViewClient;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/WebView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/WebView;

.field final synthetic val$redirectUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/WebView$1;->this$0:Lcom/ea/nimble/WebView;

    iput-object p2, p0, Lcom/ea/nimble/WebView$1;->val$redirectUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/nimble/WebView$1;->val$redirectUrl:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/WebView$1;->this$0:Lcom/ea/nimble/WebView;

    invoke-virtual {p1}, Lcom/ea/nimble/WebView;->finish()V

    invoke-static {}, Lcom/ea/nimble/WebView;->access$000()Lcom/ea/nimble/WebViewCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ea/nimble/WebView;->access$000()Lcom/ea/nimble/WebViewCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ea/nimble/WebViewCallback;->callback(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ea/nimble/WebView;->access$002(Lcom/ea/nimble/WebViewCallback;)Lcom/ea/nimble/WebViewCallback;

    :cond_0
    return-void
.end method
