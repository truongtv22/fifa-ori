.class public Lcom/ea/nimble/SynergyNetworkImpl;
.super Lcom/ea/nimble/Component;
.source "SynergyNetworkImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyNetwork;


# instance fields
.field private m_pendingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/SynergyNetworkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private m_sessionId:Ljava/lang/String;

.field private m_sessionIdNeedsRefresh:Z

.field private m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionIdNeedsRefresh:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method private generateSessionId()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyNetwork;
    .locals 1

    const-string v0, "com.ea.nimble.synergynetwork"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ISynergyNetwork;

    return-object v0
.end method

.method private sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {v0, p1, p2}, Lcom/ea/nimble/SynergyNetworkConnection;-><init>(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->start()V

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.synergynetwork"

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionIdNeedsRefresh:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->getStage()Lcom/ea/nimble/ComponentManager$Stage;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkImpl;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionIdNeedsRefresh:Z

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public restore()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/nimble/SynergyNetworkImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/SynergyNetworkImpl$1;-><init>(Lcom/ea/nimble/SynergyNetworkImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_synergyEnvironmentNotifyReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "nimble.environment.notification.startup_requests_finished"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected resume()V
    .locals 0

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyNetworkImpl;->getSessionId()Ljava/lang/String;

    return-void
.end method

.method public sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/SynergyRequest;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    iput-object p1, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    iput-object p3, v0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    invoke-direct {p0, v0, p4}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/ISynergyRequest$IJsonData;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/ISynergyRequest$IJsonData;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/SynergyRequest;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    iput-object p1, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    iput-object p3, v0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    iput-object p4, v0, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    invoke-direct {p0, v0, p5}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/ISynergyRequest$IJsonData;Lcom/ea/nimble/SynergyNetworkConnectionCallback;Ljava/util/Map;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/ISynergyRequest$IJsonData;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/SynergyRequest;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    iput-object p1, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    iput-object p3, v0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    iput-object p4, v0, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    if-eqz p6, :cond_0

    iget-object p1, v0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p1, p1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {p1, p6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, v0, p5}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/SynergyNetworkImpl;->sendSynergyRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {v1, p1, p2}, Lcom/ea/nimble/SynergyNetworkConnection;-><init>(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isUpdateInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lcom/ea/nimble/SynergyNetworkConnection;->errorPriorToSend(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setup()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_pendingRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyNetworkImpl;->getSessionId()Ljava/lang/String;

    return-void
.end method

.method protected suspend()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/SynergyNetworkImpl;->m_sessionIdNeedsRefresh:Z

    return-void
.end method
