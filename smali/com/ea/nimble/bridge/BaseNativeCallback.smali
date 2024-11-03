.class public Lcom/ea/nimble/bridge/BaseNativeCallback;
.super Landroid/content/BroadcastReceiver;
.source "BaseNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
.implements Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput p1, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/bridge/BaseNativeCallback;)I
    .locals 0

    iget p0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    return p0
.end method

.method public static varargs native nativeCallback(I[Ljava/lang/Object;)V
.end method

.method public static native nativeFinalize(I)V
.end method

.method public static varargs sendNativeCallback(I[Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/ea/nimble/bridge/BaseNativeCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/bridge/BaseNativeCallback$1;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/ea/nimble/Utility;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    new-instance v0, Lcom/ea/nimble/bridge/BaseNativeCallback$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/bridge/BaseNativeCallback$2;-><init>(Lcom/ea/nimble/bridge/BaseNativeCallback;)V

    invoke-static {v0}, Lcom/ea/nimble/Utility;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;Lcom/ea/nimble/Error;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method
