.class public final Lcom/google/android/gms/internal/measurement/zzfs$zzi;
.super Lcom/google/android/gms/internal/measurement/zzju;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzfs$zzi$zzb;,
        Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzju<",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzi;",
        "Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzlj;"
    }
.end annotation


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzlq<",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzkd<",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzju;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzju;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzce()Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfs$zzi;Lcom/google/android/gms/internal/measurement/zzfs$zzj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfs$zzi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzfs$zzj;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Lcom/google/android/gms/internal/measurement/zzkd;)Lcom/google/android/gms/internal/measurement/zzkd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkd;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zza(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzbz()Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzfs$zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkd;->size()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfs$zzj;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    return-object p1
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfu;->zza:[I

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/measurement/zzju$zzc;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzju$zzc;-><init>(Lcom/google/android/gms/internal/measurement/zzju;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzd:Lcom/google/android/gms/internal/measurement/zzlq;

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-class p3, Lcom/google/android/gms/internal/measurement/zzfs$zzj;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zzb;->zzb()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007\u1008\u0000\u0008\u1008\u0001\t\u180c\u0002"

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzc:Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zza(Lcom/google/android/gms/internal/measurement/zzlh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfs$zzi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfu;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfs$zzi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfs$zzi;-><init>()V

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

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfs$zzj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zzf:Lcom/google/android/gms/internal/measurement/zzkd;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfs$zzi;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
