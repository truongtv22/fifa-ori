.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzax;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Z

.field public final synthetic zzc:Z

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zza:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzb:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzc:Z

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzfc;->zzd:I

    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/games_v2/zzfb;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzfb;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    const/16 v1, 0x1a3f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->setMethodKey(I)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
