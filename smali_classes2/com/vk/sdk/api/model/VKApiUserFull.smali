.class public Lcom/vk/sdk/api/model/VKApiUserFull;
.super Lcom/vk/sdk/api/model/VKApiUser;
.source "VKApiUserFull.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/model/VKApiUserFull$RelativeType;,
        Lcom/vk/sdk/api/model/VKApiUserFull$PeopleMain;,
        Lcom/vk/sdk/api/model/VKApiUserFull$LifeMain;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Political;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Attitude;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Relation;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Sex;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Counters;,
        Lcom/vk/sdk/api/model/VKApiUserFull$Relative;
    }
.end annotation


# static fields
.field public static final ABOUT:Ljava/lang/String; = "about"

.field public static final ACTIVITIES:Ljava/lang/String; = "activities"

.field public static final ACTIVITY:Ljava/lang/String; = "activity"

.field public static final BDATE:Ljava/lang/String; = "bdate"

.field public static final BLACKLISTED_BY_ME:Ljava/lang/String; = "blacklisted_by_me"

.field public static final BOOKS:Ljava/lang/String; = "books"

.field public static final CAN_POST:Ljava/lang/String; = "can_post"

.field public static final CAN_SEE_ALL_POSTS:Ljava/lang/String; = "can_see_all_posts"

.field public static final CAN_WRITE_PRIVATE_MESSAGE:Ljava/lang/String; = "can_write_private_message"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONNECTIONS:Ljava/lang/String; = "connections"

.field public static final CONTACTS:Ljava/lang/String; = "contacts"

.field public static final COUNTERS:Ljava/lang/String; = "counters"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiUserFull;",
            ">;"
        }
    .end annotation
.end field

.field public static final GAMES:Ljava/lang/String; = "games"

.field public static final INTERESTS:Ljava/lang/String; = "interests"

.field public static final LAST_SEEN:Ljava/lang/String; = "last_seen"

.field public static final MOVIES:Ljava/lang/String; = "movies"

.field public static final OCCUPATION:Ljava/lang/String; = "occupation"

.field public static final PERSONAL:Ljava/lang/String; = "personal"

.field public static final QUOTES:Ljava/lang/String; = "quotes"

.field public static final RELATION:Ljava/lang/String; = "relation"

.field public static final RELATIVES:Ljava/lang/String; = "relatives"

.field public static final SCHOOLS:Ljava/lang/String; = "schools"

.field public static final SCREEN_NAME:Ljava/lang/String; = "screen_name"

.field public static final SEX:Ljava/lang/String; = "sex"

.field public static final SITE:Ljava/lang/String; = "site"

.field public static final TV:Ljava/lang/String; = "tv"

.field public static final UNIVERSITIES:Ljava/lang/String; = "universities"

.field public static final VERIFIED:Ljava/lang/String; = "verified"

.field public static final WALL_DEFAULT:Ljava/lang/String; = "wall_default"


# instance fields
.field public about:Ljava/lang/String;

.field public activities:Ljava/lang/String;

.field public activity:Ljava/lang/String;

.field public alcohol:I

.field public bdate:Ljava/lang/String;

.field public blacklisted_by_me:Z

.field public books:Ljava/lang/String;

.field public can_post:Z

.field public can_see_all_posts:Z

.field public can_write_private_message:Z

.field public city:Lcom/vk/sdk/api/model/VKApiCity;

.field public counters:Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

.field public country:Lcom/vk/sdk/api/model/VKApiCountry;

.field public facebook:Ljava/lang/String;

.field public facebook_name:Ljava/lang/String;

.field public games:Ljava/lang/String;

.field public home_phone:Ljava/lang/String;

.field public inspired_by:Ljava/lang/String;

.field public instagram:Ljava/lang/String;

.field public interests:Ljava/lang/String;

.field public is_banned:Z

.field public is_deleted:Z

