.class public abstract Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;
.super Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;
.source "VKImageOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/httpClient/VKImageOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VKImageOperationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener<",
        "Lcom/vk/sdk/api/httpClient/VKImageOperation;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;-><init>()V

    return-void
.end method
