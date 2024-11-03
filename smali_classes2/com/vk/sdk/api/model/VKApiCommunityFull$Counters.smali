.class public Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;
.super Ljava/lang/Object;
.source "VKApiCommunityFull.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKApiCommunityFull;
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
            "Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_COUNTER:I = -0x1


# instance fields
.field public albums:I

.field public audios:I

.field public docs:I

.field public photos:I

.field public topics:I

.field public videos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->photos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->albums:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->audios:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->videos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->topics:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->docs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->photos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->albums:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->audios:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->videos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->topics:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->docs:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vk/sdk/api/model/VKApiCommunityFull$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->photos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->albums:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->audios:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->videos:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->topics:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->docs:I

    const-string v1, "photos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->photos:I

    const-string v0, "albums"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->albums:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->albums:I

    const-string v0, "audios"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->audios:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->audios:I

    const-string v0, "videos"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->videos:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->videos:I

    const-string v0, "topics"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->topics:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->topics:I

    const-string v0, "docs"

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->docs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->docs:I

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

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->photos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->albums:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->audios:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->videos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->topics:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;->docs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
