.class public Lcom/vk/sdk/api/VKBatchRequest;
.super Lcom/vk/sdk/VKObject;
.source "VKBatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mOriginalListeners:[Lcom/vk/sdk/api/VKRequest$VKRequestListener;

.field private final mRequests:[Lcom/vk/sdk/api/VKRequest;

.field private final mResponses:[Lcom/vk/sdk/api/VKResponse;

.field public requestListener:Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;


# direct methods
.method public varargs constructor <init>([Lcom/vk/sdk/api/VKRequest;)V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/VKObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mCanceled:Z

    iput-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length v1, p1

    new-array v1, v1, [Lcom/vk/sdk/api/VKResponse;

    iput-object v1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mResponses:[Lcom/vk/sdk/api/VKResponse;

    array-length p1, p1

    new-array p1, p1, [Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    iput-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mOriginalListeners:[Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    :goto_0
    iget-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mOriginalListeners:[Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indexOfRequest(Lcom/vk/sdk/api/VKRequest;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-boolean v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mCanceled:Z

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/vk/sdk/api/VKRequest;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public executeWithListener(Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;)V
    .locals 8

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    if-nez v0, :cond_0

    new-instance p1, Lcom/vk/sdk/api/VKError;

    const/16 v0, -0x67

    invoke-direct {p1, v0}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/VKBatchRequest;->provideError(Lcom/vk/sdk/api/VKError;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->requestListener:Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    new-instance v5, Lcom/vk/sdk/api/VKBatchRequest$1;

    invoke-direct {v5, p0, v4}, Lcom/vk/sdk/api/VKBatchRequest$1;-><init>(Lcom/vk/sdk/api/VKBatchRequest;Lcom/vk/sdk/api/VKRequest;)V

    int-to-long v6, v3

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit16 v3, v3, 0x14d

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected provideError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iget-boolean v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mOriginalListeners:[Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->requestListener:Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_3
    invoke-virtual {p0}, Lcom/vk/sdk/api/VKBatchRequest;->cancel()V

    return-void
.end method

.method protected provideResponse(Lcom/vk/sdk/api/VKResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mResponses:[Lcom/vk/sdk/api/VKResponse;

    iget-object v1, p1, Lcom/vk/sdk/api/VKResponse;->request:Lcom/vk/sdk/api/VKRequest;

    invoke-direct {p0, v1}, Lcom/vk/sdk/api/VKBatchRequest;->indexOfRequest(Lcom/vk/sdk/api/VKRequest;)I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mResponses:[Lcom/vk/sdk/api/VKResponse;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mRequests:[Lcom/vk/sdk/api/VKRequest;

    array-length p1, p1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->mOriginalListeners:[Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    aget-object p1, p1, v1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mResponses:[Lcom/vk/sdk/api/VKResponse;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/vk/sdk/api/VKBatchRequest;->requestListener:Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/vk/sdk/api/VKBatchRequest;->mResponses:[Lcom/vk/sdk/api/VKResponse;

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;->onComplete([Lcom/vk/sdk/api/VKResponse;)V

    :cond_4
    return-void
.end method
