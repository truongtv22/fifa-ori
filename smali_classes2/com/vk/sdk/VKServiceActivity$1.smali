.class Lcom/vk/sdk/VKServiceActivity$1;
.super Ljava/lang/Object;
.source "VKServiceActivity.java"

# interfaces
.implements Lcom/vk/sdk/VKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/VKServiceActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/sdk/VKCallback<",
        "Lcom/vk/sdk/VKAccessToken;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/VKServiceActivity;


# direct methods
.method constructor <init>(Lcom/vk/sdk/VKServiceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 6

    iget-object v0, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    invoke-static {v0}, Lcom/vk/sdk/VKServiceActivity;->access$000(Lcom/vk/sdk/VKServiceActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vk/sdk/VKObject;->getRegisteredObject(J)Lcom/vk/sdk/VKObject;

    move-result-object v0

    instance-of v1, v0, Lcom/vk/sdk/api/VKError;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vk/sdk/api/VKError;

    iget-object v1, v0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {v1}, Lcom/vk/sdk/api/VKRequest;->cancel()V

    iget-object v1, v0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    iget-object v1, v1, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    iget-object v0, v0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    invoke-virtual {v1}, Lcom/vk/sdk/VKServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vk_extra_error_id"

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKError;->registerObject()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/vk/sdk/VKServiceActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    invoke-virtual {p1, v0}, Lcom/vk/sdk/VKServiceActivity;->setResult(I)V

    :goto_0
    iget-object p1, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    invoke-virtual {p1}, Lcom/vk/sdk/VKServiceActivity;->finish()V

    return-void
.end method

.method public onResult(Lcom/vk/sdk/VKAccessToken;)V
    .locals 1

    iget-object p1, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/vk/sdk/VKServiceActivity;->setResult(I)V

    iget-object p1, p0, Lcom/vk/sdk/VKServiceActivity$1;->this$0:Lcom/vk/sdk/VKServiceActivity;

    invoke-virtual {p1}, Lcom/vk/sdk/VKServiceActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/VKAccessToken;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/VKServiceActivity$1;->onResult(Lcom/vk/sdk/VKAccessToken;)V

    return-void
.end method
