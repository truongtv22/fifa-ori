.class public final synthetic Lcom/google/android/gms/internal/measurement/zzgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgy;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzgt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzgt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgs;->zza:Lcom/google/android/gms/internal/measurement/zzgt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgt;->zzb()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
