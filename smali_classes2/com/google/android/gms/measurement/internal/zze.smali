.class final Lcom/google/android/gms/measurement/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zza;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zze;->zzb:Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zze;->zzb:Lcom/google/android/gms/measurement/internal/zza;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zze;->zza:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->zza(Lcom/google/android/gms/measurement/internal/zza;J)V

    return-void
.end method
