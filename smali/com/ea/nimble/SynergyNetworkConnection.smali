.class Lcom/ea/nimble/SynergyNetworkConnection;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;
    }
.end annotation


# instance fields
.field private m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

.field private m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

.field private m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

.field private m_otDispatch:Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

.field private m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

.field private m_request:Lcom/ea/nimble/SynergyRequest;

.field private m_response:Lcom/ea/nimble/SynergyResponse;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    new-instance p1, Lcom/ea/nimble/SynergyResponse;

    invoke-direct {p1}, Lcom/ea/nimble/SynergyResponse;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    new-instance p1, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

    invoke-direct {p1, p0, v0}, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/SynergyNetworkConnection$1;)V

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_otDispatch:Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    iput-object p2, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/NetworkConnectionHandle;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->parseDataFromNetworkHandle()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyResponse;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    return-object p0
.end method

.method private parseDataFromNetworkHandle()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    iput-object v0, v1, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyResponse;->parseData()V

    :cond_0
    return-void
.end method

.method private updateNetworkHeaderHandler()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    new-instance v1, Lcom/ea/nimble/SynergyNetworkConnection$2;

    invoke-direct {v1, p0}, Lcom/ea/nimble/SynergyNetworkConnection$2;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    :goto_0
    return-void
.end method

.method private updateNetworkProgressHandler()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    new-instance v1, Lcom/ea/nimble/SynergyNetworkConnection$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/SynergyNetworkConnection$3;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    :cond_0
    return-void
.end method

.method public errorPriorToSend(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/HttpResponse;

    invoke-direct {v0}, Lcom/ea/nimble/HttpResponse;-><init>()V

    iput-object p1, v0, Lcom/ea/nimble/HttpResponse;->error:Ljava/lang/Exception;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    iput-object v0, p1, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/ea/nimble/SynergyNetworkConnectionCallback;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    :cond_0
    return-void
.end method

.method public getCompletionCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method public getHeaderCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method public getNetworkConnectionHandle()Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-object v0
.end method

.method public getProgressCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method public getRequest()Lcom/ea/nimble/ISynergyRequest;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    return-object v0
.end method

.method public getResponse()Lcom/ea/nimble/ISynergyResponse;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    return-object v0
.end method

.method send()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyRequest;->build()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    iget-object v1, v1, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    new-instance v2, Lcom/ea/nimble/SynergyNetworkConnection$1;

    invoke-direct {v2, p0}, Lcom/ea/nimble/SynergyNetworkConnection$1;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    iget-object v3, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_otDispatch:Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

    invoke-interface {v0, v1, v2, v3}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    iput-object v0, v1, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkHeaderHandler()V

    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkProgressHandler()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/SynergyNetworkConnection;->errorPriorToSend(Ljava/lang/Exception;)V

    return-void
.end method

.method public setCompletionCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-void
.end method

.method public setHeaderCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkHeaderHandler()V

    :cond_0
    return-void
.end method

.method public setNetworkConnectionHandle(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-void
.end method

.method public setProgressCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkProgressHandler()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    invoke-virtual {v0, p0}, Lcom/ea/nimble/SynergyRequest;->prepare(Lcom/ea/nimble/SynergyNetworkConnection;)V

    return-void
.end method

.method public waitOn()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->waitOn()V

    :cond_0
    return-void
.end method
