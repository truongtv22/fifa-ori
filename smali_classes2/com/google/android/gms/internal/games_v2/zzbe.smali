.class public final Lcom/google/android/gms/internal/games_v2/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzbc;
    .locals 9

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzbc;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzq;->zza()Lcom/google/android/gms/internal/games_v2/zzo;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzo;->zza(I)Lcom/google/android/gms/internal/games_v2/zzo;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/games_v2/zzo;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/games_v2/zzo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/games_v2/zzo;->zzc()Lcom/google/android/gms/internal/games_v2/zzq;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzg;->zzb(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzg;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/games_v2/zzbs;

    invoke-static {}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;->zza()Lcom/google/android/gms/games/internal/v2/resolution/zzb;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/games_v2/zzbw;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbd;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzbd;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzq;)V

    const/4 v1, 0x0

    invoke-direct {v6, p0, v4, v2, v1}, Lcom/google/android/gms/internal/games_v2/zzbw;-><init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/internal/games_v2/zzbd;[B)V

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/games_v2/zzbs;-><init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/games/internal/v2/resolution/zzb;Lcom/google/android/gms/internal/games_v2/zzbt;[B)V

    :cond_1
    invoke-static {v0, v1, v8}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/games_v2/zzbe;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzbc;

    return-object p0
.end method
