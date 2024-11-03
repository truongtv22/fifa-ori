.class final Lcom/google/android/gms/internal/measurement/zzme;
.super Lcom/google/android/gms/internal/measurement/zzmm;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzmm;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzma;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzma;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzme;->zza:Lcom/google/android/gms/internal/measurement/zzma;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzmm;-><init>(Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzmp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzmh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzme;-><init>(Lcom/google/android/gms/internal/measurement/zzma;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzme;->zza:Lcom/google/android/gms/internal/measurement/zzma;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzmc;-><init>(Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzmf;)V

    return-object v0
.end method
