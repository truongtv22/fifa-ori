.class public Lcom/vk/sdk/api/model/VKApiPhotoAlbum;
.super Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.source "VKApiPhotoAlbum.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vk/sdk/api/model/Identifiable;


# static fields
.field public static final COVER_M:Ljava/lang/String; = "http://vk.com/images/m_noalbum.png"

.field public static final COVER_S:Ljava/lang/String; = "http://vk.com/images/s_noalbum.png"

.field public static final COVER_X:Ljava/lang/String; = "http://vk.com/images/x_noalbum.png"

.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiPhotoAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public can_upload:Z

.field public created:J

.field public description:Ljava/lang/String;

.field public id:I

.field public owner_id:I

.field public photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

.field public privacy:I

.field public size:I

.field public thumb_id:I

.field public thumb_src:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updated:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhotoAlbum$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->size:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->privacy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->owner_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->can_upload:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->updated:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->created:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->thumb_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->thumb_src:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKPhotoSizes;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

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

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhotoAlbum;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "album"

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->privacy:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhotoAlbum;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPhotoAlbum;
    .locals 3

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->id:I

    const-string v0, "thumb_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->thumb_id:I

    const-string v0, "owner_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->owner_id:I

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->title:Ljava/lang/String;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->description:Ljava/lang/String;

    const-string v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->created:J

    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->updated:J

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->size:I

    const-string v0, "can_upload"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->can_upload:Z

    const-string v0, "thumb_src"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->thumb_src:Ljava/lang/String;

    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->privacy:I

    goto :goto_0

    :cond_0
    const-string v0, "privacy_view"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/sdk/api/model/VKPrivacy;->parsePrivacy(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->privacy:I

    :goto_0
    const-string v0, "sizes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->fill(Lorg/json/JSONArray;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const/16 v0, 0x4b

    const/16 v1, 0x37

    const-string v2, "http://vk.com/images/s_noalbum.png"

    invoke-static {v2, v0, v1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const/16 v0, 0x82

    const/16 v1, 0x61

    const-string v2, "http://vk.com/images/m_noalbum.png"

    invoke-static {v2, v0, v1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const/16 v0, 0x1b0

    const/16 v1, 0xf9

    const-string v2, "http://vk.com/images/x_noalbum.png"

    invoke-static {v2, v0, v1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->sort()V

    :goto_1
    return-object p0
.end method

.method public toAttachmentString()Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->owner_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->privacy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->owner_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->can_upload:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->updated:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->created:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->thumb_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->thumb_src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
