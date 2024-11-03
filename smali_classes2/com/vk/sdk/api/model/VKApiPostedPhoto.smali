.class public Lcom/vk/sdk/api/model/VKApiPostedPhoto;
.super Lcom/vk/sdk/api/model/VKApiPhoto;
.source "VKApiPostedPhoto.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiPostedPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPostedPhoto$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPostedPhoto$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiPostedPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiPhoto;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhoto;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "posted_photo"

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPostedPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPostedPhoto;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhoto;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPostedPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPostedPhoto;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPostedPhoto;
    .locals 0

    invoke-super {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhoto;

    return-object p0
.end method
