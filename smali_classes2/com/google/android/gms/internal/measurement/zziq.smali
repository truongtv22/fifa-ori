.class final Lcom/google/android/gms/internal/measurement/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzjb;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzb:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb([B)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzjb;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzip;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzih;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzjb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziu;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zziu;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzjb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzjb;

    return-object v0
.end method
