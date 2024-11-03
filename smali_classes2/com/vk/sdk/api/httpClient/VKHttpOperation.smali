.class public Lcom/vk/sdk/api/httpClient/VKHttpOperation;
.super Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
.source "VKHttpOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vk/sdk/api/httpClient/VKAbstractOperation;"
    }
.end annotation


# instance fields
.field protected mLastException:Ljava/lang/Exception;

.field private mResponseString:Ljava/lang/String;

.field private final mUriRequest:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

.field public response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mUriRequest:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->cancelHttpOperation(Lcom/vk/sdk/api/httpClient/VKHttpOperation;)V

    invoke-super {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->cancel()V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->postExecution()Z

    invoke-super {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->finish()V

    return-void
.end method

.method protected generateError(Ljava/lang/Exception;)Lcom/vk/sdk/api/VKError;
    .locals 2

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->state()Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    move-result-object v0

    sget-object v1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Canceled:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/vk/sdk/api/VKError;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/sdk/api/VKError;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    iget-object v1, v0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    :cond_1
    iput-object p1, v0, Lcom/vk/sdk/api/VKError;->httpError:Ljava/lang/Exception;

    :cond_2
    return-object v0
.end method

.method public getResponseData()[B
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;->responseBytes:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;->responseBytes:[B

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mResponseString:Ljava/lang/String;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    iget-object v1, v1, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;->responseBytes:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mResponseString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mLastException:Ljava/lang/Exception;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mResponseString:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResultObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;->responseBytes:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUriRequest()Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mUriRequest:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    return-object v0
.end method

.method protected postExecution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHttpOperationListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OperationType:",
            "Lcom/vk/sdk/api/httpClient/VKHttpOperation;",
            ">(",
            "Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener<",
            "TOperationType;TResponseType;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation$1;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;)V

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->setCompleteListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;)V

    return-void
.end method

.method public start(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->start(Ljava/util/concurrent/ExecutorService;)V

    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Executing:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    :try_start_0
    iget-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mUriRequest:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    iget-boolean p1, p1, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->isAborted:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mUriRequest:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    invoke-static {p1}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->execute(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->response:Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->mLastException:Ljava/lang/Exception;

    :goto_0
    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method
