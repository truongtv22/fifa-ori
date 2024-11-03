.class public final Lcom/google/android/gms/internal/measurement/zzgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgj;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/Object;

.field private zzh:Z

.field private zzi:[Ljava/lang/String;

.field private final zzj:Landroid/content/ContentResolver;

.field private final zzk:Lcom/google/android/gms/internal/measurement/zzgp;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x10

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzc:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzd:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zze:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzf:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzh:Z

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzi:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzj:Landroid/content/ContentResolver;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzk:Lcom/google/android/gms/internal/measurement/zzgp;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/measurement/zzgi;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_e

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p3, Ljava/util/HashMap;

    const/16 v3, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p3, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Ljava/lang/Object;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzgh;->zza:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/gms/internal/measurement/zzgk;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/measurement/zzgk;-><init>(Lcom/google/android/gms/internal/measurement/zzgi;Landroid/os/Handler;)V

    invoke-virtual {p1, p3, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzc:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzd:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zze:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzf:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzh:Z

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    move-object v2, p1

    :cond_2
    monitor-exit p0

    return-object v2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzi:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v1, v4, :cond_a

    aget-object v5, v3, v1

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzh:Z

    if-nez p3, :cond_8

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzi:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzk:Lcom/google/android/gms/internal/measurement/zzgp;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-interface {v1, p1, p3, v3}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzgm;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzgo; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzc:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzd:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zze:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzf:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzh:Z

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_7

    move-object v2, p1

    :cond_7
    monitor-exit p0

    return-object v2

    :cond_8
    monitor-exit p0

    return-object v2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzk:Lcom/google/android/gms/internal/measurement/zzgp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzgp;->zza(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Lcom/google/android/gms/internal/measurement/zzgo; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz p1, :cond_b

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object p1, v2

    :cond_b
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzg:Ljava/lang/Object;

    if-ne p3, v0, :cond_c

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgi;->zzb:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    monitor-exit p0

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catch_1
    return-object v2

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ContentResolver needed with GservicesDelegateSupplier.init()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
