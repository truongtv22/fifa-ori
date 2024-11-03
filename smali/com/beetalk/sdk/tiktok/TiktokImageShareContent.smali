.class public Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;
.super Ljava/lang/Object;
.source "TiktokImageShareContent.java"

# interfaces
.implements Lcom/garena/android/share/model/ShareContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final imageContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/android/share/model/ShareImageContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$1;

    invoke-direct {v0}, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$1;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->imageContents:Ljava/util/List;

    sget-object v1, Lcom/garena/android/share/model/ShareImageContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/android/share/model/ShareImageContent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->imageContents:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/garena/android/share/model/ShareImageContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->imageContents:Ljava/util/List;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->imageContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;->imageContents:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
