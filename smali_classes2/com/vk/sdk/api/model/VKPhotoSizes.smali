.class public Lcom/vk/sdk/api/model/VKPhotoSizes;
.super Lcom/vk/sdk/api/model/VKList;
.source "VKPhotoSizes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/model/VKList<",
        "Lcom/vk/sdk/api/model/VKApiPhotoSize;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKPhotoSizes;",
            ">;"
        }
    .end annotation
.end field

.field private static sQuality:F = 1.0f


# instance fields
.field private mHeightThumb:Ljava/lang/String;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mWidthThumb:Ljava/lang/String;

.field private final parser:Lcom/vk/sdk/api/model/VKList$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/sdk/api/model/VKList$Parser<",
            "Lcom/vk/sdk/api/model/VKApiPhotoSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes$2;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKPhotoSizes$2;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKPhotoSizes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKPhotoSizes$1;-><init>(Lcom/vk/sdk/api/model/VKPhotoSizes;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKList;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKPhotoSizes$1;-><init>(Lcom/vk/sdk/api/model/VKPhotoSizes;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mLastWidth:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vk/sdk/api/model/VKPhotoSizes$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    iput v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    new-instance v0, Lcom/vk/sdk/api/model/VKPhotoSizes$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/model/VKPhotoSizes$1;-><init>(Lcom/vk/sdk/api/model/VKPhotoSizes;)V

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->fill(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/api/model/VKPhotoSizes;)I
    .locals 0

    iget p0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/vk/sdk/api/model/VKPhotoSizes;)I
    .locals 0

    iget p0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    return p0
.end method

.method private getImageForHeight(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mHeightThumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mLastHeight:I

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mHeightThumb:Ljava/lang/String;

    return-object p1

    :cond_2
    iput p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mLastHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mHeightThumb:Ljava/lang/String;

    int-to-float p1, p1

    sget v0, Lcom/vk/sdk/api/model/VKPhotoSizes;->sQuality:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    iget v2, v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    if-lt v2, p1, :cond_3

    iget-object p1, v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mHeightThumb:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mHeightThumb:Ljava/lang/String;

    return-object p1
.end method

.method private getImageForWidth(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mLastWidth:I

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    return-object p1

    :cond_2
    iput p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mLastWidth:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    int-to-float p1, p1

    sget v0, Lcom/vk/sdk/api/model/VKPhotoSizes;->sQuality:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    iget v2, v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    if-lt v2, p1, :cond_3

    iget-object p1, v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    return-object p1
.end method

.method public static setQuality(F)V
    .locals 0

    sput p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->sQuality:F

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

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->parser:Lcom/vk/sdk/api/model/VKList$Parser;

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->fill(Lorg/json/JSONArray;Lcom/vk/sdk/api/model/VKList$Parser;)V

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->sort()V

    return-void
.end method

.method public fill(Lorg/json/JSONArray;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/vk/sdk/api/model/VKPhotoSizes;->setOriginalDimension(II)V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->fill(Lorg/json/JSONArray;)V

    return-void
.end method

.method public getByType(C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/vk/sdk/api/model/VKPhotoSizes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    iget-char v2, v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    if-ne v2, p1, :cond_0

    iget-object p1, v1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageForDimension(II)Ljava/lang/String;
    .locals 0

    if-lt p1, p2, :cond_0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getImageForWidth(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/vk/sdk/api/model/VKPhotoSizes;->getImageForHeight(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setOriginalDimension(II)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    :cond_0
    if-eqz p2, :cond_1

    iput p2, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    :cond_1
    return-void
.end method

.method public sort()V
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/vk/sdk/api/model/VKList;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mOriginalHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mWidthThumb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKPhotoSizes;->mLastWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
