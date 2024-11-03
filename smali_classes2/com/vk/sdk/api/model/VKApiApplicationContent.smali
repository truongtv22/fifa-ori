.class public Lcom/vk/sdk/api/model/VKApiApplicationContent;
.super Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.source "VKApiApplicationContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiApplicationContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field public photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

.field public photo_130:Ljava/lang/String;

.field public photo_604:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiApplicationContent$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiApplicationContent$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_130:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_604:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKPhotoSizes;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiApplicationContent;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiApplicationContent;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "app"

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiApplicationContent;
    .locals 3

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->id:I

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->name:Ljava/lang/String;

    const-string v0, "photo_130"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_130:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_130:Ljava/lang/String;

    const/16 v2, 0x82

    invoke-static {v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_0
    const-string v0, "photo_604"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_604:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_604:Ljava/lang/String;

    const/16 v1, 0x25c

    invoke-static {v0, v1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_1
    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiApplicationContent;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiApplicationContent;

    move-result-object p1

    return-object p1
.end method

.method public toAttachmentString()Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attaching app info is not supported by VK.com API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_130:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo_604:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiApplicationContent;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
