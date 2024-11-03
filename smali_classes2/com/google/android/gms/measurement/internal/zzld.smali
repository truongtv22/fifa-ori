.class final Lcom/google/android/gms/measurement/internal/zzld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzkx;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzkx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/measurement/internal/zzkx;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzld;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzld;->zza:Lcom/google/android/gms/measurement/internal/zzkx;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzld;->zzb:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzkx;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkw;->zza:Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzld;->zzc:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzo()Lcom/google/android/gms/measurement/internal/zzlf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlf;->zza(Lcom/google/android/gms/measurement/internal/zzkx;)V

    return-void
.end method
