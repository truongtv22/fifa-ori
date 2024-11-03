.class public final Lcom/google/android/gms/internal/games_v2/zzay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzbc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/games_v2/zzbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzay;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    return-void
.end method

.method public static zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzay;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzay;

    invoke-static {p0}, Lcom/google/android/gms/internal/games_v2/zzbe;->zza(Landroid/app/Application;)Lcom/google/android/gms/internal/games_v2/zzbc;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzay;-><init>(Lcom/google/android/gms/internal/games_v2/zzbc;)V

    return-object v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzay;->zza:Lcom/google/android/gms/internal/games_v2/zzbc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzaw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzaw;-><init>(Lcom/google/android/gms/internal/games_v2/zzax;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbc;->zzd(Lcom/google/android/gms/internal/games_v2/zzaw;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
