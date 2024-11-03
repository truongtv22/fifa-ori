.class public Lcom/vk/sdk/api/model/VKApiPhoto;
.super Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.source "VKApiPhoto.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vk/sdk/api/model/Identifiable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiPhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_key:Ljava/lang/String;

.field public album_id:I

.field public can_comment:Z

.field public comments:I

.field public date:J

.field public height:I

.field public id:I

.field public likes:I

.field public owner_id:I

.field public photo_1280:Ljava/lang/String;

.field public photo_130:Ljava/lang/String;

.field public photo_2560:Ljava/lang/String;

.field public photo_604:Ljava/lang/String;

.field public photo_75:Ljava/lang/String;

.field public photo_807:Ljava/lang/String;

.field public src:Lcom/vk/sdk/api/model/VKPhotoSizes;

.field public tags:I

.field public text:Ljava/lang/String;

.field public user_likes:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhoto$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhoto$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiPhoto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->album_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->owner_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->date:J

    const-class v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_75:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_130:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_604:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_807:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_1280:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_2560:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->user_likes:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->can_comment:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->likes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->comments:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->tags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->access_key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const-string v0, "photo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->owner_id:I

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhoto;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "photo"

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhoto;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhoto;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhoto;
    .locals 4

    const-string v0, "album_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->album_id:I

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->date:J

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    const-string v0, "owner_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->owner_id:I

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->text:Ljava/lang/String;

    const-string v0, "access_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->access_key:Ljava/lang/String;

    const-string v0, "photo_75"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_75:Ljava/lang/String;

    const-string v0, "photo_130"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_130:Ljava/lang/String;

    const-string v0, "photo_604"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_604:Ljava/lang/String;

    const-string v0, "photo_807"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_807:Ljava/lang/String;

    const-string v0, "photo_1280"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_1280:Ljava/lang/String;

    const-string v0, "photo_2560"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_2560:Ljava/lang/String;

    const-string v0, "likes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "count"

    invoke-static {v0, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->likes:I

    const-string v2, "user_likes"

    invoke-static {v0, v2}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->user_likes:Z

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->comments:I

    const-string v0, "tags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->tags:I

    const-string v0, "can_comment"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->can_comment:Z

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->setOriginalDimension(II)V

    const-string v0, "sizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->fill(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_75:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_75:Ljava/lang/String;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const/16 v3, 0x73

    invoke-static {v0, v3, v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_130:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_130:Ljava/lang/String;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const/16 v3, 0x6d

    invoke-static {v0, v3, v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_2
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_604:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_604:Ljava/lang/String;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const/16 v3, 0x78

    invoke-static {v0, v3, v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_3
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_807:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_807:Ljava/lang/String;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const/16 v3, 0x79

    invoke-static {v0, v3, v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_4
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_1280:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_1280:Ljava/lang/String;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const/16 v3, 0x7a

    invoke-static {v0, v3, v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_5
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_2560:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_2560:Ljava/lang/String;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    const/16 v3, 0x77

    invoke-static {v0, v3, v1, v2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_6
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->sort()V

    :goto_0
    return-object p0
.end method

.method public toAttachmentString()Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->owner_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->access_key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->access_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->album_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->owner_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->src:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_75:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_130:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_604:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_807:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_1280:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->photo_2560:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->user_likes:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->can_comment:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->likes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->comments:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->tags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhoto;->access_key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
