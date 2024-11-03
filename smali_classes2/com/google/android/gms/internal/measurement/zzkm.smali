.class abstract Lcom/google/android/gms/internal/measurement/zzkm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzkm;

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzkm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkp;-><init>(Lcom/google/android/gms/internal/measurement/zzko;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Lcom/google/android/gms/internal/measurement/zzkq;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzkt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkm;->zza:Lcom/google/android/gms/internal/measurement/zzkm;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzb:Lcom/google/android/gms/internal/measurement/zzkm;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