.field public langs:[Ljava/lang/String;

.field public last_seen:J

.field public life_main:I

.field public livejournal:Ljava/lang/String;

.field public mobile_phone:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public occupation:Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

.field public people_main:I

.field public political:I

.field public quotes:Ljava/lang/String;

.field public relation:I

.field public relatives:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiUserFull$Relative;",
            ">;"
        }
    .end annotation
.end field

.field public religion:Ljava/lang/String;

.field public schools:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiSchool;",
            ">;"
        }
    .end annotation
.end field

.field public screen_name:Ljava/lang/String;

.field public sex:I

.field public site:Ljava/lang/String;

.field public skype:Ljava/lang/String;

.field public smoking:I

.field public status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

.field public tv:Ljava/lang/String;

.field public twitter:Ljava/lang/String;

.field public universities:Lcom/vk/sdk/api/model/VKList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList<",
            "Lcom/vk/sdk/api/model/VKApiUniversity;",
            ">;"
        }
    .end annotation
.end field

.field public verified:Z

.field public wall_comments:Z

.field public wall_default_owner:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiUserFull$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiUserFull$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiUserFull;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiUser;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiUser;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->activity:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiAudio;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->bdate:Ljava/lang/String;

    const-class v0, Lcom/vk/sdk/api/model/VKApiCity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiCity;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->city:Lcom/vk/sdk/api/model/VKApiCity;

    const-class v0, Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiCountry;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->country:Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->last_seen:J

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKList;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->universities:Lcom/vk/sdk/api/model/VKList;

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKList;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->schools:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->smoking:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->alcohol:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->political:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->life_main:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->people_main:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->inspired_by:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->langs:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->religion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->facebook:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->facebook_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->livejournal:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->skype:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->site:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->twitter:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->instagram:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->mobile_phone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->home_phone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->screen_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->activities:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->interests:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->movies:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->tv:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->books:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->games:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->about:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->quotes:Ljava/lang/String;

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
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_post:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_see_all_posts:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_write_private_message:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->wall_comments:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->is_banned:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->is_deleted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->wall_default_owner:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->verified:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->sex:I

    const-class v0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->counters:Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

    const-class v0, Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->occupation:Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relation:I

    const-class v0, Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKList;

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relatives:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->blacklisted_by_me:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiUser;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUserFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUserFull;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUserFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUserFull;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiOwner;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUserFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUserFull;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUser;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiUserFull;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUserFull;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUserFull;
    .locals 4

    invoke-super {p0, p1}, Lcom/vk/sdk/api/model/VKApiUser;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiUser;

    const-string v0, "last_seen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "time"

    invoke-static {v0, v1}, Lcom/vk/sdk/api/model/ParseUtils;->parseLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->last_seen:J

    const-string v0, "bdate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->bdate:Ljava/lang/String;

    const-string v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vk/sdk/api/model/VKApiCity;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiCity;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiCity;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCity;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->city:Lcom/vk/sdk/api/model/VKApiCity;

    :cond_0
    const-string v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiCountry;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiCountry;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCountry;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->country:Lcom/vk/sdk/api/model/VKApiCountry;

    :cond_1
    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "universities"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-class v2, Lcom/vk/sdk/api/model/VKApiUniversity;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->universities:Lcom/vk/sdk/api/model/VKList;

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    const-string v1, "schools"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-class v2, Lcom/vk/sdk/api/model/VKApiSchool;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/model/VKList;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->schools:Lcom/vk/sdk/api/model/VKList;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->activity:Ljava/lang/String;

    const-string v0, "status_audio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKApiAudio;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vk/sdk/api/model/VKApiAudio;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiAudio;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

    :cond_2
    const-string v0, "personal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "smoking"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->smoking:I

    const-string v1, "alcohol"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->alcohol:I

    const-string v1, "political"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->political:I

    const-string v1, "life_main"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->life_main:I

    const-string v1, "people_main"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->people_main:I

    const-string v1, "inspired_by"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->inspired_by:Ljava/lang/String;

    const-string v1, "religion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->religion:Ljava/lang/String;

    const-string v1, "langs"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->langs:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->langs:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "facebook"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->facebook:Ljava/lang/String;

    const-string v0, "facebook_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->facebook_name:Ljava/lang/String;

    const-string v0, "livejournal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->livejournal:Ljava/lang/String;

    const-string v0, "site"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->site:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->screen_name:Ljava/lang/String;

    const-string v0, "skype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->skype:Ljava/lang/String;

    const-string v0, "mobile_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->mobile_phone:Ljava/lang/String;

    const-string v0, "home_phone"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->home_phone:Ljava/lang/String;

    const-string v0, "twitter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->twitter:Ljava/lang/String;

    const-string v0, "instagram"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->instagram:Ljava/lang/String;

    const-string v0, "about"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->about:Ljava/lang/String;

    const-string v0, "activities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->activities:Ljava/lang/String;

    const-string v0, "books"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->books:Ljava/lang/String;

    const-string v0, "games"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->games:Ljava/lang/String;

    const-string v0, "interests"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->interests:Ljava/lang/String;

    const-string v0, "movies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->movies:Ljava/lang/String;

    const-string v0, "quotes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->quotes:Ljava/lang/String;

    const-string v0, "tv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->tv:Ljava/lang/String;

    const-string v0, "nickname"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->nickname:Ljava/lang/String;

    const-string v0, "can_post"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_post:Z

    const-string v0, "can_see_all_posts"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_see_all_posts:Z

    const-string v0, "blacklisted_by_me"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->blacklisted_by_me:Z

    const-string v0, "can_write_private_message"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_write_private_message:Z

    const-string v0, "wall_default"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->wall_comments:Z

    const-string v1, "deactivated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->is_deleted:Z

    const-string v2, "banned"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->is_banned:Z

    const-string v1, "owner"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->wall_default_owner:Z

    const-string v0, "verified"

    invoke-static {p1, v0}, Lcom/vk/sdk/api/model/ParseUtils;->parseBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->verified:Z

    const-string v0, "sex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->sex:I

    const-string v0, "counters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

    invoke-direct {v1, v0}, Lcom/vk/sdk/api/model/VKApiUserFull$Counters;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->counters:Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

    :cond_4
    const-string v0, "occupation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

    invoke-direct {v1, v0}, Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->occupation:Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

    :cond_5
    const-string v0, "relation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relation:I

    const-string v0, "relatives"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relatives:Lcom/vk/sdk/api/model/VKList;

    if-nez v1, :cond_6

    new-instance v1, Lcom/vk/sdk/api/model/VKList;

    invoke-direct {v1}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    iput-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relatives:Lcom/vk/sdk/api/model/VKList;

    :cond_6
    iget-object v1, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relatives:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-class v0, Lcom/vk/sdk/api/model/VKApiUserFull$Relative;

    invoke-virtual {v1, p1, v0}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Ljava/lang/Class;)V

    :cond_7
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/vk/sdk/api/model/VKApiUser;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->status_audio:Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->bdate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->city:Lcom/vk/sdk/api/model/VKApiCity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->country:Lcom/vk/sdk/api/model/VKApiCountry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->last_seen:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->universities:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->schools:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->smoking:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->alcohol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->political:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->life_main:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->people_main:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->inspired_by:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->langs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->religion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->facebook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->facebook_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->livejournal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->skype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->site:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->twitter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->instagram:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->mobile_phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->home_phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->screen_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->activities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->interests:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->movies:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->tv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->books:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->games:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_post:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_see_all_posts:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->can_write_private_message:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->wall_comments:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->is_banned:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->is_deleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->wall_default_owner:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->verified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->sex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->counters:Lcom/vk/sdk/api/model/VKApiUserFull$Counters;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->occupation:Lcom/vk/sdk/api/model/VKApiUserFull$Occupation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->relatives:Lcom/vk/sdk/api/model/VKList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/vk/sdk/api/model/VKApiUserFull;->blacklisted_by_me:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
