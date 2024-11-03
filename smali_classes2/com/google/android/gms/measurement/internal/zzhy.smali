.class final Lcom/google/android/gms/measurement/internal/zzhy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzhs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zze:Lcom/google/android/gms/measurement/internal/zzhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zze:Lcom/google/android/gms/measurement/internal/zzhs;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Lcom/google/android/gms/measurement/internal/zzhs;)Lcom/google/android/gms/measurement/internal/zzng;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkx;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zza:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzd:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zze:Lcom/google/android/gms/measurement/internal/zzhs;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Lcom/google/android/gms/measurement/internal/zzhs;)Lcom/google/android/gms/measurement/internal/zzng;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzhy;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkx;)V

    return-void
.end method
