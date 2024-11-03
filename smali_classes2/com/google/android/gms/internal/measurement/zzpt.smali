.class public final Lcom/google/android/gms/internal/measurement/zzpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/android/gms/internal/measurement/zzpw;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzpt;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/gms/internal/measurement/zzpw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Lcom/google/android/gms/internal/measurement/zzpt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpv;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpt;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()D
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpw;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public static zzb()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpw;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpw;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpw;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zze()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpt;->zza:Lcom/google/android/gms/internal/measurement/zzpt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzpw;->zze()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpt;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzpw;

    return-object v0
.end method
