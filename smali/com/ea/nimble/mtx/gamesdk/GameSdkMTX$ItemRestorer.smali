.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;
.super Landroid/content/BroadcastReceiver;
.source "GameSdkMTX.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemRestorer"
.end annotation


# instance fields
.field private m_requestRetryDelay:D

.field private m_timer:Lcom/ea/nimble/Timer;

.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V
    .locals 2

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p1, Lcom/ea/nimble/Timer;

    invoke-direct {p1, p0}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_requestRetryDelay:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;-><init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_requestRetryDelay:D

    invoke-static {p0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Catalog refresh failed with restore pending. Retrying in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_requestRetryDelay:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    iget-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_requestRetryDelay:D

    invoke-virtual {p1, v0, v1, p2}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_timer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    invoke-static {p0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1, p2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z

    const-string p1, "chimble.synergy.sdk"

    invoke-static {p1}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nexon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {p1, p2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$200(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public restoreItems()V
    .locals 3

    const-string v0, "chimble.synergy.sdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$100(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    iget-object v1, v1, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "nexon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-static {v0, v2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$200(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->access$102(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Z)Z

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    const-string v1, "Restore pending but catalog is unavailable. Initiating refresh now."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "nimble.notification.mtx.refreshcatalogfinished"

    invoke-static {v0, p0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->refreshAvailableCatalogItems()V

    :cond_3
    :goto_1
    return-void
.end method

.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_requestRetryDelay:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    const-wide v2, 0x4072c00000000000L    # 300.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->m_requestRetryDelay:D

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$ItemRestorer;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->refreshAvailableCatalogItems()V

    return-void
.end method
