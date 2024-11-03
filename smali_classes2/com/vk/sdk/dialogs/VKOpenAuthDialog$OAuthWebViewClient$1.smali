.class Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$1;
.super Ljava/lang/Object;
.source "VKOpenAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$1;->this$0:Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient$1;->this$0:Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;

    iget-object p1, p1, Lcom/vk/sdk/dialogs/VKOpenAuthDialog$OAuthWebViewClient;->vkOpenAuthDialog:Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->access$100(Lcom/vk/sdk/dialogs/VKOpenAuthDialog;)V

    return-void
.end method
