.class final Lcom/google/android/gms/measurement/internal/zzjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:J

.field private final synthetic zzd:Landroid/os/Bundle;

.field private final synthetic zze:Z

.field private final synthetic zzf:Z

.field private final synthetic zzg:Z

.field private final synthetic zzh:Ljava/lang/String;

.field private final synthetic zzi:Lcom/google/android/gms/measurement/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zze:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzg:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzi:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzi:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzb:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzc:J

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzd:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zze:Z

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzf:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzg:Z

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/zzjv;->zzh:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
