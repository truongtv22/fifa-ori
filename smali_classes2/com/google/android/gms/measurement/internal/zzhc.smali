.class public final synthetic Lcom/google/android/gms/measurement/internal/zzhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzgy;

.field private synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zza:Lcom/google/android/gms/measurement/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zza:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzhc;->zzb:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzx;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzha;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzha;-><init>(Lcom/google/android/gms/measurement/internal/zzgy;Ljava/lang/String;)V

    const-string v0, "internal.appMetadata"

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/measurement/zzx;-><init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-object v2
.end method
