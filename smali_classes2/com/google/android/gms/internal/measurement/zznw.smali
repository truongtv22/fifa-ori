.class public final Lcom/google/android/gms/internal/measurement/zznw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/android/gms/internal/measurement/zznv;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zznw;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/gms/internal/measurement/zznv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzny;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznw;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzaa()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzaa()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzab()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzab()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzac()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzac()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzad()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzad()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzae()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzae()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzaf()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzaf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzag()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzag()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzah()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzah()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzai()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzai()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzaj()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzaj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzak()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzak()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzal()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzal()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzam()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzan()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzan()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzao()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzap()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaq()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzaq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzar()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzas()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzas()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzat()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzau()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzau()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzav()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzav()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaw()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzaw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzg()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzh()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzi()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzj()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzk()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzl()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzm()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzn()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzo()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzp()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzq()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzr()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzs()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzt()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzu()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzv()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzw()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzx()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzy()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzz()J
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznw;->zza:Lcom/google/android/gms/internal/measurement/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznv;->zzz()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznw;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznv;

    return-object v0
.end method
