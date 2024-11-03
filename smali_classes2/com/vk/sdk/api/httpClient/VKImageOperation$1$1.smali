.class Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;
.super Ljava/lang/Object;
.source "VKImageOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/api/httpClient/VKImageOperation$1;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/httpClient/VKImageOperation$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;->this$1:Lcom/vk/sdk/api/httpClient/VKImageOperation$1;

    iput-object p2, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;->this$1:Lcom/vk/sdk/api/httpClient/VKImageOperation$1;

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->val$listener:Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;

    iget-object v1, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;->this$1:Lcom/vk/sdk/api/httpClient/VKImageOperation$1;

    iget-object v1, v1, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;->this$0:Lcom/vk/sdk/api/httpClient/VKImageOperation;

    iget-object v2, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;->onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V

    return-void
.end method
