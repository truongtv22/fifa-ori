.class public Lcom/vk/sdk/api/model/VKApiCommunity;
.super Lcom/vk/sdk/api/model/VKApiOwner;
.source "VKApiCommunity.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vk/sdk/api/model/Identifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/model/VKApiCommunity$Type;,
        Lcom/vk/sdk/api/model/VKApiCommunity$Status;,
        Lcom/vk/sdk/api/model/VKApiCommunity$AdminLevel;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiCommunity;",
            ">;"
        }
    .end annotation
.end field

.field static final PHOTO_100:Ljava/lang/String; = "http://vk.com/images/community_100.gif"

.field static final PHOTO_50:Ljava/lang/String; = "http://vk.com/images/community_50.gif"

.field private static final TYPE_EVENT:Ljava/lang/String; = "event"

.field private static final TYPE_GROUP:Ljava/lang/String; = "group"

.field private static final TYPE_PAGE:Ljava/lang/String; = "page"


# instance fields
.field public admin_level:I

.field public is_admin:Z

.field public is_closed:I

.field public is_member:Z

.field public name:Ljava/lang/String;

.field public photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

.field public photo_100:Ljava/lang/String;

.field public photo_200:Ljava/lang/String;

.field public photo_50:Ljava/lang/String;

.field public screen_name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiCommunity$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiCommunity$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiCommunity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiOwner;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiOwner;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->screen_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_closed:I

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_admin:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->admin_level:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_member:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_50:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_100:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_200:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKPhotoSizes;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiOwner;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunity;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunity;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunity;
    .locals 5

    invoke-super {p0, p1}, Lcom/vk/sdk/api/model/VKApiOwner;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->name:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->id:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "club%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->screen_name:Ljava/lang/String;

    const-string v1, "is_closed"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_closed:I

    const-string v1, "is_admin"

    invoke-static {p1, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_admin:Z

    const-string v1, "admin_level"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->admin_level:I

    const-string v1, "is_member"

    invoke-static {p1, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_member:Z

    const-string v1, "photo_50"

    const-string v2, "http://vk.com/images/community_50.gif"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_50:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_50:Ljava/lang/String;

    const/16 v4, 0x32

    invoke-static {v2, v4}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_0
    const-string v1, "photo_100"

    const-string v2, "http://vk.com/images/community_100.gif"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_100:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_100:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v2, v4}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_1
    const-string v1, "photo_200"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_200:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_200:Ljava/lang/String;

    const/16 v4, 0xc8

    invoke-static {v2, v4}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {v1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->sort()V

    const-string v1, "type"

    const-string v2, "group"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v3, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->type:I

    goto :goto_0

    :cond_3
    const-string v1, "page"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->type:I

    goto :goto_0

    :cond_4
    const-string v0, "event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->type:I

    :cond_5
    :goto_0
    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunity;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunity;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunity;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/vk/sdk/api/model/VKApiOwner;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->screen_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_closed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_admin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->admin_level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->is_member:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_50:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_100:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo_200:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunity;->photo:Lcom/vk/sdk/api/model/VKPhotoSizes;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
