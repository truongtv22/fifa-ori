.class public abstract Lcom/google/android/gms/internal/games_v2/zzas;
.super Lcom/google/android/gms/internal/games_v2/zzb;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzat;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/games_v2/zzat;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.games.internal.recall.IRecallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/games_v2/zzat;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzat;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzar;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
