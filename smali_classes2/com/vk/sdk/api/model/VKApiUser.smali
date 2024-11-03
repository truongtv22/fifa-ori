.class public Lcom/vk/sdk/api/model/VKApiUser;
.super Lcom/vk/sdk/api/model/VKApiOwner;
.source "VKApiUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiUser;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELDS_DEFAULT:Ljava/lang/String;

.field public static final FIELD_ONLINE:Ljava/lang/String; = "online"

.field public static final FIELD_ONLINE_MOBILE:Ljava/lang/String; = "online_mobile"

.field public static final FIELD_PHOTO_100:Ljava/lang/String; = "photo_100"

.field public static final FIELD_PHOTO_200:Ljava/lang/String; = "photo_200"

.field public static final FIELD_PHOTO_400_ORIGIN:Ljava/lang/String; = "photo_400_orig"

.field public static final FIELD_PHOTO_50:Ljava/lang/String; = "photo_50"

.field public static final FIELD_PHOTO_BIG:Ljava/lang/String; = "photo_big"

.field public static final FIELD_PHOTO_MAX:Ljava/lang/String; = "photo_max"

.field public static final FIELD_PHOTO_MAX_ORIGIN:Ljava/lang/String; = "photo_max_orig"


# instance fields
.field public first_name:Ljava/lang/String;

.field private full_name:Ljava/lang/String;

.field public last_name:Ljava/lang/String;

.field public online:Z

.field public online_mobile:Z

.field public photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

.field public photo_100:Ljava/lang/String;

.field public photo_200:Ljava/lang/String;

.field public photo_200_orig:Ljava/lang/String;

.field public photo_400_orig:Ljava/lang/String;

.field public photo_50:Ljava/lang/String;

.field public photo_big:Ljava/lang/String;

.field public photo_max:Ljava/lang/String;

.field public photo_max_orig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "photo_100"

    const-string v1, "photo_200"

    const-string v2, "online"

    const-string v3, "online_mobile"

    const-string v4, "photo_50"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vk/sdk/api/model/VKApiUser;->FIELDS_DEFAULT:Ljava/lang/String;

    new-instance v0, Lcom/vk/sdk/api/model/VKApiUser$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiUser$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiOwner;-><init>()V

    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    const-string v0, "http://vk.com/images/camera_c.gif"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    const-string v0, "http://vk.com/images/camera_b.gif"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    const-string v1, "http://vk.com/images/camera_a.gif"

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200_orig:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    iput-object v2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiOwner;-><init>(Landroid/os/Parcel;)V

    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    const-string v0, "http://vk.com/images/camera_c.gif"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    const-string v0, "http://vk.com/images/camera_b.gif"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    const-string v1, "http://vk.com/images/camera_a.gif"

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200_orig:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    iput-object v2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->online:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->online_mobile:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->full_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiOwner;-><init>()V

    const-string v0, "DELETED"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    const-string v0, "http://vk.com/images/camera_c.gif"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    const-string v0, "http://vk.com/images/camera_b.gif"

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    const-string v1, "http://vk.com/images/camera_a.gif"

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200_orig:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    iput-object v2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUser;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUser;

    return-void
.end method


# virtual methods
.method protected addSquarePhoto(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-static {p1, p2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_0
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUser;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUser;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUser;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUser;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUser;
    .locals 2

    invoke-super {p0, p1}, Lcom/vk/sdk/api/model/VKApiOwner;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;

    const-string v0, "first_name"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    const-string v0, "last_name"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    const-string v0, "online"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->online:Z

    const-string v0, "online_mobile"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->online_mobile:Z

    const-string v0, "photo_50"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/model/VKApiUser;->addSquarePhoto(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    const-string v0, "photo_100"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/model/VKApiUser;->addSquarePhoto(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    const-string v0, "photo_200"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/vk/sdk/api/model/VKApiUser;->addSquarePhoto(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    const-string v0, "photo_400_orig"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    const-string v0, "photo_max"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    const-string v0, "photo_max_orig"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    const-string v0, "photo_big"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->sort()V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->full_name:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->full_name:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->full_name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vk/sdk/api/model/VKApiOwner;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->online:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->online_mobile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_50:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_100:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_200:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiUser;->full_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_400_orig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_max_orig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiUser;->photo_big:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
