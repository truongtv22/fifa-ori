.class Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;
.super Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.source "VKSyncRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKSyncRequestUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Listener"
.end annotation


# instance fields
.field private volatile isFinish:Z

.field private listener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->syncObj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->isFinish:Z

    iput-object p1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->listener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->syncObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->isFinish:Z

    return p0
.end method


# virtual methods
.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->listener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {v1, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x1

    :try_start_1
    iput-boolean p1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->isFinish:Z

    iget-object p1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->syncObj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->listener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {v1, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x1

    :try_start_1
    iput-boolean p1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->isFinish:Z

    iget-object p1, p0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->syncObj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
