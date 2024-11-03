.class public Lcom/ea/nimble/SynergyRequest;
.super Ljava/lang/Object;
.source "SynergyRequest.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    }
.end annotation


# instance fields
.field public api:Ljava/lang/String;

.field public baseUrl:Ljava/lang/String;

.field public httpRequest:Lcom/ea/nimble/HttpRequest;

.field public jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

.field private m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

.field public prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

.field public urlParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyRequest;->m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

    iput-object p1, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    new-instance p1, Lcom/ea/nimble/HttpRequest;

    invoke-direct {p1}, Lcom/ea/nimble/HttpRequest;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iput-object p3, p0, Lcom/ea/nimble/SynergyRequest;->prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

    iput-object v0, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    iput-object p2, p1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iget-object p1, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p1, p1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p2, "Content-Type"

    const-string p3, "application/json"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p1, p1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p2, "SDK-VERSION"

    const-string p3, "0.5.0.1"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p1, p1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p2, "SDK-TYPE"

    const-string p3, "Nimble"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyNetworkImpl;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p2, p2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p3, "EAM-SESSION"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "SynergyRequest"

    const-string p3, "Synergy Network session ID is null"

    invoke-static {p2, p3, p1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p2, p2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p3, "EAM-USER-ID"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p2, p2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p3, "EA-SELL-ID"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyIdManager;->getAuthenticatorIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object p2, p2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    const-string p3, "Authorization"

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method build()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "chimble.synergy.sdk"

    invoke-static {v3}, Lcom/ea/nimble/Base;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nexon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "appVer"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appLang"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "localization"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceLanguage"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceLocale"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "hwId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "this.baseUrl: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "this.api "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "urlParameters: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ea/nimble/Network;->generateURL(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v0, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyRequest$IJsonData;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyRequest$IJsonData;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v1, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iget-object v1, v1, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v3, "Error converting jsonData in SynergyRequest to a data stream"

    invoke-direct {v1, v2, v3, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "Invalid synergy request parameter (%s, %s) to build http request url"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRequest()Lcom/ea/nimble/HttpRequest;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    return-object v0
.end method

.method public bridge synthetic getHttpRequest()Lcom/ea/nimble/IHttpRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyRequest;->getHttpRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public getJsonData()Lcom/ea/nimble/ISynergyRequest$IJsonData;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->jsonData:Lcom/ea/nimble/ISynergyRequest$IJsonData;

    return-object v0
.end method

.method public getMethod()Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    invoke-virtual {v0}, Lcom/ea/nimble/HttpRequest;->getMethod()Lcom/ea/nimble/IHttpRequest$Method;

    move-result-object v0

    return-object v0
.end method

.method public getUrlParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    return-object v0
.end method

.method prepare(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/SynergyRequest;->m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

    iget-object p1, p0, Lcom/ea/nimble/SynergyRequest;->prepareRequestCallback:Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;->prepareRequest(Lcom/ea/nimble/SynergyRequest;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyRequest;->send()V

    :goto_0
    return-void
.end method

.method public send()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->m_connection:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->send()V

    return-void
.end method

.method public setMethod(Lcom/ea/nimble/IHttpRequest$Method;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    iput-object p1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    return-void
.end method
