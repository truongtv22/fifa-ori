.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzft;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzft;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zza:Lcom/google/android/gms/internal/games_v2/zzft;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zza:Lcom/google/android/gms/internal/games_v2/zzft;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbk;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-interface {v0}, Lcom/google/android/gms/internal/games_v2/zzft;->zza()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbh;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzbh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    check-cast v0, Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
