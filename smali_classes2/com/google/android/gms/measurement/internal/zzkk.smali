.class final Lcom/google/android/gms/measurement/internal/zzkk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzis;

.field private final synthetic zzb:J

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzis;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzis;JJZLcom/google/android/gms/measurement/internal/zzis;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:J

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzc:J

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzd:Z

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Lcom/google/android/gms/measurement/internal/zzis;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Lcom/google/android/gms/measurement/internal/zzis;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzod;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzdf:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzja;->zza(JZ)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzc:J

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzd:Z

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzis;JZZ)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzql;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zze()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbh;->zzbr:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zzf:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zza:Lcom/google/android/gms/measurement/internal/zzis;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkk;->zze:Lcom/google/android/gms/measurement/internal/zzis;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Lcom/google/android/gms/measurement/internal/zzja;Lcom/google/android/gms/measurement/internal/zzis;Lcom/google/android/gms/measurement/internal/zzis;)V

    :cond_2
    return-void
.end method
