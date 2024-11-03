.class public Lcom/vk/sdk/api/model/VKApiOwner;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKApiOwner.java"

# interfaces
.implements Lcom/vk/sdk/api/model/Identifiable;
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiOwner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiOwner$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiOwner$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiOwner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiOwner;->id:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiOwner;->id:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiOwner;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiOwner;->id:I

    return v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiOwner;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;
    .locals 1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiOwner;->fields:Lorg/json/JSONObject;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiOwner;->id:I

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiOwner;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
