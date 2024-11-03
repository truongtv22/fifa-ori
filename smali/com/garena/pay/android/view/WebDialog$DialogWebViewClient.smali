.class public Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/view/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/view/WebDialog;


# direct methods
.method protected constructor <init>(Lcom/garena/pay/android/view/WebDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private parseAndNotifyClient(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/garena/pay/android/helper/Utils;->parseQueryArgs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "result"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "txn_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app_point_amount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "item_icon"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rebate_card_id"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "remaining_days"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1, v0}, Lcom/garena/pay/android/view/WebDialog;->access$300(Lcom/garena/pay/android/view/WebDialog;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    const-string v1, "error"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/view/WebDialog;->parseServerErrors(Ljava/lang/String;)Lcom/garena/pay/android/exception/ErrorException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/view/WebDialog;->sendErrorToListener(Lcom/garena/pay/android/exception/ErrorException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1}, Lcom/garena/pay/android/view/WebDialog;->access$400(Lcom/garena/pay/android/view/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1}, Lcom/garena/pay/android/view/WebDialog;->access$500(Lcom/garena/pay/android/view/WebDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const-string p1, "pay/result?"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->parseAndNotifyClient(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    iget-object p1, p1, Lcom/garena/pay/android/view/WebDialog;->contentLayout:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    iget-object p1, p1, Lcom/garena/pay/android/view/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "Webview loading URL: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1}, Lcom/garena/pay/android/view/WebDialog;->access$400(Lcom/garena/pay/android/view/WebDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1}, Lcom/garena/pay/android/view/WebDialog;->access$500(Lcom/garena/pay/android/view/WebDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    new-instance p4, Lcom/garena/pay/android/exception/ErrorException;

    invoke-direct {p4, p3, p1}, Lcom/garena/pay/android/exception/ErrorException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, p4}, Lcom/garena/pay/android/view/WebDialog;->sendErrorToListener(Lcom/garena/pay/android/exception/ErrorException;)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-virtual {p1}, Lcom/garena/pay/android/view/WebDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "Redirect URL: %s"

    invoke-static {v2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "pay/result?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->parseAndNotifyClient(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-virtual {p2}, Lcom/garena/pay/android/view/WebDialog;->dismiss()V

    return p1

    :cond_0
    const-string v0, "pay/channel/cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p2}, Lcom/garena/pay/android/view/WebDialog;->access$000(Lcom/garena/pay/android/view/WebDialog;)V

    iget-object p2, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-virtual {p2}, Lcom/garena/pay/android/view/WebDialog;->dismiss()V

    return p1

    :cond_1
    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "android.intent.action.VIEW"

    if-nez v0, :cond_4

    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "geo:0,0?q="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "maps:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {v0, p2}, Lcom/garena/pay/android/view/WebDialog;->access$200(Lcom/garena/pay/android/view/WebDialog;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-virtual {v0}, Lcom/garena/pay/android/view/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/garena/pay/android/view/WebDialog$DialogWebViewClient;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-virtual {v0}, Lcom/garena/pay/android/view/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p1
.end method
