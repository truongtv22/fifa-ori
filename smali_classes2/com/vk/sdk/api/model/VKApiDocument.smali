.class public Lcom/vk/sdk/api/model/VKApiDocument;
.super Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.source "VKApiDocument.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vk/sdk/api/model/Identifiable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_key:Ljava/lang/String;

.field public date:J

.field public ext:Ljava/lang/String;

.field public id:I

.field private mIsGif:Z

.field private mIsImage:Z

.field public owner_id:I

.field public photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

.field public photo_100:Ljava/lang/String;

.field public photo_130:Ljava/lang/String;

.field public size:J

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiDocument$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiDocument$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiDocument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->date:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->owner_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->size:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_100:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_130:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->access_key:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsImage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsGif:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->date:J

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiDocument;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiDocument;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "doc"

    return-object v0
.end method

.method public isGif()Z
    .locals 2

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsGif:Z

    if-nez v0, :cond_1

    const-string v0, "gif"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsGif:Z

    return v0
.end method

.method public isImage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsImage:Z

    if-nez v0, :cond_1

    const-string v0, "jpg"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jpeg"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "png"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bmp"

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsImage:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiDocument;
    .locals 4

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->id:I

    const-string v0, "owner_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->owner_id:I

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->title:Ljava/lang/String;

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->size:J

    const-string v0, "ext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->url:Ljava/lang/String;

    const-string v0, "access_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->access_key:Ljava/lang/String;

    const-string v0, "date"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->date:J

    const-string v0, "photo_100"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_100:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x64

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_100:Ljava/lang/String;

    const/16 v3, 0x4b

    invoke-static {v2, v1, v3}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_0
    const-string v0, "photo_130"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_130:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_130:Ljava/lang/String;

    const/16 v2, 0x82

    invoke-static {v0, v2, v1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->sort()V

    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiDocument;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiDocument;

    move-result-object p1

    return-object p1
.end method

.method public toAttachmentString()Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->owner_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiDocument;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiDocument;->access_key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiDocument;->access_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->owner_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->ext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_100:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo_130:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiDocument;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiDocument;->access_key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsImage:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiDocument;->mIsGif:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
