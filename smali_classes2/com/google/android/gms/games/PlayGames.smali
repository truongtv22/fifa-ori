.class public final Lcom/google/android/gms/games/PlayGames;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAchievementsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/AchievementsClient;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcl;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcl;-><init>(Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method

.method public static getEventsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/EventsClient;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcs;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzcs;-><init>(Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method

.method public static getGamesSignInClient(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzcv;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbe;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzbc;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzcv;-><init>(Lcom/google/android/gms/internal/games_v2/zzbc;Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method

.method public static getLeaderboardsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/LeaderboardsClient;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdq;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzdq;-><init>(Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method

.method public static getPlayerStatsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayerStatsClient;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzdt;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzdt;-><init>(Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method

.method public static getPlayersClient(Landroid/app/Activity;)Lcom/google/android/gms/games/PlayersClient;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzem;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzem;-><init>(Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method

.method public static getRecallClient(Landroid/app/Activity;)Lcom/google/android/gms/games/RecallClient;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzer;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/games_v2/zzbe;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzbc;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzer;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/games_v2/zzbc;)V

    return-object v0
.end method

.method public static getSnapshotsClient(Landroid/app/Activity;)Lcom/google/android/gms/games/SnapshotsClient;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/games_v2/zzfk;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzby;->zza()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzay;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzfk;-><init>(Lcom/google/android/gms/internal/games_v2/zzay;)V

    return-object p0
.end method
