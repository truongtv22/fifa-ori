.class final Lcom/google/android/gms/measurement/internal/zzlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzn;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzdi;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlf;Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/internal/measurement/zzdi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzdi;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgm;->zzn()Lcom/google/android/gms/measurement/internal/zzis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzis;->zzj()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzv()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzm()Lcom/google/android/gms/measurement/internal/zzja;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlf;->zza(Lcom/google/android/gms/measurement/internal/zzlf;)Lcom/google/android/gms/measurement/internal/zzfq;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zza:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfq;->zzb(Lcom/google/android/gms/measurement/internal/zzn;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzd;->zzm()Lcom/google/android/gms/measurement/internal/zzja;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zze:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zza(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlf;->zze(Lcom/google/android/gms/measurement/internal/zzlf;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)V

    return-void

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzc:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzio;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlp;->zzb:Lcom/google/android/gms/internal/measurement/zzdi;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Lcom/google/android/gms/internal/measurement/zzdi;Ljava/lang/String;)V

    throw v0
.end method
