.class final Lcom/google/android/gms/internal/measurement/zzig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/measurement/zzjh;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Lcom/google/android/gms/internal/measurement/zzjh;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzd:Lcom/google/android/gms/internal/measurement/zzjh;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzd:Lcom/google/android/gms/internal/measurement/zzjh;

    return-void
.end method
