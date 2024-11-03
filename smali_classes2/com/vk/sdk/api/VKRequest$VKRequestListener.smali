.class public abstract Lcom/vk/sdk/api/VKRequest$VKRequestListener;
.super Ljava/lang/Object;
.source "VKRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VKRequestListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attemptFailed(Lcom/vk/sdk/api/VKRequest;II)V
    .locals 0

    return-void
.end method

.method public onComplete(Lcom/vk/sdk/api/VKResponse;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/vk/sdk/api/VKRequest$VKProgressType;JJ)V
    .locals 0

    return-void
.end method
