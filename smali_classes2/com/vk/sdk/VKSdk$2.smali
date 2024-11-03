.class final Lcom/vk/sdk/VKSdk$2;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/VKSdk;->wakeUpSession(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$loginStateCallback:Lcom/vk/sdk/VKCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/vk/sdk/VKCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/VKSdk$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vk/sdk/VKSdk$2;->val$loginStateCallback:Lcom/vk/sdk/VKCallback;

    iput-object p3, p0, Lcom/vk/sdk/VKSdk$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 1

    iget-object p1, p0, Lcom/vk/sdk/VKSdk$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/vk/sdk/VKSdk$2;->val$loginStateCallback:Lcom/vk/sdk/VKCallback;

    invoke-static {p1, v0}, Lcom/vk/sdk/VKSdk;->access$100(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vk/sdk/api/VKError;->apiError:Lcom/vk/sdk/api/VKError;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/vk/sdk/api/VKError;->apiError:Lcom/vk/sdk/api/VKError;

    iget p1, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/VKSdk$2;->val$appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/vk/sdk/VKSdk;->access$200(Landroid/content/Context;)V

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/VKSdk$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/vk/sdk/VKSdk$2;->val$loginStateCallback:Lcom/vk/sdk/VKCallback;

    invoke-static {p1, v0}, Lcom/vk/sdk/VKSdk;->access$100(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V

    return-void
.end method
