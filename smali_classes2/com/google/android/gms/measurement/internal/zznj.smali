.class final Lcom/google/android/gms/measurement/internal/zznj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zznq;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzng;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zznq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznj;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznj;->zzb:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznj;->zzb:Lcom/google/android/gms/measurement/internal/zzng;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznj;->zza:Lcom/google/android/gms/measurement/internal/zznq;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzng;Lcom/google/android/gms/measurement/internal/zznq;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznj;->zzb:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzv()V

    return-void
.end method
