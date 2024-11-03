.class public final Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
.super Lcom/google/android/gms/internal/measurement/zzju$zza;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfs$zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzg;",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzf()Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzc()I

    move-result v0

    return v0
.end method

.method public final zza(D)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;D)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;J)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzg;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzc(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zzg;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzb(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzd(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzg;)V

    return-object p0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzg;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
