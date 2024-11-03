.class public abstract Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;
.super Ljava/lang/Object;
.source "VKAbstractOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VKAbstractCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OperationType:",
        "Lcom/vk/sdk/api/httpClient/VKAbstractOperation;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onComplete(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOperationType;TResponseType;)V"
        }
    .end annotation
.end method

.method public abstract onError(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;Lcom/vk/sdk/api/VKError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOperationType;",
            "Lcom/vk/sdk/api/VKError;",
            ")V"
        }
    .end annotation
.end method
