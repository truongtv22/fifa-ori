.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzja;

.field private synthetic zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Lcom/google/android/gms/measurement/internal/zzja;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zza:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzk()Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgm;->zzi:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zza()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzo()Lcom/google/android/gms/measurement/internal/zzlf;

    move-result-object v0

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlf;->zza(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V

    return-void
.end method
