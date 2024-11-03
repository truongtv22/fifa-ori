.class public Lcom/vk/sdk/api/model/VKApiPoll;
.super Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.source "VKApiPoll.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/model/VKApiPoll$Answer;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiPoll;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public answer_id:I

.field public answers:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiPoll$Answer;",
            ">;"
        }
    .end annotation
.end field

.field public created:J

.field public id:I

.field public owner_id:I

.field public question:Ljava/lang/String;

.field public votes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPoll$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPoll$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiPoll;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->owner_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->created:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->question:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->votes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->answer_id:I

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKList;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiPoll;->answers:Lcom/vk/sdk/api/model/VKList;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPoll;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPoll;

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

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->id:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "poll"

    return-object v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPoll;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPoll;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPoll;
    .locals 2

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->id:I

    const-string v0, "owner_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->owner_id:I

    const-string v0, "created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->created:J

    const-string v0, "question"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->question:Ljava/lang/String;

    const-string v0, "votes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->votes:I

    const-string v0, "answer_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->answer_id:I

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "answers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-class v1, Lcom/vk/sdk/api/model/VKApiPoll$Answer;

    invoke-direct {v0, p1, v1}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->answers:Lcom/vk/sdk/api/model/VKList;

    return-object p0
.end method

.method public toAttachmentString()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->owner_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->created:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->question:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->votes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->answer_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiPoll;->answers:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
