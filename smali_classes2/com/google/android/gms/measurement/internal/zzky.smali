.class final Lcom/google/android/gms/measurement/internal/zzky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzkx;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzkx;

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzkx;Lcom/google/android/gms/measurement/internal/zzkx;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzky;->zza:Lcom/google/android/gms/measurement/internal/zzkx;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzky;->zzb:Lcom/google/android/gms/measurement/internal/zzkx;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzky;->zzc:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzky;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzky;->zze:Lcom/google/android/gms/measurement/internal/zzkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzky;->zze:Lcom/google/android/gms/measurement/internal/zzkw;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzky;->zza:Lcom/google/android/gms/measurement/internal/zzkx;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzky;->zzb:Lcom/google/android/gms/measurement/internal/zzkx;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzky;->zzc:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzky;->zzd:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzkw;->zza(Lcom/google/android/gms/measurement/internal/zzkw;Lcom/google/android/gms/measurement/internal/zzkx;Lcom/google/android/gms/measurement/internal/zzkx;JZLandroid/os/Bundle;)V

    return-void
.end method
