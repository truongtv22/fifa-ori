.class public Lcom/vk/sdk/api/model/VKApiPost;
.super Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.source "VKApiPost.java"

# interfaces
.implements Lcom/vk/sdk/api/model/Identifiable;
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachments:Lcom/vk/sdk/api/model/VKAttachments;

.field public can_like:Z

.field public can_post_comment:Z

.field public can_publish:Z

.field public comments_count:I

.field public copy_history:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiPost;",
            ">;"
        }
    .end annotation
.end field

.field public date:J

.field public friends_only:Z

.field public from_id:I

.field public geo:Lcom/vk/sdk/api/model/VKApiPlace;

.field public id:I

.field public likes_count:I

.field public post_type:Ljava/lang/String;

.field public reply_owner_id:I

.field public reply_post_id:I

.field public reposts_count:I

.field public signer_id:I

.field public text:Ljava/lang/String;

.field public to_id:I

.field public user_likes:Z

.field public user_reposted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPost$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPost$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiPost;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->to_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->from_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->text:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reply_owner_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reply_post_id:I

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->friends_only:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->comments_count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_post_comment:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->likes_count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->user_likes:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_like:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_publish:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reposts_count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiPost;->user_reposted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->post_type:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKAttachments;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    const-class v0, Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiPlace;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->geo:Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiPost;->signer_id:I

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

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPost;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPost;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "wall"

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPost;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPost;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPost;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->id:I

    const-string v0, "to_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->to_id:I

    const-string v0, "from_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->from_id:I

    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->date:J

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->text:Ljava/lang/String;

    const-string v0, "reply_owner_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reply_owner_id:I

    const-string v0, "reply_post_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reply_post_id:I

    const-string v0, "friends_only"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->friends_only:Z

    const-string v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "count"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vk/sdk/api/model/VKApiPost;->comments_count:I

    const-string v2, "can_post"

    invoke-static {v0, v2}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_post_comment:Z

    :cond_0
    const-string v0, "likes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vk/sdk/api/model/VKApiPost;->likes_count:I

    const-string v2, "user_likes"

    invoke-static {v0, v2}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vk/sdk/api/model/VKApiPost;->user_likes:Z

    const-string v2, "can_like"

    invoke-static {v0, v2}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_like:Z

    const-string v2, "can_publish"

    invoke-static {v0, v2}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_publish:Z

    :cond_1
    const-string v0, "reposts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiPost;->reposts_count:I

    const-string v1, "user_reposted"

    invoke-static {v0, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->user_reposted:Z

    :cond_2
    const-string v0, "post_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->post_type:Ljava/lang/String;

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    const-string v1, "attachments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/model/VKAttachments;->fill(Lorg/json/JSONArray;)V

    const-string v0, "geo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiPlace;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiPlace;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPlace;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->geo:Lcom/vk/sdk/api/model/VKApiPlace;

    :cond_3
    const-string v0, "signer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->signer_id:I

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "copy_history"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-class v1, Lcom/vk/sdk/api/model/VKApiPost;

    invoke-direct {v0, p1, v1}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->copy_history:Lcom/vk/sdk/api/model/VKList;

    return-object p0
.end method

.method public toAttachmentString()Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wall"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPost;->to_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiPost;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->to_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->from_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reply_owner_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reply_post_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->friends_only:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->comments_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_post_comment:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->likes_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->user_likes:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_like:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->can_publish:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->reposts_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->user_reposted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->post_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->attachments:Lcom/vk/sdk/api/model/VKAttachments;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPost;->geo:Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiPost;->signer_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
