.class final Lcom/google/android/gms/internal/measurement/zzhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgw;


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzhb;


# instance fields
.field private final zzb:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Landroid/database/ContentObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzb:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzb:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzhd;-><init>(Lcom/google/android/gms/internal/measurement/zzhb;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzgh;->zza:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzhb;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/measurement/zzhb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    if-nez v1, :cond_2

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzhb;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzhb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzhb;-><init>()V

    :goto_1
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzhb;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static declared-synchronized zza()V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzhb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/zzhb;->zzb:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzhb;->zza:Lcom/google/android/gms/internal/measurement/zzhb;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzhb;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzhb;->zza:Lcom/google/android/gms/internal/measurement/zzhb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgr;->zza(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzha;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzha;-><init>(Lcom/google/android/gms/internal/measurement/zzhb;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgz;->zza(Lcom/google/android/gms/internal/measurement/zzgy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to read GServices for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "GservicesLoader"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhb;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhb;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzge;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
