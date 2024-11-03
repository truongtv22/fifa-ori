.class public final Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;
.super Lcom/google/android/gms/internal/measurement/zzju$zza;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfl$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "Lcom/google/android/gms/internal/measurement/zzfl$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzf()Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzb()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfl$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zza(I)Lcom/google/android/gms/internal/measurement/zzfl$zzc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzfl$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfl$zzc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzfl$zzd;ILcom/google/android/gms/internal/measurement/zzfl$zzc;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzfl$zzd;)V

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfg$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzl()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
