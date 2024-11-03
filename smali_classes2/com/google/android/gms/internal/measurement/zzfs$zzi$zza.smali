.class public final Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;
.super Lcom/google/android/gms/internal/measurement/zzju$zza;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfs$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzi;",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc()Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj$zza;)Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzah()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzi;Lcom/google/android/gms/internal/measurement/zzfs$zzj;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzi;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    move-result-object p1

    return-object p1
.end method
