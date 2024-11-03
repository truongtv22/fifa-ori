.class final Lcom/google/android/gms/measurement/internal/zznd;
.super Lcom/google/android/gms/measurement/internal/zzav;
.source "com.google.android.gms:play-services-measurement@@21.6.2"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzna;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzna;Lcom/google/android/gms/measurement/internal/zziq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznd;->zza:Lcom/google/android/gms/measurement/internal/zzna;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zziq;)V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zza:Lcom/google/android/gms/measurement/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzna;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zza:Lcom/google/android/gms/measurement/internal/zzna;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzio;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznd;->zza:Lcom/google/android/gms/measurement/internal/zzna;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzna;->zzf:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzw()V

    return-void
.end method
