.class final Lcom/google/android/gms/measurement/internal/zzju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/lang/Object;

.field private final synthetic zzd:J

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzja;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzd:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzju;->zze:Lcom/google/android/gms/measurement/internal/zzja;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzju;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzc:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzju;->zzd:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
