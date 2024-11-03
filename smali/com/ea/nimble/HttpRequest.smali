.class public Lcom/ea/nimble/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/ea/nimble/IHttpRequest;


# static fields
.field private static DEFAULT_NETWORK_TIMEOUT:I = 0x1e


# instance fields
.field public data:Ljava/io/ByteArrayOutputStream;

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

.field public method:Lcom/ea/nimble/IHttpRequest$Method;

.field public overwritePolicy:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public runInBackground:Z

.field public targetFilePath:Ljava/lang/String;

.field public timeout:D

.field public url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v1, p0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->SMART:Ljava/util/EnumSet;

    iput-object v1, p0, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    sget v1, Lcom/ea/nimble/HttpRequest;->DEFAULT_NETWORK_TIMEOUT:I

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/ea/nimble/HttpRequest;->timeout:D

    iput-object v0, p0, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/HttpRequest;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/HttpRequest;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    return-object v0
.end method

.method public getOverwritePolicy()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->overwritePolicy:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getRunInBackground()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    return v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->targetFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()D
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/HttpRequest;->timeout:D

    return-wide v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/HttpRequest;->url:Ljava/net/URL;

    return-object v0
.end method
