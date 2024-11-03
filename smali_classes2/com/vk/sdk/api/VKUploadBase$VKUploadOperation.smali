.class Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;
.super Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
.source "VKUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VKUploadOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;
    }
.end annotation


# instance fields
.field protected lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

.field final synthetic this$0:Lcom/vk/sdk/api/VKUploadBase;


# direct methods
.method private constructor <init>(Lcom/vk/sdk/api/VKUploadBase;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/sdk/api/VKUploadBase;Lcom/vk/sdk/api/VKUploadBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;-><init>(Lcom/vk/sdk/api/VKUploadBase;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->cancel()V

    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    return-void
.end method

.method public getResultObject()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->start(Ljava/util/concurrent/ExecutorService;)V

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    iget-object p1, p1, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    iget-object v0, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    new-instance v1, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;

    invoke-direct {v1, p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$1;-><init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    iput-object v1, v0, Lcom/vk/sdk/api/VKUploadBase;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Executing:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    iget-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->this$0:Lcom/vk/sdk/api/VKUploadBase;

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKUploadBase;->getServerRequest()Lcom/vk/sdk/api/VKRequest;

    move-result-object p1

    new-instance v0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation$VKUploadRequestListener;-><init>(Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;Lcom/vk/sdk/api/VKUploadBase$1;)V

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest;->setRequestListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKRequest;->getOperation()Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/VKUploadBase$VKUploadOperation;->lastOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-static {p1}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    return-void
.end method
