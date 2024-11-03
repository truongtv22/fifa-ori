.class public final Lcom/google/android/gms/measurement/internal/zznv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zznv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:J

.field public final zzc:Ljava/lang/Long;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/Double;

.field private final zzg:I

.field private final zzh:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznu;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zznu;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zznv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:I

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Ljava/lang/Float;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    :goto_0
    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznx;)V
    .locals 6

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zznx;->zzc:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zznx;->zzd:J

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zznx;->zze:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zznx;->zzb:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zznv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    return-void

    :cond_0
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_1

    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    return-void

    :cond_1
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    return-void

    :cond_2
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzh:Ljava/lang/Float;

    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzg:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zza:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzb:J

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongObject(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zze:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleObject(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzc:Ljava/lang/Long;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzf:Ljava/lang/Double;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznv;->zzd:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
