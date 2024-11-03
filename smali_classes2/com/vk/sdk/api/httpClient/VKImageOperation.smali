.class public Lcom/vk/sdk/api/httpClient/VKImageOperation;
.super Lcom/vk/sdk/api/httpClient/VKHttpOperation;
.source "VKImageOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/httpClient/VKHttpOperation<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public imageDensity:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    return-void
.end method


# virtual methods
.method public getResultObject()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->getResponseData()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation;->imageDensity:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation;->imageDensity:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/vk/sdk/api/httpClient/VKImageOperation;->imageDensity:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getResultObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->getResultObject()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setImageOperationListener(Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;)V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;

    invoke-direct {v0, p0, p1}, Lcom/vk/sdk/api/httpClient/VKImageOperation$1;-><init>(Lcom/vk/sdk/api/httpClient/VKImageOperation;Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;)V

    invoke-virtual {p0, v0}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->setCompleteListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKOperationCompleteListener;)V

    return-void
.end method
