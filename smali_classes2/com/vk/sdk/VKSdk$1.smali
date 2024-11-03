.class final Lcom/vk/sdk/VKSdk$1;
.super Ljava/lang/Object;
.source "VKSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/VKSdk;->notifyVKTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newToken:Lcom/vk/sdk/VKAccessToken;

.field final synthetic val$oldToken:Lcom/vk/sdk/VKAccessToken;


# direct methods
.method constructor <init>(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/VKSdk$1;->val$oldToken:Lcom/vk/sdk/VKAccessToken;

    iput-object p2, p0, Lcom/vk/sdk/VKSdk$1;->val$newToken:Lcom/vk/sdk/VKAccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/vk/sdk/VKSdk;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/VKAccessTokenTracker;

    iget-object v2, p0, Lcom/vk/sdk/VKSdk$1;->val$oldToken:Lcom/vk/sdk/VKAccessToken;

    iget-object v3, p0, Lcom/vk/sdk/VKSdk$1;->val$newToken:Lcom/vk/sdk/VKAccessToken;

    invoke-virtual {v1, v2, v3}, Lcom/vk/sdk/VKAccessTokenTracker;->onVKAccessTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    goto :goto_0

    :cond_0
    return-void
.end method
