.class public Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;
.super Ljava/lang/Object;
.source "GooglePlayServiceAvailability.java"


# static fields
.field private static volatile classAvail:Z

.field private static volatile initialised:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkClass()Z
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.common.GoogleApiAvailability"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    nop

    sget-boolean v0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LOG_TAG:Ljava/lang/String;

    const-string v1, "google play service not available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->initialised:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;

    monitor-enter v0

    :try_start_0
    sget-boolean v2, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->initialised:Z

    if-nez v2, :cond_0

    sput-boolean v1, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->initialised:Z

    invoke-static {}, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->checkClass()Z

    move-result v2

    sput-boolean v2, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->classAvail:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/garena/android/beepost/service/GooglePlayServiceAvailability;->classAvail:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
