.class public Lcom/vk/sdk/dialogs/VKOpenAuthDialog;
.super Ljava/lang/Object;
.source "VKOpenAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;
    }
.end annotation


# static fields
.field private static final CANCEL:Ljava/lang/String; = "cancel"

.field private static final ERROR:Ljava/lang/String; = "error"

.field private static final REDIRECT_URL:Ljava/lang/String; = "https://oauth.vk.com/blank.html"

.field public static final VK_EXTRA_API_VERSION:Ljava/lang/String; = "version"

.field public static final VK_EXTRA_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final VK_EXTRA_REVOKE:Ljava/lang/String; = "revoke"

.field public static final VK_EXTRA_SCOPE:Ljava/lang/String; = "scope"

.field public static final VK_EXTRA_TOKEN_DATA:Ljava/lang/String; = "extra-token-data"

.field public static final VK_EXTRA_VALIDATION_REQUEST:Ljava/lang/String; = "extra-validation-request"

.field public static final VK_RESULT_INTENT_NAME:Ljava/lang/String; = "com.vk.auth-token"


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mData:Landroid/content/Intent;

.field protected mDialog:Landroid/app/Dialog;

.field protected mProgress:Landroid/view/View;

.field protected mReqCode:I

.field protected mResCode:I

.field protected mView:Landroid/view/View;

.field protected mVkError:Lcom/vk/sdk/api/VKError;

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mResCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;ILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->finish()V

    return-void
.end method

.method static synthetic access$200(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->loadPage()V

    return-void
.end method

.method private finish()V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private loadPage()V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mVkError:Lcom/vk/sdk/api/VKError;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mBundle:Landroid/os/Bundle;

    const-string v6, "client_id"

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mBundle:Landroid/os/Bundle;

    const-string v7, "scope"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mBundle:Landroid/os/Bundle;

    const-string v8, "version"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mBundle:Landroid/os/Bundle;

    const-string v9, "revoke"

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "https://oauth.vk.com/authorize?client_id=%s&scope=%s&redirect_uri=%s&display=mobile&v=%s&response_type=token&revoke=%d"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v0

    aput-object v6, v11, v5

    const-string v1, "https://oauth.vk.com/blank.html"

    aput-object v1, v11, v3

    const/4 v1, 0x3

    aput-object v7, v11, v1

    if-eqz v8, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v6, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v7, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;

    invoke-direct {v7, p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;-><init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v6, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v6, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-direct {p0, v0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->setResult(I)V

    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->finish()V

    :goto_2
    return-void
.end method

.method private setResult(I)V
    .locals 0

    iput p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mResCode:I

    return-void
.end method

.method private setResult(ILandroid/content/Intent;)V
    .locals 0

    iput p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mResCode:I

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :goto_0
    instance-of v0, p1, Lcom/vk/sdk/VKServiceActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/vk/sdk/VKServiceActivity;

    iget v0, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mReqCode:I

    iget v1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mResCode:I

    iget-object v2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mData:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vk/sdk/VKServiceActivity;->onActivityResultPublic(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/os/Bundle;ILcom/vk/sdk/api/VKError;)V
    .locals 0

    iput-object p4, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mVkError:Lcom/vk/sdk/api/VKError;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mBundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mReqCode:I

    sget p2, Lcom/vk/sdk/R$layout;->vk_open_auth_dialog:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mView:Landroid/view/View;

    sget p3, Lcom/vk/sdk/R$id;->progress:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mProgress:Landroid/view/View;

    iget-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mView:Landroid/view/View;

    sget p3, Lcom/vk/sdk/R$id;->copyUrl:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mWebView:Landroid/webkit/WebView;

    new-instance p2, Landroid/app/Dialog;

    sget p3, Lcom/vk/sdk/R$style;->VKAlertDialog:I

    invoke-direct {p2, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance p1, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$1;

    invoke-direct {p1, p0, p2}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$1;-><init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;Landroid/app/Dialog;)V

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/Window;->setStatusBarColor(I)V

    iput-object p2, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->loadPage()V

    return-void
.end method
