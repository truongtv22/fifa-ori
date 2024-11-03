.class public abstract Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;
.super Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;
.source "VKJsonOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/httpClient/VKJsonOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VKJSONOperationCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener<",
        "Lcom/vk/sdk/api/httpClient/VKJsonOperation;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;-><init>()V

    return-void
.end method
