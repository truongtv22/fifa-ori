.class public Lcom/vk/sdk/api/model/VKApiComment;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKApiComment.java"

# interfaces
.implements Lcom/vk/sdk/api/model/Identifiable;
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachments:Lcom/vk/sdk/api/model/VKAttachments;

.field public can_like:Z

.field public date:J

.field public from_id:I

.field public id:I

.field public likes:I

.field public reply_to_comment:I

.field public reply_to_user:I

.field public text:Ljava/lang/String;

.field public user_likes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiComment$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiComment$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->from_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->reply_to_user:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->reply_to_comment:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->likes:I

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->user_likes:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiComment;->can_like:Z

    const-class v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKAttachments;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiComment;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiComment;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiComment;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->id:I

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiComment;
    .locals 2

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->id:I

    const-string v0, "from_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->from_id:I

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->date:J

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->text:Ljava/lang/String;

    const-string v0, "reply_to_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->reply_to_user:I

    const-string v0, "reply_to_comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->reply_to_comment:I

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    const-string v1, "attachments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/model/VKAttachments;->fill(Lorg/json/JSONArray;)V

    const-string v0, "likes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "count"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->likes:I

    const-string v0, "user_likes"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->user_likes:Z

    const-string v0, "can_like"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vk/sdk/api/model/VKApiComment;->can_like:Z

    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiComment;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiComment;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->from_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->reply_to_user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->reply_to_comment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->likes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->user_likes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->can_like:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiComment;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
