.class final Lcom/google/android/gms/measurement/internal/zzla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkw;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzc()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzla;->zza:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zza(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzla;->zzb:Lcom/google/android/gms/measurement/internal/zzkw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Lcom/google/android/gms/measurement/internal/zzkx;

    return-void
.end method
