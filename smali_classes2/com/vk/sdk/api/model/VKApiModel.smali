.class public abstract Lcom/vk/sdk/api/model/VKApiModel;
.super Ljava/lang/Object;
.source "VKApiModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public fields:Lorg/json/JSONObject;

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiModel;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiModel;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiModel;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/vk/sdk/api/model/ParseUtils;->parseViaReflection(Ljava/lang/Object;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKApiModel;

    return-object p1
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiModel;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiModel;->mKeyedTags:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiModel;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiModel;->mTag:Ljava/lang/Object;

    return-void
.end method
