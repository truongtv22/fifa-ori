.class public Lcom/vk/sdk/api/model/VKApiMessage;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKApiMessage.java"

# interfaces
.implements Lcom/vk/sdk/api/model/Identifiable;
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachments:Lcom/vk/sdk/api/model/VKAttachments;

.field public body:Ljava/lang/String;

.field public date:J

.field public deleted:Z

.field public emoji:Z

.field public fwd_messages:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiMessage;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public out:Z

.field public read_state:Z

.field public title:Ljava/lang/String;

.field public user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiMessage$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiMessage$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->user_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->date:J

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->read_state:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->out:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->body:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKAttachments;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKList;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->fwd_messages:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->emoji:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiMessage;->deleted:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiMessage;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiMessage;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->id:I

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->id:I

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->user_id:I

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->date:J

    const-string v0, "read_state"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->read_state:Z

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->out:Z

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->title:Ljava/lang/String;

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->body:Ljava/lang/String;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    const-string v1, "attachments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/model/VKAttachments;->fill(Lorg/json/JSONArray;)V

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "fwd_messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-class v2, Lcom/vk/sdk/api/model/VKApiMessage;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->fwd_messages:Lcom/vk/sdk/api/model/VKList;

    const-string v0, "emoji"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->emoji:Z

    const-string v0, "deleted"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vk/sdk/api/model/VKApiMessage;->deleted:Z

    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiMessage;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiMessage;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->user_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->read_state:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->out:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiMessage;->fwd_messages:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiMessage;->emoji:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiMessage;->deleted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
