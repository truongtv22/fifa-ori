.class public final Lcom/google/android/gms/internal/measurement/zzfg$zzb;
.super Lcom/google/android/gms/internal/measurement/zzju;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfg$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju<",
        "Lcom/google/android/gms/internal/measurement/zzfg$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzfg$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzlq<",
            "Lcom/google/android/gms/internal/measurement/zzfg$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzfg$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/measurement/zzfg$zzd;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfg$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzju;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzfg$zzc;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Lcom/google/android/gms/internal/measurement/zzkd;)Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfg$zzb;ILcom/google/android/gms/internal/measurement/zzfg$zzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zza(ILcom/google/android/gms/internal/measurement/zzfg$zzc;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfg$zzb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzfg$zzb$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzbz()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfg$zzb$zza;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/measurement/zzfg$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfg$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfg$zzc;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfh;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzju$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzju$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfg$zzc;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzlh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfg$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfg$zzb$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfh;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfg$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfg$zzb;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzf:I

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzfg$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzj:Lcom/google/android/gms/internal/measurement/zzfg$zzd;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfg$zzd;->zzc()Lcom/google/android/gms/internal/measurement/zzfg$zzd;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfg$zzc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzh:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzk:Z

    return v0
.end method

.method public final zzi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzl:Z

    return v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zzm:Z

    return v0
.end method

.method public final zzk()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfg$zzb;->zze:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
