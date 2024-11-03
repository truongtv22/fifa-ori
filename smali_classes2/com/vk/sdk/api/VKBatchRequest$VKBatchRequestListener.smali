.class public abstract Lcom/vk/sdk/api/VKBatchRequest$VKBatchRequestListener;
.super Ljava/lang/Object;
.source "VKBatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKBatchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VKBatchRequestListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete([Lcom/vk/sdk/api/VKResponse;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 0

    return-void
.end method
