.class public Lcom/vk/sdk/api/model/VKApiUserFull$Counters;
.super Ljava/lang/Object;
.source "VKApiUserFull.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKApiUserFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counters"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiUserFull$Counters;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_COUNTER:I = -0x1


# instance fields
.field public albums:I

.field public audios:I

.field public followers:I

.field public friends:I

.field public groups:I

.field public mutual_friends:I

.field public notes:I

.field public online_friends:I

.field public pages:I

.field public photos:I

.field public subscriptions:I

.field public user_videos:I

.field public videos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiUserFull$Counters$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->albums:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->videos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->audios:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->notes:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->friends:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->photos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->groups:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->online_friends:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->mutual_friends:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->user_videos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->followers:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->subscriptions:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->pages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->albums:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->videos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->audios:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->notes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->friends:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->photos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->groups:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->online_friends:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->mutual_friends:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->user_videos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->followers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->subscriptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->pages:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vk/sdk/api/model/VKApiUserFull$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->albums:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->videos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->audios:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->notes:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->friends:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->photos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->groups:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->online_friends:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->mutual_friends:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->user_videos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->followers:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->subscriptions:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->pages:I

    const-string v1, "albums"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->albums:I

    const-string v0, "audios"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->audios:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->audios:I

    const-string v0, "followers"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->followers:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->followers:I

    const-string v0, "photos"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->photos:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->photos:I

    const-string v0, "friends"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->friends:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->friends:I

    const-string v0, "groups"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->groups:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->groups:I

    const-string v0, "mutual_friends"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->mutual_friends:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->mutual_friends:I

    const-string v0, "notes"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->notes:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->notes:I

    const-string v0, "online_friends"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->online_friends:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->online_friends:I

    const-string v0, "user_videos"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->user_videos:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->user_videos:I

    const-string v0, "videos"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->videos:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->videos:I

    const-string v0, "subscriptions"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->subscriptions:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->subscriptions:I

    const-string v0, "pages"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->pages:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->pages:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->albums:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->videos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->audios:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->notes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->friends:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->photos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->groups:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->online_friends:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->mutual_friends:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->user_videos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->followers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->subscriptions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;->pages:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
