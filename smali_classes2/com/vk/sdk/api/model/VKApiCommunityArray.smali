.class public Lcom/vk/sdk/api/model/VKApiCommunityArray;
.super Lcom/vk/sdk/api/model/VKList;
.source "VKApiCommunityArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/model/VKList<",
        "Lcom/vk/sdk/api/model/VKApiCommunityFull;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-class v0, Lcom/vk/sdk/api/model/VKApiCommunityFull;

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/api/model/VKApiCommunityArray;->fill(Lorg/json/JSONObject;Ljava/lang/Class;)V

    return-object p0
.end method
