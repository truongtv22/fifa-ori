.class public Lcom/ea/nimble/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lcom/ea/nimble/IHttpResponse;


# instance fields
.field public data:Lcom/ea/nimble/ByteBufferIOStream;

.field public downloadedContentLength:J

.field public error:Ljava/lang/Exception;

.field public expectedContentLength:J

.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isCompleted:Z

.field public lastModified:J

.field public statusCode:I

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    iput v0, p0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    iput-wide v0, p0, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    new-instance v0, Lcom/ea/nimble/ByteBufferIOStream;

    invoke-direct {v0}, Lcom/ea/nimble/ByteBufferIOStream;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    return-void
.end method


# virtual methods
.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->data:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedContentLength()J
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->downloadedContentLength:J

    return-wide v0
.end method

.method public getError()Ljava/lang/Exception;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public getExpectedContentLength()J
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->expectedContentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/ea/nimble/HttpResponse;->lastModified:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget v0, p0, Lcom/ea/nimble/HttpResponse;->statusCode:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpResponse;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    return v0
.end method
