.class final Lcom/google/android/gms/measurement/internal/zzhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zziy;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzho;Lcom/google/android/gms/measurement/internal/zziy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhp;->zza:Lcom/google/android/gms/measurement/internal/zziy;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhp;->zzb:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhp;->zzb:Lcom/google/android/gms/measurement/internal/zzho;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhp;->zza:Lcom/google/android/gms/measurement/internal/zziy;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzho;->zza(Lcom/google/android/gms/measurement/internal/zzho;Lcom/google/android/gms/measurement/internal/zziy;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhp;->zzb:Lcom/google/android/gms/measurement/internal/zzho;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhp;->zza:Lcom/google/android/gms/measurement/internal/zziy;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zziy;->zzg:Lcom/google/android/gms/internal/measurement/zzdq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzho;->zza(Lcom/google/android/gms/internal/measurement/zzdq;)V

    return-void
.end method
