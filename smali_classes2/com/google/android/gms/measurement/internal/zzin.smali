.class abstract Lcom/google/android/gms/measurement/internal/zzin;
.super Lcom/google/android/gms/measurement/internal/zzio;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzho;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzho;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzu:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzho;->zzaa()V

    return-void
.end method


# virtual methods
.method protected zzaa()V
    .locals 0

    return-void
.end method

.method protected final zzac()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzin;->zzaf()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzad()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzin;->zzo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzu:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzz()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzae()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzin;->zzaa()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zzu:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzho;->zzz()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzaf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzin;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract zzo()Z
.end method
