.class Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;
.super Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;
.source "VKCaptchaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKCaptchaDialog;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKImageOperation;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->onComplete(Lcom/vk/sdk/api/httpClient/VKImageOperation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onComplete(Lcom/vk/sdk/api/httpClient/VKImageOperation;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$200(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$200(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$300(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKImageOperation;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->onError(Lcom/vk/sdk/api/httpClient/VKImageOperation;Lcom/vk/sdk/api/VKError;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/httpClient/VKImageOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;->this$0:Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->access$400(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V

    return-void
.end method
