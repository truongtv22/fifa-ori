.class final Lcom/google/android/gms/internal/measurement/zzbp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzbm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzh;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zza:Lcom/google/android/gms/internal/measurement/zzh;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzaq;)Lcom/google/android/gms/internal/measurement/zzh;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zza:Lcom/google/android/gms/internal/measurement/zzh;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzaq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzbp;->zza:Lcom/google/android/gms/internal/measurement/zzh;

    return-object p1
.end method
