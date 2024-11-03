.class public final Lcom/google/android/gms/internal/games_v2/zzem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/games/PlayersClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    return-void
.end method

.method private final zza(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzek;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzek;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zzb(Ljava/lang/String;IZ)Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzed;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzed;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getCompareProfileIntent(Lcom/google/android/gms/games/Player;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/Player;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzeg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzeg;-><init>(Lcom/google/android/gms/games/Player;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getCompareProfileIntent(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzea;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/google/android/gms/internal/games_v2/zzea;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getCompareProfileIntentWithAlternativeNameHints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzea;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzea;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentPlayer()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/Player;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzdw;->zza:Lcom/google/android/gms/internal/games_v2/zzdw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPlayer(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzeh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzeh;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentPlayerId()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzdu;->zza:Lcom/google/android/gms/internal/games_v2/zzdu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayerSearchIntent()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzef;->zza:Lcom/google/android/gms/internal/games_v2/zzef;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final loadFriends(IZ)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "friends_all"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzem;->zzb(Ljava/lang/String;IZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadMoreFriends(I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "friends_all"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/games_v2/zzem;->zza(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadMoreRecentlyPlayedWithPlayers(I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "played_with"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/games_v2/zzem;->zza(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadPlayer(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzdx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/games_v2/zzdx;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadPlayer(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzem;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzdx;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzdx;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final loadRecentlyPlayedWithPlayers(IZ)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation

    const-string v0, "played_with"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzem;->zzb(Ljava/lang/String;IZ)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
