.class Lcom/vk/sdk/api/VKRequest$1$1;
.super Ljava/lang/Object;
.source "VKRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/VKRequest$1;->onError(Lcom/vk/sdk/api/httpClient/VKJsonOperation;Lcom/vk/sdk/api/VKError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/api/VKRequest$1;


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/VKRequest$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest$1$1;->this$1:Lcom/vk/sdk/api/VKRequest$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest$1$1;->this$1:Lcom/vk/sdk/api/VKRequest$1;

    iget-object v0, v0, Lcom/vk/sdk/api/VKRequest$1;->this$0:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {v0}, Lcom/vk/sdk/api/VKRequest;->start()V

    return-void
.end method
