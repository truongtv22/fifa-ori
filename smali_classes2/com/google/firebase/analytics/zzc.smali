.class final Lcom/google/firebase/analytics/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzko;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zza(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zziw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/measurement/internal/zziw;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zziz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Lcom/google/android/gms/measurement/internal/zziz;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzds;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/measurement/internal/zziz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zzb(Lcom/google/android/gms/measurement/internal/zziz;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzds;->zzc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/analytics/zzc;->zza:Lcom/google/android/gms/internal/measurement/zzds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzds;->zzi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
