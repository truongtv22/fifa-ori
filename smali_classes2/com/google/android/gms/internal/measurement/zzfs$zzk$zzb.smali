.class public final Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;
.super Lcom/google/android/gms/internal/measurement/zzju$zza;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfs$zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzk;",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzk;->zzb()Lcom/google/android/gms/internal/measurement/zzfs$zzk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzk$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzk;Lcom/google/android/gms/internal/measurement/zzfs$zzf;)V

    return-object p0
.end method
