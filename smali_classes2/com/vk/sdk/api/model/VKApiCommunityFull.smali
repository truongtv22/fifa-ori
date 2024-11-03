.class public Lcom/vk/sdk/api/model/VKApiCommunityFull;
.super Lcom/vk/sdk/api/model/VKApiCommunity;
.source "VKApiCommunityFull.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/model/VKApiCommunityFull$Link;,
        Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;,
        Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;
    }
.end annotation


# static fields
.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final BLACKLISTED:Ljava/lang/String; = "blacklisted"

.field public static final CAN_POST:Ljava/lang/String; = "can_post"

.field public static final CAN_SEE_ALL_POSTS:Ljava/lang/String; = "can_see_all_posts"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTACTS:Ljava/lang/String; = "contacts"

.field public static final COUNTERS:Ljava/lang/String; = "counters"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiCommunityFull;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final FIXED_POST:Ljava/lang/String; = "fixed_post"

.field public static final LINKS:Ljava/lang/String; = "links"

.field public static final MEMBERS_COUNT:Ljava/lang/String; = "members_count"

.field public static final PLACE:Ljava/lang/String; = "place"

.field public static final SITE:Ljava/lang/String; = "site"

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final VERIFIED:Ljava/lang/String; = "verified"

.field public static final WIKI_PAGE:Ljava/lang/String; = "wiki_page"


# instance fields
.field public blacklisted:Z

.field public can_post:Z

.field public can_see_all_posts:Z

.field public city:Lcom/vk/sdk/api/model/VKApiCity;

.field public contacts:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public counters:Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

.field public country:Lcom/vk/sdk/api/model/VKApiCountry;

.field public description:Ljava/lang/String;

.field public end_date:J

.field public fixed_post:I

.field public links:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiCommunityFull$Link;",
            ">;"
        }
    .end annotation
.end field

.field public members_count:I

.field public place:Lcom/vk/sdk/api/model/VKApiPlace;

.field public site:Ljava/lang/String;

.field public start_date:J

.field public status:Ljava/lang/String;

.field public status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

.field public verified:Z

.field public wiki_page:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiCommunityFull$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiCommunity;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunity;-><init>(Landroid/os/Parcel;)V

    const-class v0, Lcom/vk/sdk/api/model/VKApiCity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiCity;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->city:Lcom/vk/sdk/api/model/VKApiCity;

    const-class v0, Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiCountry;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->country:Lcom/vk/sdk/api/model/VKApiCountry;

    const-class v0, Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiAudio;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

    const-class v0, Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiPlace;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->place:Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->wiki_page:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->members_count:I

    const-class v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->counters:Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->start_date:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->end_date:J

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->can_post:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->can_see_all_posts:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->status:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKList;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->contacts:Lcom/vk/sdk/api/model/VKList;

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKList;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->links:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->fixed_post:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->verified:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->site:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->blacklisted:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunity;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull;
    .locals 3

    invoke-super {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunity;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunity;

    const-string v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vk/sdk/api/model/VKApiCity;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiCity;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiCity;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCity;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->city:Lcom/vk/sdk/api/model/VKApiCity;

    :cond_0
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiCountry;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiCountry;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCountry;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->country:Lcom/vk/sdk/api/model/VKApiCountry;

    :cond_1
    const-string v0, "place"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiPlace;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiPlace;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiPlace;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->place:Lcom/vk/sdk/api/model/VKApiPlace;

    :cond_2
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->description:Ljava/lang/String;

    const-string v0, "wiki_page"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->wiki_page:Ljava/lang/String;

    const-string v0, "members_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->members_count:I

    const-string v0, "counters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

    invoke-direct {v1, v0}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->counters:Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

    :cond_3
    const-string v0, "start_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->start_date:J

    const-string v0, "end_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->end_date:J

    const-string v0, "can_post"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->can_post:Z

    const-string v0, "can_see_all_posts"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->can_see_all_posts:Z

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->status:Ljava/lang/String;

    const-string v0, "status_audio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiAudio;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiAudio;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

    :cond_4
    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "contacts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-class v2, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->contacts:Lcom/vk/sdk/api/model/VKList;

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "links"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-class v2, Lcom/vk/sdk/api/model/VKApiCommunityFull$Link;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->links:Lcom/vk/sdk/api/model/VKList;

    const-string v0, "fixed_post"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->fixed_post:I

    const-string v0, "verified"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->verified:Z

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->blacklisted:Z

    const-string v0, "site"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->site:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/vk/sdk/api/model/VKApiCommunity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->city:Lcom/vk/sdk/api/model/VKApiCity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->country:Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->place:Lcom/vk/sdk/api/model/VKApiPlace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->wiki_page:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->members_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->counters:Lcom/vk/sdk/api/model/VKApiCommunityFull$Counters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->start_date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->end_date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->can_post:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->can_see_all_posts:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->contacts:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->links:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->fixed_post:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->verified:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->site:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull;->blacklisted:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
