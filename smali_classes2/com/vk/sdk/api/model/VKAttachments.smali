.class public Lcom/vk/sdk/api/model/VKAttachments;
.super Lcom/vk/sdk/api/model/VKList;
.source "VKAttachments.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/model/VKList<",
        "Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKAttachments;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ALBUM:Ljava/lang/String; = "album"

.field public static final TYPE_APP:Ljava/lang/String; = "app"

.field public static final TYPE_AUDIO:Ljava/lang/String; = "audio"

.field public static final TYPE_DOC:Ljava/lang/String; = "doc"

.field public static final TYPE_LINK:Ljava/lang/String; = "link"

.field public static final TYPE_NOTE:Ljava/lang/String; = "note"

.field public static final TYPE_PHOTO:Ljava/lang/String; = "photo"

.field public static final TYPE_POLL:Ljava/lang/String; = "poll"

.field public static final TYPE_POST:Ljava/lang/String; = "wall"

.field public static final TYPE_POSTED_PHOTO:Ljava/lang/String; = "posted_photo"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final TYPE_WIKI_PAGE:Ljava/lang/String; = "page"


# instance fields
.field private final parser:Lcom/vk/sdk/api/model/VKList$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList$Parser<",
            "Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments$2;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKAttachments$2;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKAttachments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKAttachments$1;-><init>(Lcom/vk/sdk/api/model/VKAttachments;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKAttachments$1;-><init>(Lcom/vk/sdk/api/model/VKAttachments;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v2, Lcom/vk/sdk/api/model/VKApiPhoto;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_0
    const-string v3, "video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v2, Lcom/vk/sdk/api/model/VKApiVideo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_1
    const-string v3, "audio"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v2, Lcom/vk/sdk/api/model/VKApiAudio;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_2
    const-string v3, "doc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v2, Lcom/vk/sdk/api/model/VKApiDocument;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_3
    const-string v3, "wall"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-class v2, Lcom/vk/sdk/api/model/VKApiPost;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_4
    const-string v3, "posted_photo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-class v2, Lcom/vk/sdk/api/model/VKApiPostedPhoto;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_5
    const-string v3, "link"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-class v2, Lcom/vk/sdk/api/model/VKApiLink;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto/16 :goto_1

    :cond_6
    const-string v3, "note"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-class v2, Lcom/vk/sdk/api/model/VKApiNote;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto :goto_1

    :cond_7
    const-string v3, "app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-class v2, Lcom/vk/sdk/api/model/VKApiApplicationContent;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto :goto_1

    :cond_8
    const-string v3, "poll"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-class v2, Lcom/vk/sdk/api/model/VKApiPoll;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto :goto_1

    :cond_9
    const-string v3, "page"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-class v2, Lcom/vk/sdk/api/model/VKApiWikiPage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto :goto_1

    :cond_a
    const-string v3, "album"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-class v2, Lcom/vk/sdk/api/model/VKApiPhotoAlbum;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {p0, v2}, Lcom/vk/sdk/api/model/VKAttachments;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKList;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/vk/sdk/api/model/VKAttachments$1;

    invoke-direct {p1, p0}, Lcom/vk/sdk/api/model/VKAttachments$1;-><init>(Lcom/vk/sdk/api/model/VKAttachments;)V

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKAttachments$1;-><init>(Lcom/vk/sdk/api/model/VKAttachments;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKAttachments;->fill(Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/model/VKAttachments$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKAttachments$1;-><init>(Lcom/vk/sdk/api/model/VKAttachments;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKAttachments;->fill(Lorg/json/JSONObject;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKList;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/vk/sdk/api/model/VKAttachments$1;

    invoke-direct {p1, p0}, Lcom/vk/sdk/api/model/VKAttachments$1;-><init>(Lcom/vk/sdk/api/model/VKAttachments;)V

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fill(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-super {p0, p1, v0}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V

    return-void
.end method

.method public fill(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKAttachments;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-super {p0, p1, v0}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONObject;Lcom/vk/sdk/api/model/VKList$Parser;)V

    return-void
.end method

.method public toAttachmentsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKAttachments;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {v2}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;->toAttachmentString()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-static {v0, v1}, Lcom/vk/sdk/util/VKStringJoiner;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKAttachments;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKAttachments;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;

    invoke-virtual {v0}, Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
