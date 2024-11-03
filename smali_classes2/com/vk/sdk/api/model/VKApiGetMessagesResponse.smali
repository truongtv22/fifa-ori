.class public Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKApiGetMessagesResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public items:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->count:I

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKList;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->items:Lcom/vk/sdk/api/model/VKList;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;
    .locals 2

    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->count:I

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "items"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-class v1, Lcom/vk/sdk/api/model/VKApiMessage;

    invoke-direct {v0, p1, v1}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->items:Lcom/vk/sdk/api/model/VKList;

    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiGetMessagesResponse;->items:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
