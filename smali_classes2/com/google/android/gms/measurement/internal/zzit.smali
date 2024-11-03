.class public final enum Lcom/google/android/gms/measurement/internal/zzit;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzit;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzit;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzit;

.field private static final synthetic zzc:[Lcom/google/android/gms/measurement/internal/zzit;


# instance fields
.field private final zzd:[Lcom/google/android/gms/measurement/internal/zzis$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzit;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "STORAGE"

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzis$zza;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzit;->zza:Lcom/google/android/gms/measurement/internal/zzit;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzit;

    new-array v3, v5, [Lcom/google/android/gms/measurement/internal/zzis$zza;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    aput-object v6, v3, v4

    const-string v6, "DMA"

    invoke-direct {v2, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzis$zza;)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzit;->zzb:Lcom/google/android/gms/measurement/internal/zzit;

    new-array v1, v1, [Lcom/google/android/gms/measurement/internal/zzit;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzit;->zzc:[Lcom/google/android/gms/measurement/internal/zzit;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/google/android/gms/measurement/internal/zzis$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/measurement/internal/zzis$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzd:[Lcom/google/android/gms/measurement/internal/zzis$zza;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzit;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzit;->zzc:[Lcom/google/android/gms/measurement/internal/zzit;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzit;

    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzit;)[Lcom/google/android/gms/measurement/internal/zzis$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzd:[Lcom/google/android/gms/measurement/internal/zzis$zza;

    return-object p0
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/measurement/internal/zzis$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzit;->zzd:[Lcom/google/android/gms/measurement/internal/zzis$zza;

    return-object v0
.end method
