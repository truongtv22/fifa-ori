.class public final synthetic Lcom/google/android/gms/internal/games_v2/zzbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/games_v2/zzbr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Lcom/google/android/gms/internal/games_v2/zzbr;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbq;->zza:Lcom/google/android/gms/internal/games_v2/zzbr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzb(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
