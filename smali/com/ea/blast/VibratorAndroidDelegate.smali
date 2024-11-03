.class public Lcom/ea/blast/VibratorAndroidDelegate;
.super Ljava/lang/Object;
.source "VibratorAndroidDelegate.java"


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method Cancel()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "EAMCore"

    const-string v1, "Missing permission: android.permission.VIBRATE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method Vibrate(I)V
    .locals 9

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_2

    const v1, 0x1e8480

    if-le p1, v1, :cond_0

    const p1, 0x1e8480

    :cond_0
    :try_start_0
    div-int/lit16 v1, p1, 0x3e8

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v1, 0x2

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr p1, v2

    int-to-long v2, p1

    add-int/lit8 p1, v1, 0x1

    add-int/lit8 v0, p1, 0x2

    new-array v0, v0, [J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v1, 0x2

    if-ge v4, v7, :cond_1

    const-wide/16 v7, 0x3e8

    aput-wide v7, v0, v4

    add-int/lit8 v7, v4, 0x1

    aput-wide v5, v0, v7

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    aput-wide v2, v0, p1

    aput-wide v5, v0, v7

    iget-object p1, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "EAMCore"

    const-string v0, "Missing permission: android.permission.VIBRATE"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
