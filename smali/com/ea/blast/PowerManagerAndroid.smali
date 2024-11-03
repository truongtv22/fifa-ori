.class public Lcom/ea/blast/PowerManagerAndroid;
.super Ljava/lang/Object;
.source "PowerManagerAndroid.java"


# static fields
.field private static final kTag:Ljava/lang/String; = "Electronic Arts"


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "Electronic Arts"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method ApplyKeepAwake(Z)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const-string p1, "Electronic Arts"

    const-string v0, "Missing WAKE_LOCK permission."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method
