.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;
.super Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;
.source "VKShareDialogDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->loadAndAddPhoto(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

.field final synthetic val$attempt:I

.field final synthetic val$photoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->val$photoUrl:Ljava/lang/String;

    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->val$attempt:I

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKImageOperation;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->onComplete(Lcom/vk/sdk/api/httpClient/VKImageOperation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onComplete(Lcom/vk/sdk/api/httpClient/VKImageOperation;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;

    invoke-direct {p2, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$400(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKImageOperation;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$3;->onError(Lcom/vk/sdk/api/httpClient/VKImageOperation;Lcom/vk/sdk/api/VKError;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/httpClient/VKImageOperation;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    return-void
.end method
