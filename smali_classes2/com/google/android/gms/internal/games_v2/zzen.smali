.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzen;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzen;->zza:Lcom/google/android/gms/internal/games_v2/zzer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzen;->zza:Lcom/google/android/gms/internal/games_v2/zzer;

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzfm;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/games_v2/zzfm;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/games_v2/zzat;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzeq;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzeq;-><init>(Lcom/google/android/gms/internal/games_v2/zzer;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string p2, "unusedServerClientId"

    invoke-interface {p1, v1, p2}, Lcom/google/android/gms/internal/games_v2/zzat;->zzd(Lcom/google/android/gms/internal/games_v2/zzaq;Ljava/lang/String;)V

    return-void
.end method
