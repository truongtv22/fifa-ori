.class public abstract Lcom/google/android/gms/internal/measurement/zzjb;
.super Lcom/google/android/gms/internal/measurement/zzii;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzjb$zzb;,
        Lcom/google/android/gms/internal/measurement/zzjb$zza;
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzjd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzjb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzna;->zzc()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzii;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzje;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzjb;-><init>()V

    return-void
.end method

.method public static zza(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zza(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zza(I)I
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zza(ID)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zza(IF)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zza(II)I
    .locals 2

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zza(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzih;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzih;->zzb()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzkl;)I
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(ILcom/google/android/gms/internal/measurement/zzkl;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzlh;)I
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(II)I

    move-result p0

    add-int/2addr v0, p0

    const/16 p0, 0x18

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb(Lcom/google/android/gms/internal/measurement/zzlh;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(ILcom/google/android/gms/internal/measurement/zzlh;Lcom/google/android/gms/internal/measurement/zzlz;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzlz;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zza(ILjava/lang/String;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zza(IZ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zza(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzih;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzih;->zzb()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzkl;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzlh;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzby()I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzlh;Lcom/google/android/gms/internal/measurement/zzlz;)I
    .locals 0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhy;->zza(Lcom/google/android/gms/internal/measurement/zzlz;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zza(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzne;->zza(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzni; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zza([B)I
    .locals 1

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzb(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzih;)I
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(ILcom/google/android/gms/internal/measurement/zzih;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzkl;)I
    .locals 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzb()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static zzb(ILcom/google/android/gms/internal/measurement/zzlh;Lcom/google/android/gms/internal/measurement/zzlz;)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(Lcom/google/android/gms/internal/measurement/zzlh;Lcom/google/android/gms/internal/measurement/zzlz;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzlh;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzby()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/measurement/zzjb;
    .locals 3

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzjb$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzjb$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zzc(I)I
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zzc(II)I
    .locals 2

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method static bridge synthetic zzc()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzjb;->zzc:Z

    return v0
.end method

.method public static zzd(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzd(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzd(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzi(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzi(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zze(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zze(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x280

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method public static zzf(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zzf(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x9

    rsub-int p0, p0, 0x160

    ushr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private static zzi(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static zzl(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zza(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzni;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzjx;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(I)V

    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zzii;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzjb$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzjb$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjb;->zza()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(J)V

    return-void
.end method

.method public final zzb(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzh(I)V

    return-void
.end method

.method public final zzb(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzf(IJ)V

    return-void
.end method

.method public final zzb(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzg(II)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/measurement/zzlh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/measurement/zzih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zza(B)V

    return-void
.end method

.method abstract zzb([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(ILcom/google/android/gms/internal/measurement/zzih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzc(ILcom/google/android/gms/internal/measurement/zzlh;Lcom/google/android/gms/internal/measurement/zzlz;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/measurement/zzlh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(ILcom/google/android/gms/internal/measurement/zzih;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzf(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzg(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzg(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzi(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzh(IJ)V

    return-void
.end method

.method public final zzg(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzi(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzh(J)V

    return-void
.end method

.method public abstract zzh(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzi(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzi(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(II)V

    return-void
.end method

.method public final zzj(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzk(I)V

    return-void
.end method

.method public abstract zzj(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
