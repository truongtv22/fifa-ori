.class public Lcom/vk/sdk/api/model/VKApiPhotoSize;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKApiPhotoSize.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Lcom/vk/sdk/api/model/Identifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vk/sdk/api/model/VKApiModel;",
        "Ljava/lang/Comparable<",
        "Lcom/vk/sdk/api/model/VKApiPhotoSize;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/vk/sdk/api/model/Identifiable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiPhotoSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final M:C = 'm'

.field public static final O:C = 'o'

.field public static final P:C = 'p'

.field public static final Q:C = 'q'

.field public static final S:C = 's'

.field public static final W:C = 'w'

.field public static final X:C = 'x'

.field public static final Y:C = 'y'

.field public static final Z:C = 'z'


# instance fields
.field public height:I

.field public src:Ljava/lang/String;

.field public type:C

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhotoSize$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhotoSize$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-char p1, p1

    iput-char p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vk/sdk/api/model/VKApiPhotoSize$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->parse(Lorg/json/JSONObject;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    return-void
.end method

.method public static create(Ljava/lang/String;CII)Lcom/vk/sdk/api/model/VKApiPhotoSize;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhotoSize;-><init>()V

    iput-object p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    iput-char p1, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    invoke-static {v0, p2, p3}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensions(Lcom/vk/sdk/api/model/VKApiPhotoSize;II)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;I)Lcom/vk/sdk/api/model/VKApiPhotoSize;
    .locals 0

    invoke-static {p0, p1, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;
    .locals 3

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhotoSize;-><init>()V

    iput-object p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    iput p1, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    iput p2, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    int-to-float p0, p1

    int-to-float v1, p2

    div-float/2addr p0, v1

    const/16 v1, 0x4b

    if-gt p1, v1, :cond_0

    const/16 p0, 0x73

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_0
    const/16 v1, 0x82

    const/high16 v2, 0x3fc00000    # 1.5f

    if-gt p1, v1, :cond_2

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_1

    const/16 p0, 0x6f

    goto :goto_0

    :cond_1
    const/16 p0, 0x6d

    :goto_0
    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_2
    const/16 v1, 0xc8

    if-gt p1, v1, :cond_3

    cmpg-float v1, p0, v2

    if-gtz v1, :cond_3

    const/16 p0, 0x70

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_3
    const/16 v1, 0x140

    if-gt p1, v1, :cond_4

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_4

    const/16 p0, 0x71

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_4
    const/16 p0, 0x25c

    if-gt p1, p0, :cond_5

    const/16 p0, 0x78

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_5
    const/16 p0, 0x327

    if-gt p1, p0, :cond_6

    const/16 p0, 0x79

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_6
    const/16 p0, 0x500

    if-gt p1, p0, :cond_7

    const/16 p0, 0x400

    if-gt p2, p0, :cond_7

    const/16 p0, 0x7a

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    goto :goto_1

    :cond_7
    const/16 p0, 0xa00

    if-gt p1, p0, :cond_8

    const/16 p0, 0x800

    if-gt p2, p0, :cond_8

    const/16 p0, 0x77

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    :cond_8
    :goto_1
    return-object v0
.end method

.method private static fillDimensionOPQ(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionSMXY(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    return-void
.end method

.method private static fillDimensionSMXY(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V
    .locals 0

    iput p2, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    return-void
.end method

.method private static fillDimensionZW(Lcom/vk/sdk/api/model/VKApiPhotoSize;FII)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iput p2, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    int-to-float p2, p3

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    :goto_0
    return-void
.end method

.method private static fillDimensions(Lcom/vk/sdk/api/model/VKApiPhotoSize;II)V
    .locals 3

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget-char v1, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    const/16 v2, 0x82

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 v1, 0x500

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x400

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, v0, p1, p2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionZW(Lcom/vk/sdk/api/model/VKApiPhotoSize;FII)V

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x327

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionSMXY(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x25c

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionSMXY(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xa00

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x800

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p0, v0, p1, p2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionZW(Lcom/vk/sdk/api/model/VKApiPhotoSize;FII)V

    goto :goto_0

    :pswitch_5
    const/16 p2, 0x4b

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionSMXY(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    goto :goto_0

    :pswitch_6
    const/16 p2, 0x140

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionOPQ(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    goto :goto_0

    :pswitch_7
    const/16 p2, 0xc8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionOPQ(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionOPQ(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    goto :goto_0

    :pswitch_9
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensionSMXY(Lcom/vk/sdk/api/model/VKApiPhotoSize;FI)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Lorg/json/JSONObject;II)Lcom/vk/sdk/api/model/VKApiPhotoSize;
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiPhotoSize;-><init>()V

    const-string v1, "src"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iput-char p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    :cond_0
    iget p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    if-eqz p0, :cond_1

    iget p0, v0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    if-nez p0, :cond_2

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->fillDimensions(Lcom/vk/sdk/api/model/VKApiPhotoSize;II)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/vk/sdk/api/model/VKApiPhotoSize;)I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    iget p1, p1, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/vk/sdk/api/model/VKApiPhotoSize;

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiPhotoSize;->compareTo(Lcom/vk/sdk/api/model/VKApiPhotoSize;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->src:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-char p2, p0, Lcom/vk/sdk/api/model/VKApiPhotoSize;->type:C

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
