.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzft;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbg;->zza:Lcom/google/android/gms/internal/games_v2/zzbs;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbg;->zza:Lcom/google/android/gms/internal/games_v2/zzbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games_v2/zzbs;->zze()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
