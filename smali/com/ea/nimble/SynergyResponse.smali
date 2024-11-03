.class public Lcom/ea/nimble/SynergyResponse;
.super Ljava/lang/Object;
.source "SynergyResponse.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyResponse;


# instance fields
.field public error:Lcom/ea/nimble/Error;

.field public httpResponse:Lcom/ea/nimble/IHttpResponse;

.field public jsonData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    iput-object v0, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    iput-object v0, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getHttpResponse()Lcom/ea/nimble/IHttpResponse;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    return-object v0
.end method

.method public getJsonData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->isCompleted()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public parseData()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "<empty>"

    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    invoke-interface {v2}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ea/nimble/Utility;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "resultCode"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    const-string v2, "message"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/ea/nimble/SynergyServerError;

    invoke-direct {v2, v0, v1}, Lcom/ea/nimble/SynergyServerError;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v1, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unparseable synergy json response "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    return-void

    :cond_1
    iput-object v1, p0, Lcom/ea/nimble/SynergyResponse;->jsonData:Ljava/util/Map;

    iput-object v1, p0, Lcom/ea/nimble/SynergyResponse;->error:Lcom/ea/nimble/Error;

    :cond_2
    :goto_0
    return-void
.end method
