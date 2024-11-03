.class public Lcom/vk/sdk/api/httpClient/VKHttpClient;
.super Ljava/lang/Object;
.source "VKHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpProgressCallback;,
        Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;,
        Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;
    }
.end annotation


# static fields
.field private static final mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final mResponseService:Ljava/util/concurrent/ExecutorService;

.field public static final sDefaultStringEncoding:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/httpClient/VKHttpClient;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/httpClient/VKHttpClient;->mResponseService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKHttpClient;->mResponseService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static cancelHttpOperation(Lcom/vk/sdk/api/httpClient/VKHttpOperation;)V
    .locals 2

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKHttpClient;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vk/sdk/api/httpClient/VKHttpClient$3;

    invoke-direct {v1, p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$3;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static docUploadRequest(Ljava/lang/String;Ljava/io/File;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;
    .locals 3

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/vk/sdk/api/httpClient/VKMultipartEntity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "doc"

    invoke-direct {p0, v1, p1}, Lcom/vk/sdk/api/httpClient/VKMultipartEntity;-><init>([Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->entity:Lcom/vk/sdk/api/httpClient/VKMultipartEntity;

    return-object v0
.end method

.method public static enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V
    .locals 2

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKHttpClient;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vk/sdk/api/httpClient/VKHttpClient$2;

    invoke-direct {v1, p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$2;-><init>(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static execute(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpResponse;-><init>(Ljava/net/HttpURLConnection;Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHttpProgressCallback;)V

    iget-boolean p0, p0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->isAborted:Z

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method

.method public static varargs fileUploadRequest(Ljava/lang/String;[Ljava/io/File;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/vk/sdk/api/httpClient/VKMultipartEntity;

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/httpClient/VKMultipartEntity;-><init>([Ljava/io/File;)V

    iput-object p0, v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->entity:Lcom/vk/sdk/api/httpClient/VKMultipartEntity;

    return-object v0
.end method

.method private static getDefaultHeaders()Ljava/util/Map;
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

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$1;-><init>()V

    return-object v0
.end method

.method public static requestWithVkRequest(Lcom/vk/sdk/api/VKRequest;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;
    .locals 5

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    new-instance v1, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/vk/sdk/api/VKRequest;->secure:Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "s"

    :goto_1
    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/vk/sdk/api/VKRequest;->methodName:Ljava/lang/String;

    aput-object v4, v3, v0

    const-string v0, "http%s://api.vk.com/method/%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->headers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->getPreparedParameters()Lcom/vk/sdk/api/VKParameters;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;->setVkParameters(Lcom/vk/sdk/api/VKParameters;)V

    return-object v1
.end method
