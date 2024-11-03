.class public final Lcom/google/android/gms/internal/games_v2/zzcl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/games/AchievementsClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    return-void
.end method


# virtual methods
.method public final getAchievementsIntent()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzca;->zza:Lcom/google/android/gms/internal/games_v2/zzca;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final increment(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcc;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final incrementImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcc;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcc;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final load(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzce;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzce;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final reveal(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzcg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final revealImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzcg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final setSteps(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcf;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final setStepsImmediate(Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzcf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzcf;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final unlock(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzci;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzci;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final unlockImmediate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzcl;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzci;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzci;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
