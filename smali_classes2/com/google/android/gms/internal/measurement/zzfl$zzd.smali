.class public final Lcom/google/android/gms/internal/measurement/zzfl$zzd;
.super Lcom/google/android/gms/internal/measurement/zzju;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju<",
        "Lcom/google/android/gms/internal/measurement/zzfl$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzlq<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzfg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Ljava/lang/String;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzgc$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Lcom/google/android/gms/internal/measurement/zzfl$zza;

.field private zzs:Lcom/google/android/gms/internal/measurement/zzfl$zze;

.field private zzt:Lcom/google/android/gms/internal/measurement/zzfl$zzh;

.field private zzu:Lcom/google/android/gms/internal/measurement/zzfl$zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzju;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzkd;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzl:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzo:Lcom/google/android/gms/internal/measurement/zzkd;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzq:Ljava/lang/String;

    return-void
.end method

.method private final zza(ILcom/google/android/gms/internal/measurement/zzfl$zzc;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Lcom/google/android/gms/internal/measurement/zzkd;)Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkd;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfl$zzd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzt()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfl$zzd;ILcom/google/android/gms/internal/measurement/zzfl$zzc;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zza(ILcom/google/android/gms/internal/measurement/zzfl$zzc;)V

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzbz()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/measurement/zzfl$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/measurement/zzfl$zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    return-object v0
.end method

.method private final zzt()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzkd;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfl$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfl$zzc;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfn;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzju$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzju$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    return-object p1

    :pswitch_4
    const/16 p1, 0x16

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

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfl$zzg;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfl$zzc;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfg$zza;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lcom/google/android/gms/internal/measurement/zzgc$zzc;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfl$zzb;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0010\u0000\u0001\u0001\u0012\u0010\u0000\u0005\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u1008\u0003\u0008\u1007\u0004\t\u001b\n\u001b\u000b\u1008\u0005\u000e\u1008\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u1009\t\u0012\u1009\n"

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzlh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfl$zzd$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfn;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfl$zzd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfl$zzd;-><init>()V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzj:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->size()I

    move-result v0

    return v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzf:J

    return-wide v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/measurement/zzfl$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzr:Lcom/google/android/gms/internal/measurement/zzfl$zza;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzfl$zza;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/measurement/zzfl$zzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzt:Lcom/google/android/gms/internal/measurement/zzfl$zzh;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfl$zzh;->zzc()Lcom/google/android/gms/internal/measurement/zzfl$zzh;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzp:Ljava/lang/String;

    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfg$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzk:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzo:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgc$zzc;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzn:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfl$zzg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzi:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zzm:Z

    return v0
.end method

.method public final zzp()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zze:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzr()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zze:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfl$zzd;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
