.class public Lcom/vk/sdk/api/model/VKList;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKList.java"

# interfaces
.implements Ljava/util/List;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/model/VKList$ReflectParser;,
        Lcom/vk/sdk/api/model/VKList$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vk/sdk/api/model/VKApiModel;",
        ":",
        "Landroid/os/Parcelable;",
        ":",
        "Lcom/vk/sdk/api/model/Identifiable;",
        ">",
        "Lcom/vk/sdk/api/model/VKApiModel;",
        "Ljava/util/List<",
        "TT;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKList;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_COUNT:I = -0x1


# instance fields
.field private count:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKList$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKList$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/vk/sdk/api/model/VKList$Parser<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/vk/sdk/api/model/VKList$Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/vk/sdk/api/model/VKList$Parser<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONObject;Lcom/vk/sdk/api/model/VKList$Parser;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONObject;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public add(ILcom/vk/sdk/api/model/VKApiModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->add(ILcom/vk/sdk/api/model/VKApiModel;)V

    return-void
.end method

.method public add(Lcom/vk/sdk/api/model/VKApiModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKList;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    move-result p1

    return p1
.end method

.method public addAfter(ILcom/vk/sdk/api/model/VKApiModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/vk/sdk/api/model/VKList;->get(I)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/Identifiable;

    invoke-interface {v2}, Lcom/vk/sdk/api/model/Identifiable;->getId()I

    move-result v2

    if-gt v2, p1, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/vk/sdk/api/model/VKList;->add(ILcom/vk/sdk/api/model/VKApiModel;)V

    :cond_2
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addBefore(ILcom/vk/sdk/api/model/VKApiModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/vk/sdk/api/model/VKList;->get(I)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/Identifiable;

    invoke-interface {v2}, Lcom/vk/sdk/api/model/Identifiable;->getId()I

    move-result v2

    if-gt v2, p1, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/vk/sdk/api/model/VKList;->add(ILcom/vk/sdk/api/model/VKApiModel;)V

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fill(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/vk/sdk/api/model/VKList$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/vk/sdk/api/model/VKList$Parser;->parseObject(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/model/VKApiModel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fill(Lorg/json/JSONArray;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/model/VKList$ReflectParser;

    invoke-direct {v0, p2}, Lcom/vk/sdk/api/model/VKList$ReflectParser;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V

    return-void
.end method

.method public fill(Lorg/json/JSONObject;Lcom/vk/sdk/api/model/VKList$Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/vk/sdk/api/model/VKList$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V

    const-string p2, "count"

    iget v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    :cond_0
    return-void
.end method

.method public fill(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONArray;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONObject;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/vk/sdk/api/model/VKList$ReflectParser;

    invoke-direct {v0, p2}, Lcom/vk/sdk/api/model/VKList$ReflectParser;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/api/model/VKList;->fill(Lorg/json/JSONObject;Lcom/vk/sdk/api/model/VKList$Parser;)V

    :goto_0
    return-void
.end method

.method public get(I)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKApiModel;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKList;->get(I)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object p1

    return-object p1
.end method

.method public getById(I)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/model/VKApiModel;

    move-object v2, v1

    check-cast v2, Lcom/vk/sdk/api/model/Identifiable;

    invoke-interface {v2}, Lcom/vk/sdk/api/model/Identifiable;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 2

    iget v0, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Operation is not supported while class is generic"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(I)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKApiModel;

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKList;->remove(I)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public search(Ljava/lang/String;)Lcom/vk/sdk/api/model/VKList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/sdk/api/model/VKList<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/model/VKList;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(?i).*\\b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".*"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/vk/sdk/api/model/VKList;->add(Lcom/vk/sdk/api/model/VKApiModel;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public set(ILcom/vk/sdk/api/model/VKApiModel;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/model/VKApiModel;

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->set(ILcom/vk/sdk/api/model/VKApiModel;)Lcom/vk/sdk/api/model/VKApiModel;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">([TT1;)[TT1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/model/VKApiModel;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/vk/sdk/api/model/VKList;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
