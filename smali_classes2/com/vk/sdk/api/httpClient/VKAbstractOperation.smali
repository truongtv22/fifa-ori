.class public abstract Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
.super Ljava/lang/Object;
.source "VKAbstractOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;,
        Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;,
        Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCompleteListener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;

.field private mResponseQueue:Ljava/util/concurrent/ExecutorService;

.field private mState:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Created:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    iput-object v0, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mState:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mCanceled:Z

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Ready:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mCompleteListener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;

    return-object p0
.end method

.method private isStateTransitionInvalid(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;Z)Z
    .locals 6

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    invoke-virtual {p1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq p1, v3, :cond_4

    if-eq p1, v0, :cond_3

    if-eq p1, v4, :cond_3

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    return v1

    :cond_0
    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    invoke-virtual {p2}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_1

    return v2

    :cond_1
    xor-int/lit8 p1, p3, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    invoke-virtual {p2}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$2;->$SwitchMap$com$vk$sdk$api$httpClient$VKAbstractOperation$VKOperationState:[I

    invoke-virtual {p2}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v0, :cond_7

    sget-object p1, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Ready:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    if-eq p2, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mCanceled:Z

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Canceled:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V

    return-void
.end method

.method public finish()V
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$1;-><init>(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    iget-object v1, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mResponseQueue:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public abstract getResultObject()Ljava/lang/Object;
.end method

.method protected setCompleteListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mCompleteListener:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;

    return-void
.end method

.method protected setState(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mState:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    iget-boolean v1, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mCanceled:Z

    invoke-direct {p0, v0, p1, v1}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->isStateTransitionInvalid(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mState:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Finished:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mState:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    sget-object v0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;->Canceled:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->finish()V

    :cond_2
    return-void
.end method

.method public start(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mResponseQueue:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected state()Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->mState:Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationState;

    return-object v0
.end method
