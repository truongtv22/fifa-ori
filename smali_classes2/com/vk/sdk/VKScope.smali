.class public Lcom/vk/sdk/VKScope;
.super Ljava/lang/Object;
.source "VKScope.java"


# static fields
.field public static final ADS:Ljava/lang/String; = "ads"

.field public static final AUDIO:Ljava/lang/String; = "audio"

.field public static final DIRECT:Ljava/lang/String; = "direct"

.field public static final DOCS:Ljava/lang/String; = "docs"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FRIENDS:Ljava/lang/String; = "friends"

.field public static final GROUPS:Ljava/lang/String; = "groups"

.field public static final MESSAGES:Ljava/lang/String; = "messages"

.field public static final NOHTTPS:Ljava/lang/String; = "nohttps"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final NOTIFICATIONS:Ljava/lang/String; = "notifications"

.field public static final NOTIFY:Ljava/lang/String; = "notify"

.field public static final OFFLINE:Ljava/lang/String; = "offline"

.field public static final PAGES:Ljava/lang/String; = "pages"

.field public static final PHOTOS:Ljava/lang/String; = "photos"

.field public static final STATS:Ljava/lang/String; = "stats"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field public static final WALL:Ljava/lang/String; = "wall"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseVkPermissionsFromInteger(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_1

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_2

    const-string v1, "photos"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_3

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_4

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit16 v1, p0, 0x80

    if-lez v1, :cond_5

    const-string v1, "pages"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit16 v1, p0, 0x400

    if-lez v1, :cond_6

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v1, p0, 0x800

    if-lez v1, :cond_7

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v1, p0, 0x1000

    if-lez v1, :cond_8

    const-string v1, "messages"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v1, p0, 0x2000

    if-lez v1, :cond_9

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const v1, 0x8000

    and-int/2addr v1, p0

    if-lez v1, :cond_a

    const-string v1, "ads"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-lez v1, :cond_b

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-lez v1, :cond_c

    const-string v1, "docs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-lez v1, :cond_d

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-lez v1, :cond_e

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/high16 v1, 0x100000

    and-int/2addr p0, v1

    if-lez p0, :cond_f

    const-string p0, "stats"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object v0
.end method
