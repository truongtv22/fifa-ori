.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:I

.field public final synthetic zzc:I

.field public final synthetic zzd:I

.field public final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zzd:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zze:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zza:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zzd:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/games_v2/zzcw;->zze:Z

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/internal/zzak;

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/zzak;->zzG(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V

    return-void
.end method
