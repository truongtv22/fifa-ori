.class public final Lcom/google/android/gms/internal/games_v2/zzbs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/games_v2/zzbc;


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzc:Ljava/util/Queue;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Landroid/app/Application;

.field private final zzg:Lcom/google/android/gms/games/internal/zzg;

.field private final zzh:Lcom/google/android/gms/internal/games_v2/zzbt;

.field private final zzi:Lcom/google/android/gms/games/internal/v2/resolution/zzb;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/gms/games/internal/zzg;Lcom/google/android/gms/games/internal/v2/resolution/zzb;Lcom/google/android/gms/internal/games_v2/zzbt;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbp;->zza:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbo;->zza:Lcom/google/android/gms/internal/games_v2/zzbo;

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzc:Ljava/util/Queue;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzf:Landroid/app/Application;

    iput-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzg:Lcom/google/android/gms/games/internal/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzi:Lcom/google/android/gms/games/internal/v2/resolution/zzb;

    iput-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzh:Lcom/google/android/gms/internal/games_v2/zzbt;

    return-void
.end method

.method private static zzj()Lcom/google/android/gms/common/api/ApiException;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method private static zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbp;->zza:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/games_v2/zzbp;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzfs;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzbl;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zzb:Lcom/google/android/gms/games/AuthenticationResult;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/games/AuthenticationResult;->zza:Lcom/google/android/gms/games/AuthenticationResult;

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/games_v2/zzft;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/games_v2/zzft;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbk;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbk;-><init>(Lcom/google/android/gms/internal/games_v2/zzft;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private final zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V
    .locals 3

    const-string v0, "Attempting authentication: "

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamesApiManager"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzh:Lcom/google/android/gms/internal/games_v2/zzbt;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/games_v2/zzbt;->zza(Lcom/google/android/gms/internal/games_v2/zzy;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/games_v2/zzbj;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbj;-><init>(Lcom/google/android/gms/internal/games_v2/zzbs;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private final zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V
    .locals 7

    const-string v0, "Must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzf:Landroid/app/Application;

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->getClientVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v4, v3, v5

    const-string v4, "GmsCore version is %d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GamesApiManager"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xd2952e0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzf:Landroid/app/Application;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p2, "PlayStore is not installed"

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v1, 0x4ea66c8

    if-ge v0, v1, :cond_1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v5

    const-string p4, "PlayStore version is below resolution threshold: %s"

    invoke-static {p2, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "PlayStore is too old or not available and the version of GmsCore would attempt PGA installation on automatic sign-in. Skipping it."

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/google/android/gms/internal/games_v2/zzbp;->zzd:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "Installed PlayStore version can be used for resolution."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    iget-object p4, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzg:Lcom/google/android/gms/games/internal/zzg;

    invoke-virtual {p4}, Lcom/google/android/gms/games/internal/zzg;->zza()Landroid/app/Activity;

    move-result-object p4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p4, p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzb;->zzb(Landroid/app/Activity;Landroid/app/PendingIntent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    sget-object p4, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance p5, Lcom/google/android/gms/internal/games_v2/zzbm;

    invoke-direct {p5, p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbm;-><init>(Lcom/google/android/gms/internal/games_v2/zzbs;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-string p1, "Resolution triggered"

    invoke-static {v3, p1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p3, Lcom/google/android/gms/internal/games_v2/zzbo;->zzb:Lcom/google/android/gms/internal/games_v2/zzbo;

    sget-object p4, Lcom/google/android/gms/internal/games_v2/zzbo;->zzc:Lcom/google/android/gms/internal/games_v2/zzbo;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/games_v2/zzbf;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p5, :cond_6

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p2, "Consumed pending explicit sign-in. Attempting explicit sign-in"

    invoke-static {v3, p2}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/games_v2/zzy;->zzb(I)Lcom/google/android/gms/internal/games_v2/zzy;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p1, v6}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/google/android/gms/internal/games_v2/zzbp;->zzd:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzc:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzbr;

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzj()Lcom/google/android/gms/common/api/ApiException;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzc(Ljava/lang/Exception;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_7
    return-void
.end method

.method private final zzo(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startAuthenticationIfNecessary() signInType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GamesApiManager"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbp;->zza:Lcom/google/android/gms/internal/games_v2/zzbp;

    sget-object v3, Lcom/google/android/gms/internal/games_v2/zzbp;->zzb:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzbf;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbp;->zzd:Lcom/google/android/gms/internal/games_v2/zzbp;

    sget-object v3, Lcom/google/android/gms/internal/games_v2/zzbp;->zzb:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/games_v2/zzbf;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbo;->zza:Lcom/google/android/gms/internal/games_v2/zzbo;

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbo;->zzb:Lcom/google/android/gms/internal/games_v2/zzbo;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/games_v2/zzbf;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Explicit sign-in during existing authentication. Marking pending explicit sign-in: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authentication attempt skipped. Already authenticated or authenticating. State: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "New authentication attempt in progress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    if-nez p1, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbo;->zzc:Lcom/google/android/gms/internal/games_v2/zzbo;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/games_v2/zzbo;->zza:Lcom/google/android/gms/internal/games_v2/zzbo;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/games_v2/zzy;->zzb(I)Lcom/google/android/gms/internal/games_v2/zzy;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    return-void
.end method

.method private static zzp()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/tasks/Task;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzbg;-><init>(Lcom/google/android/gms/internal/games_v2/zzbs;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzl(Lcom/google/android/gms/internal/games_v2/zzft;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/tasks/Task;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/games_v2/zzbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/games_v2/zzbn;-><init>(Lcom/google/android/gms/internal/games_v2/zzbs;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzl(Lcom/google/android/gms/internal/games_v2/zzft;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/tasks/Task;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/games_v2/zzaw;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GamesApiManager"

    const-string v3, "Executing API call with authentication state: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc:Lcom/google/android/gms/internal/games_v2/zzbp;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzaw;->zza(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbp;->zzd:Lcom/google/android/gms/internal/games_v2/zzbp;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzj()Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbp;->zza:Lcom/google/android/gms/internal/games_v2/zzbp;

    if-ne v0, v1, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzbr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/games_v2/zzbr;-><init>(Lcom/google/android/gms/internal/games_v2/zzaw;Lcom/google/android/gms/tasks/TaskCompletionSource;[B)V

    new-instance p1, Lcom/google/android/gms/internal/games_v2/zzbi;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/games_v2/zzbi;-><init>(Lcom/google/android/gms/internal/games_v2/zzbs;Lcom/google/android/gms/internal/games_v2/zzbr;)V

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze()Lcom/google/android/gms/tasks/Task;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/tasks/Task;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzo(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzk(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/tasks/TaskCompletionSource;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzg(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;Lcom/google/android/gms/tasks/Task;)V
    .locals 9

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GamesApiManager"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzfp;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Authentication task failed"

    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zzd()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/games_v2/zzbx;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/games_v2/zzbx;->zze()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to authenticate: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v5

    invoke-virtual {p3}, Lcom/google/android/gms/internal/games_v2/zzbx;->zza()Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zzd()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/games_v2/zzbx;->zzd()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, "Unexpected state: game run token absent"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zza()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/games_v2/zzy;->zzd()Z

    move-result p2

    xor-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_2
    const-string p2, "Successfully authenticated"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Must be called on the main thread."

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/games/zzn;->zzb()Lcom/google/android/gms/games/zzl;

    move-result-object p2

    const v0, 0x201113

    invoke-virtual {p2, v0}, Lcom/google/android/gms/games/zzl;->zzd(I)Lcom/google/android/gms/games/zzl;

    invoke-static {}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->createDefault()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/games/zzl;->zzc(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/games/zzl;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/games/zzl;->zza(Ljava/lang/String;)Lcom/google/android/gms/games/zzl;

    invoke-static {}, Lcom/google/android/gms/games/internal/zzl;->zza()Lcom/google/android/gms/games/internal/zzj;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/google/android/gms/games/internal/zzj;->zzb(Z)Lcom/google/android/gms/games/internal/zzj;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/games/internal/zzj;->zzc(Z)Lcom/google/android/gms/games/internal/zzj;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/games/internal/zzj;->zza(Z)Lcom/google/android/gms/games/internal/zzj;

    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/zzj;->zzd()Lcom/google/android/gms/games/internal/zzl;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/games/zzl;->zzb(Lcom/google/android/gms/games/internal/zzl;)Lcom/google/android/gms/games/zzl;

    invoke-virtual {p2}, Lcom/google/android/gms/games/zzl;->zze()Lcom/google/android/gms/games/zzn;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/games_v2/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzf:Landroid/app/Application;

    invoke-direct {p3, v0, p2}, Lcom/google/android/gms/internal/games_v2/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/zzn;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc:Lcom/google/android/gms/internal/games_v2/zzbp;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzc:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/games_v2/zzbr;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method final synthetic zzh(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/tasks/Task;)V
    .locals 8

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "GamesApiManager"

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzfp;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Resolution failed"

    invoke-static {v1, v0, p3}, Lcom/google/android/gms/internal/games_v2/zzfn;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/internal/v2/resolution/zzc;

    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zzd()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Resolution successful"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/gms/games/internal/v2/resolution/zzc;->zza()Landroid/content/Intent;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/games_v2/zzaf;->zza(Landroid/content/Intent;)Lcom/google/android/gms/internal/games_v2/zzaf;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/games_v2/zzy;->zzc(ILcom/google/android/gms/internal/games_v2/zzaf;)Lcom/google/android/gms/internal/games_v2/zzy;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzm(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/games_v2/zzy;)V

    return-void

    :cond_1
    const-string p3, "Resolution attempt was canceled"

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/games_v2/zzfn;->zza(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzn(Lcom/google/android/gms/tasks/TaskCompletionSource;ILandroid/app/PendingIntent;ZZ)V

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/games_v2/zzbr;)V
    .locals 2

    const-string v0, "Must be called on the main thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games_v2/zzbp;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbp;->zzc:Lcom/google/android/gms/internal/games_v2/zzbp;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbr;->zza(Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzbp;->zzd:Lcom/google/android/gms/internal/games_v2/zzbp;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/games_v2/zzbs;->zzj()Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/games_v2/zzbr;->zzc(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzbs;->zzc:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
