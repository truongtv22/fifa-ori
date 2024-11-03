.class abstract Lcom/google/android/gms/measurement/internal/zznf;
.super Lcom/google/android/gms/measurement/internal/zznc;
.source "com.google.android.gms:play-services-measurement@@21.6.2"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzng;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zznc;-><init>(Lcom/google/android/gms/measurement/internal/zzng;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zznf;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzng;->zzu()V

    return-void
.end method


# virtual methods
.method protected final zzak()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznf;->zzam()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzal()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznf;->zza:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zznf;->zzc()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznf;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzt()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznf;->zza:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzam()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zznf;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzc()Z
.end method
