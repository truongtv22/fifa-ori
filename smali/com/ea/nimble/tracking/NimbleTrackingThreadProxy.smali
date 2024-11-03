.class public abstract Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;
.super Lcom/ea/nimble/Component;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Lcom/ea/nimble/tracking/ITracking;


# instance fields
.field private m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

.field private m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;


# direct methods
.method protected constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    return-object p0
.end method


# virtual methods
.method public addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected cleanup()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$5;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$5;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public clearCustomSessionData()V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnable()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getEnable()Z

    move-result v0

    return v0
.end method

.method public getPostEnable()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getPostEnable()Z

    move-result v0

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCustomSessionData(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected restore()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$2;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$2;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resume()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$4;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$4;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public setPostEnable(Z)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$8;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$8;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$12;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setup()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected suspend()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$3;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected teardown()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$6;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$6;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    return-void
.end method
