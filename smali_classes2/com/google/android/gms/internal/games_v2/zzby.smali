.class public final Lcom/google/android/gms/internal/games_v2/zzby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private final zzb:Landroid/app/Application;

.field private final zzc:Lcom/google/android/gms/internal/games_v2/zzbb;

.field private final zzd:Lcom/google/android/gms/games/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/games_v2/zzby;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzbb;Lcom/google/android/gms/games/internal/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzby;->zzb:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzby;->zzc:Lcom/google/android/gms/internal/games_v2/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzby;->zzd:Lcom/google/android/gms/games/internal/zzg;

    return-void
.end method

.method public static zza()Landroid/app/Application;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzby;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzby;

    iget-object v0, v0, Lcom/google/android/gms/internal/games_v2/zzby;->zzb:Landroid/app/Application;

    return-object v0
.end method

.method public static zzb()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzby;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "PlayGamesSdk has not been initialized. Ensure that PlayGamesSdk.initialize() has been called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzc(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzby;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/games_v2/zzby;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_1
    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzbb;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzbb;

    move-result-object p0

    invoke-static {v1}, Lcom/google/android/gms/games/internal/zzg;->zzb(Landroid/app/Application;)Lcom/google/android/gms/games/internal/zzg;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/games_v2/zzby;

    invoke-direct {v3, v1, p0, v2}, Lcom/google/android/gms/internal/games_v2/zzby;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/games_v2/zzbb;Lcom/google/android/gms/games/internal/zzg;)V

    :cond_2
    const/4 p0, 0x0

    invoke-static {v0, p0, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v3, Lcom/google/android/gms/internal/games_v2/zzby;->zzc:Lcom/google/android/gms/internal/games_v2/zzbb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzbb;->zzc()V

    iget-object p0, v3, Lcom/google/android/gms/internal/games_v2/zzby;->zzd:Lcom/google/android/gms/games/internal/zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzg;->zzh()V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    :cond_4
    return-void
.end method
