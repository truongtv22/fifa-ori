.class public final Lcom/google/android/gms/internal/measurement/zzju$zzc;
.super Lcom/google/android/gms/internal/measurement/zzic;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/measurement/zzju<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/measurement/zzic<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzju;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzic;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju$zzc;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-void
.end method
