.class final Lcom/google/android/gms/measurement/internal/zznm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zznn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zznn;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zznm;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzc:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzd:Lcom/google/android/gms/measurement/internal/zznn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzd:Lcom/google/android/gms/measurement/internal/zznn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzq()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznm;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzc:Landroid/os/Bundle;

    const-string v5, "auto"

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzd:Lcom/google/android/gms/measurement/internal/zznn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zznn;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzng;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzbf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zznm;->zzd:Lcom/google/android/gms/measurement/internal/zznn;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zznn;->zza:Lcom/google/android/gms/measurement/internal/zzng;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzbf;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zznm;->zza:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzng;->zza(Lcom/google/android/gms/measurement/internal/zzbf;Ljava/lang/String;)V

    return-void
.end method
