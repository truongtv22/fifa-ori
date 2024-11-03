.class final Lcom/google/android/gms/measurement/internal/zzkn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzis;

.field private final synthetic zzb:J

.field private final synthetic zzc:Z

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzis;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzis;JZLcom/google/android/gms/measurement/internal/zzis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Z

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Lcom/google/android/gms/measurement/internal/zzis;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Z

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzis;JZZ)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzbr:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkn;->zzd:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzis;Lcom/google/android/gms/measurement/internal/zzis;)V

    :cond_0
    return-void
.end method
