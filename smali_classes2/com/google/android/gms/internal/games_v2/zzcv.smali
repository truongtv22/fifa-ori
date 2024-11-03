.class public final Lcom/google/android/gms/internal/games_v2/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/games/GamesSignInClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzbc;

.field private final zzb:Lcom/google/android/gms/internal/games_v2/zzay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbc;Lcom/google/android/gms/internal/games_v2/zzay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zzb:Lcom/google/android/gms/internal/games_v2/zzay;

    return-void
.end method


# virtual methods
.method public final isAuthenticated()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzbc;->zzc()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final requestServerSideAccess(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zzb:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzct;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzct;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final signIn()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AuthenticationResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcv;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzbc;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
