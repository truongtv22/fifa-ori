.class public final enum Lcom/google/android/gms/measurement/internal/zzis$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzis$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

.field private static final synthetic zzf:[Lcom/google/android/gms/measurement/internal/zzis$zza;


# instance fields
.field public final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzis$zza;

    const-string v1, "ad_storage"

    const-string v2, "AD_STORAGE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzis$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zza:Lcom/google/android/gms/measurement/internal/zzis$zza;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzis$zza;

    const-string v2, "analytics_storage"

    const-string v4, "ANALYTICS_STORAGE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzis$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzb:Lcom/google/android/gms/measurement/internal/zzis$zza;

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzis$zza;

    const-string v4, "ad_user_data"

    const-string v6, "AD_USER_DATA"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzis$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzc:Lcom/google/android/gms/measurement/internal/zzis$zza;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzis$zza;

    const-string v6, "ad_personalization"

    const-string v8, "AD_PERSONALIZATION"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzis$zza;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzd:Lcom/google/android/gms/measurement/internal/zzis$zza;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/google/android/gms/measurement/internal/zzis$zza;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzf:[Lcom/google/android/gms/measurement/internal/zzis$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzis$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzis$zza;->zzf:[Lcom/google/android/gms/measurement/internal/zzis$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzis$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzis$zza;

    return-object v0
.end method
