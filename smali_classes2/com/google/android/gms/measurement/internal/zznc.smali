.class Lcom/google/android/gms/measurement/internal/zznc;
.super Lcom/google/android/gms/measurement/internal/zzio;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zziq;


# instance fields
.field protected final zzf:Lcom/google/android/gms/measurement/internal/zzng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzng;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzk()Lcom/google/android/gms/measurement/internal/zzho;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    return-void
.end method


# virtual methods
.method public g_()Lcom/google/android/gms/measurement/internal/zznt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzp()Lcom/google/android/gms/measurement/internal/zznt;

    move-result-object v0

    return-object v0
.end method

.method public zzg()Lcom/google/android/gms/measurement/internal/zzs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzc()Lcom/google/android/gms/measurement/internal/zzs;

    move-result-object v0

    return-object v0
.end method

.method public zzh()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzf()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public zzm()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzi()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object v0

    return-object v0
.end method

.method public zzn()Lcom/google/android/gms/measurement/internal/zzmg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzn()Lcom/google/android/gms/measurement/internal/zzmg;

    move-result-object v0

    return-object v0
.end method

.method public zzo()Lcom/google/android/gms/measurement/internal/zzne;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznc;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzo()Lcom/google/android/gms/measurement/internal/zzne;

    move-result-object v0

    return-object v0
.end method
