.class public Lcom/beetalk/sdk/networking/HttpRequestTask;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$JsonCallback;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;,
        Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;
    }
.end annotation


# static fields
.field private static final TIMEOUT_IN_MILLIS:I = 0x2710


# instance fields
.field private final callback:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

.field private final dataType:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/HttpParam;",
            ">;"
        }
    .end annotation
.end field

.field private jsonData:Lorg/json/JSONObject;

.field private mapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureKey:Ljava/lang/String;

.field private final type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/HttpParam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/List;Ljava/util/Map;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/List;Ljava/util/Map;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/HttpParam;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->headers:Ljava/util/List;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    sget-object p1, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->MAP:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->dataType:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    iput-object p4, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->callback:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/Map;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;Ljava/util/List;Ljava/util/Map;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/json/JSONObject;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/HttpParam;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->headers:Ljava/util/List;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->jsonData:Lorg/json/JSONObject;

    sget-object p1, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->JSON:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->dataType:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->callback:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Ljava/util/List;Lorg/json/JSONObject;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/beetalk/sdk/networking/HttpRequestTask;-><init>(Ljava/util/List;Lorg/json/JSONObject;Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->callback:Lcom/beetalk/sdk/networking/HttpRequestTask$BaseCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->onRequest(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->type:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->mapData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->dataType:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    return-object p0
.end method

.method static synthetic access$700(Lcom/beetalk/sdk/networking/HttpRequestTask;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->headers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/beetalk/sdk/networking/HttpRequestTask;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->jsonData:Lorg/json/JSONObject;

    return-object p0
.end method

.method private onRequest(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;
    .locals 5

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$4;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$4;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v3, v4, v2}, Lbolts/Task;->waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    move-object v1, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_1
    new-instance p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    invoke-direct {p1, v1, v0}, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;-><init>(Lorg/json/JSONObject;Z)V

    return-object p1
.end method


# virtual methods
.method public executeJsonResultSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->onRequest(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    move-result-object p1

    return-object p1
.end method

.method public executeParallel(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$3;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask$3;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$2;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask$2;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;)V

    sget-object v1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/networking/HttpRequestTask$1;-><init>(Lcom/beetalk/sdk/networking/HttpRequestTask;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    return-void
.end method

.method public executeStringSync(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;
    .locals 3

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/HttpRequestTask;->onRequest(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    iget-object v1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->response:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->response:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-boolean p1, p1, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->hasTimeOut:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;-><init>(Ljava/lang/String;ZLcom/beetalk/sdk/networking/HttpRequestTask$1;)V

    return-object v0
.end method

.method public setSignatureKey(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask;->signatureKey:Ljava/lang/String;

    return-object p0
.end method
