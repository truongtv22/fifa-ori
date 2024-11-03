.class Lcom/vk/sdk/api/VKRequest$3;
.super Ljava/lang/Object;
.source "VKRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKRequest;->provideResponse(Lorg/json/JSONObject;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/VKRequest;

.field final synthetic val$response:Lcom/vk/sdk/api/VKResponse;

.field final synthetic val$useLooperForCallListener:Z


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKRequest;ZLcom/vk/sdk/api/VKResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest$3;->this$0:Lcom/vk/sdk/api/VKRequest;

    iput-boolean p2, p0, Lcom/vk/sdk/api/VKRequest$3;->val$useLooperForCallListener:Z

    iput-object p3, p0, Lcom/vk/sdk/api/VKRequest$3;->val$response:Lcom/vk/sdk/api/VKResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$3;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {v0}, Lcom/vk/sdk/api/VKRequest;->access$600(Lcom/vk/sdk/api/VKRequest;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$3;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {v0}, Lcom/vk/sdk/api/VKRequest;->access$600(Lcom/vk/sdk/api/VKRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$3;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-static {v0}, Lcom/vk/sdk/api/VKRequest;->access$600(Lcom/vk/sdk/api/VKRequest;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {v1}, Lcom/vk/sdk/api/VKRequest;->start()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/vk/sdk/api/VKRequest$3;->val$useLooperForCallListener:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$3;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget-object v0, v0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$3;->this$0:Lcom/vk/sdk/api/VKRequest;

    iget-object v0, v0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest$3;->val$response:Lcom/vk/sdk/api/VKResponse;

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V

    :cond_1
    return-void
.end method
