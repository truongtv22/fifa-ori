.class Lcom/ea/nimble/ApplicationEnvironmentImpl$4;
.super Ljava/lang/Object;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveAdvertisingIdImpl(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "Cannot get Google Advertising ID - General Exception "

    const-string v1, "Cannot get Google Advertising ID - Illegal State Exception "

    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    const-string v3, "Running thread to get Google Advertising ID"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$100(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$200(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Z

    move-result v5

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_1

    const-string v8, "Setting values for Google Advertising ID and isLimitAdTrackingEnabled flag"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v5

    goto :goto_1

    :cond_1
    const-string v7, "Cannot get Google Advertising ID - AdvertisingIdInfo is null"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v7, "Cannot get Google Advertising ID because there is no current activity"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "limitAdTracking"

    if-eqz v5, :cond_3

    const-string/jumbo v8, "true"

    goto :goto_2

    :cond_3
    const-string v8, "false"

    :goto_2
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    const-string v0, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v1, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "limitAdTracking"

    if-eqz v5, :cond_5

    const-string/jumbo v8, "true"

    goto :goto_4

    :cond_5
    const-string v8, "false"

    :goto_4
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_6

    const-string v0, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v1, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "limitAdTracking"

    if-eqz v5, :cond_7

    const-string/jumbo v8, "true"

    goto :goto_6

    :cond_7
    const-string v8, "false"

    :goto_6
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_8

    const-string v0, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v1, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catch_2
    :try_start_9
    const-string v0, "Cannot get Google Advertising ID - Google Play Services not available on this device"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-enter v2

    :try_start_a
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "limitAdTracking"

    if-eqz v5, :cond_9

    const-string/jumbo v8, "true"

    goto :goto_8

    :cond_9
    const-string v8, "false"

    :goto_8
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v0, :cond_a

    const-string v0, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v1, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_9

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :catch_3
    :try_start_c
    const-string v0, "Cannot get Google Advertising ID - Recoverable error connecting to Google Play Services"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "limitAdTracking"

    if-eqz v5, :cond_b

    const-string/jumbo v8, "true"

    goto :goto_a

    :cond_b
    const-string v8, "false"

    :goto_a
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-nez v0, :cond_c

    const-string v0, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v1, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_b

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :catch_4
    :try_start_f
    const-string v0, "Cannot get Google Advertising ID - Unrecoverable error connecting to Google Play Services"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    monitor-enter v2

    :try_start_10
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "limitAdTracking"

    if-eqz v5, :cond_d

    const-string/jumbo v8, "true"

    goto :goto_c

    :cond_d
    const-string v8, "false"

    :goto_c
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-nez v0, :cond_e

    const-string v0, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v1, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_d

    :cond_f
    :goto_e
    return-void

    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    :goto_f
    monitor-enter v2

    :try_start_12
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$300(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/List;

    move-result-object v1

    iget-object v7, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v7, v3}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v7, v5}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z

    iget-object v7, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v7}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "gaid"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v7}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$400(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Ljava/util/Map;

    move-result-object v7

    const-string v8, "limitAdTracking"

    if-eqz v5, :cond_10

    const-string/jumbo v9, "true"

    goto :goto_10

    :cond_10
    const-string v9, "false"

    :goto_10
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$4;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {v7, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$302(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/util/List;)Ljava/util/List;

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v1, :cond_11

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;

    invoke-interface {v2, v3, v5}, Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;->onCallback(Ljava/lang/String;Z)V

    goto :goto_11

    :cond_11
    const-string v1, "m_advertisingIdCallbacks was null after refreshing advertising ID, something is wrong"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    throw v0

    :catchall_7
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v0
.end method
