.class final Lcom/google/android/gms/measurement/internal/zzkz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/os/Bundle;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzkx;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzkx;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkw;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzkx;Lcom/google/android/gms/measurement/internal/zzkx;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkx;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzc:Lcom/google/android/gms/measurement/internal/zzkx;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zze:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zze:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzb:Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzc:Lcom/google/android/gms/measurement/internal/zzkx;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkz;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzkx;Lcom/google/android/gms/measurement/internal/zzkx;J)V

    return-void
.end method
