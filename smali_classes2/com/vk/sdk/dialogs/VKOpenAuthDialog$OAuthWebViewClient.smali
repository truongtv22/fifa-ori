.class Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "VKOpenAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/dialogs/VKOpenAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OAuthWebViewClient"
.end annotation


# instance fields
.field canShowPage:Z

.field final vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;


# direct methods
.method public constructor <init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->canShowPage:Z

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->canShowPage:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    iget-object p2, p2, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mProgress:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    iget-object p2, p2, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mProgress:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->processUrl(Ljava/lang/String;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->canShowPage:Z

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/vk/sdk/R$string;->vk_retry:I

    new-instance p3, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$2;

    invoke-direct {p3, p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$2;-><init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$1;

    invoke-direct {p2, p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$1;-><init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;)V

    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method processUrl(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "https://oauth.vk.com/blank.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vk.auth-token"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "extra-token-data"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/vk/sdk/util/VKUtil;->explodeQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    iget-object v2, v2, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mVkError:Lcom/vk/sdk/api/VKError;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    iget-object v2, v2, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mVkError:Lcom/vk/sdk/api/VKError;

    iget-object v2, v2, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {v2}, Lcom/vk/sdk/api/VKRequest;->registerObject()J

    move-result-wide v4

    const-string v2, "extra-validation-request"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_2

    const-string v2, "error"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cancel"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    invoke-static {p1, v1, v0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->access$000(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->access$000(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;ILandroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->access$100(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;)V

    return v3

    :cond_3
    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->processUrl(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iput-boolean p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->canShowPage:Z

    const/4 p1, 0x0

    return p1
.end method
