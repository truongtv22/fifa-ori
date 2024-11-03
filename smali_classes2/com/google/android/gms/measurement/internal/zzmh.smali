.class final Lcom/google/android/gms/measurement/internal/zzmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzma;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Lcom/google/android/gms/measurement/internal/zzma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Lcom/google/android/gms/measurement/internal/zzma;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzlf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlf;->zza(Lcom/google/android/gms/measurement/internal/zzlf;Lcom/google/android/gms/measurement/internal/zzfq;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmh;->zza:Lcom/google/android/gms/measurement/internal/zzma;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzma;->zza:Lcom/google/android/gms/measurement/internal/zzlf;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzlf;->zzc(Lcom/google/android/gms/measurement/internal/zzlf;)V

    return-void
.end method
