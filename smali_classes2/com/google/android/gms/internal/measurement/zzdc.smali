.class public final Lcom/google/android/gms/internal/measurement/zzdc;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzdb;


# instance fields
.field private final zzb:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzb:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdc;->zzb:Landroid/os/Looper;

    return-void
.end method
