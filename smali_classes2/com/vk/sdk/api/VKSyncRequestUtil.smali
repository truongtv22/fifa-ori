.class Lcom/vk/sdk/api/VKSyncRequestUtil;
.super Ljava/lang/Object;
.source "VKSyncRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeSyncWithListener(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;-><init>(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/VKRequest;->setUseLooperForCallListener(Z)V

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/VKRequest;->executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    invoke-static {v0}, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->access$000(Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->access$100(Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :try_start_1
    invoke-static {v0}, Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;->access$000(Lcom/vk/sdk/api/VKSyncRequestUtil$Listener;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
