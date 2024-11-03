.class public Lcom/google/android/gms/internal/zzcsr;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzcsr"


# instance fields
.field private zzbBK:I

.field private zzbCi:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzat(I)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzg(Ljava/lang/String;II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcsr;->zzs([B)[I

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    array-length p2, p1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x0

    aget v0, p1, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    aget v0, p1, v1

    const v1, 0x736e6574

    if-eq v0, v1, :cond_5

    return-void

    :cond_5
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcsr;->zzbCi:[I

    array-length v1, p1

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcsr;->zzbCi:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzcsr;->zzbBK:I

    return-void
.end method

.method private static zzs([B)[I
    .locals 9

    if-eqz p0, :cond_2

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    aget-byte v6, p0, v1

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    div-int/lit8 v4, v1, 0x4

    long-to-int v3, v2

    aput v3, v0, v4

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getThreatType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcsr;->zzbBK:I

    return v0
.end method

.method public final zzr([B)Z
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsr;->zzbCi:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    aget-byte v3, p1, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/4 v7, 0x2

    aget-byte v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v5

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    const/4 v8, 0x1

    aget-byte v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v5

    const/16 v11, 0x10

    shl-long/2addr v9, v11

    or-long/2addr v3, v9

    aget-byte p1, p1, v1

    int-to-long v9, p1

    and-long/2addr v5, v9

    const/16 p1, 0x18

    shl-long/2addr v5, p1

    or-long/2addr v3, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    array-length p1, v0

    sub-int/2addr p1, v8

    :goto_0
    const/4 v9, -0x1

    if-gt v2, p1, :cond_3

    sub-int v10, p1, v2

    div-int/2addr v10, v7

    add-int/2addr v10, v2

    aget v11, v0, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    cmp-long v13, v11, v3

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    if-gez v13, :cond_2

    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v10, -0x1

    goto :goto_0

    :cond_3
    const/4 v10, -0x1

    :goto_1
    if-eq v10, v9, :cond_4

    return v8

    :cond_4
    return v1
.end method
