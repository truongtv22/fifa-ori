.class public Lcom/ea/game/fmp/FMPActivity;
.super Lcom/ea/blast/MainActivity;
.source "FMPActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;,
        Lcom/ea/game/fmp/FMPActivity$DoAsyncPostTask;,
        Lcom/ea/game/fmp/FMPActivity$XAPKFile;,
        Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;
    }
.end annotation


# static fields
.field public static final CHIMBLE_ENABLED:Z = true

.field public static final GCLOUD_ENABLED:Z = false

.field private static final GET_UNKNOWN_APP_SOURCES:I = 0x11

.field private static final INSTALL_PACKAGES_REQUESTCODE:I = 0x12

.field public static final LAUNCH_TYPE_FROM_C2DM:I = 0x1

.field public static final LAUNCH_TYPE_NORMAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FMPActivity"

.field public static final NIMBLE_ENABLED:Z = false

.field private static final SMOOTHING_FACTOR:F = 0.005f

.field public static activeInternetConnection:I = -0x1

.field public static apkDowndload_filepath:Ljava/lang/String; = ""

.field public static boostImage:Ljava/lang/String;

.field private static mLaunchType:I

.field protected static myActivity:Lcom/ea/game/fmp/FMPActivity;

.field static version:Ljava/lang/String;

.field static versionCode:I

.field private static wifiManager:Landroid/net/wifi/WifiManager;

.field private static final xAPKS:[Lcom/ea/game/fmp/FMPActivity$XAPKFile;


# instance fields
.field private fabric:Lcom/ea/Fabric/Fabric2;

.field private inAppBilling:Lcom/ea/InAppBilling/InAppBilling2;

.field private mActiveInternetConnection:I

.field private mAsyncDownloadTask:Landroid/os/AsyncTask;

.field private mCancelValidation:Z

.field private mImgView:Landroid/widget/ImageView;

.field private mState:I

.field private mStatePaused:Z

.field private sentry:Lcom/ea/Sentry/Sentry2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "NimbleCppBridge"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "FMP"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/ea/game/fmp/FMPActivity$XAPKFile;

    new-instance v2, Lcom/ea/game/fmp/FMPActivity$XAPKFile;

    const/16 v3, 0x80

    const-wide/32 v4, 0x5291b9f0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/ea/game/fmp/FMPActivity$XAPKFile;-><init>(ZIJ)V

    const/4 v0, 0x0

    aput-object v2, v1, v0

    sput-object v1, Lcom/ea/game/fmp/FMPActivity;->xAPKS:[Lcom/ea/game/fmp/FMPActivity$XAPKFile;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mImgView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mAsyncDownloadTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public static CreateBoostSquadImage(Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    new-instance v0, Lcom/ea/game/fmp/FMPActivity$2;

    invoke-direct {v0}, Lcom/ea/game/fmp/FMPActivity$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static GetInternetConnectionType()I
    .locals 1

    sget v0, Lcom/ea/game/fmp/FMPActivity;->activeInternetConnection:I

    return v0
.end method

.method private GetPendingIntentFlag(I)I
    .locals 0

    return p1
.end method

.method public static GetThePackage()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v0}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetTheVersion()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v0}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v1}, Lcom/ea/game/fmp/FMPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/ea/game/fmp/FMPActivity;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    sput-object v0, Lcom/ea/game/fmp/FMPActivity;->version:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static GetTheVersionCode()I
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v0}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v1}, Lcom/ea/game/fmp/FMPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/ea/game/fmp/FMPActivity;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    sput v0, Lcom/ea/game/fmp/FMPActivity;->versionCode:I

    :goto_0
    sget v0, Lcom/ea/game/fmp/FMPActivity;->versionCode:I

    return v0
.end method

.method private static IsVM()Z
    .locals 2

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static LaunchMarket()V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "https://play.google.com/store/apps/details?id="

    :try_start_0
    sget-object v2, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/game/fmp/FMPActivity;->GetThePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/ea/game/fmp/FMPActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://l2b.eamobile.com/?rId=36186"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/ea/game/fmp/FMPActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private PopImgViewImpl()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mImgView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mImgView:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/ea/game/fmp/FMPActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/game/fmp/FMPActivity;->PopImgViewImpl()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/game/fmp/FMPActivity;)I
    .locals 0

    iget p0, p0, Lcom/ea/game/fmp/FMPActivity;->mActiveInternetConnection:I

    return p0
.end method

.method static synthetic access$402(Lcom/ea/game/fmp/FMPActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity;->mAsyncDownloadTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private deleteNotificationFile(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public static getLaunchType()I
    .locals 1

    sget v0, Lcom/ea/game/fmp/FMPActivity;->mLaunchType:I

    return v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v0}, Lcom/ea/game/fmp/FMPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v1}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "metadata_error"

    :goto_0
    return-object p0
.end method

.method public static getStartArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v1}, Lcom/ea/game/fmp/FMPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getSystemInfo()Ljava/lang/String;
    .locals 10

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"android_id\":\"%s\","

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v4}, Lcom/ea/game/fmp/FMPActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"sdk_int\":\"%d\","

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"ro_product_cpu_abi\":\"%s\","

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ro.product.cpu.abi"

    const-string v6, "ro_product_cpu_abi"

    invoke-static {v4, v6}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v1}, Lcom/ea/game/fmp/FMPActivity;->getAvailableMemory()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"total_ram\":\"%s\","

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"device_model\":\"%s\","

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"cpu_model\":\"%s\","

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "dalvik.vm.isa.arm.variant"

    const-string v6, "dalvik_vm_isa_arm_variant"

    invoke-static {v4, v6}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"os_version\":\"%s\","

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v1}, Lcom/ea/game/fmp/FMPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.opengles.aep"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "\"is_support_astc\":\"%b\""

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FMPActivity"

    const-string v2, "Failed to invoke FMPSystemPropertiesProxy.getString()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getUUID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmulator()Z
    .locals 1

    invoke-static {}, Lcom/ea/game/fmp/FMPActivity;->isEmulatorBasic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ea/game/fmp/FMPActivity;->isEmulatorSUPPORTED_ABIS()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ea/game/fmp/FMPActivity;->IsVM()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private static isEmulatorBasic()Z
    .locals 3

    :try_start_0
    const-string v0, "ro.product.cpu.abi"

    const-string v1, "ro_product_cpu_abi"

    invoke-static {v0, v1}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "[[@@_EMULATOR]] Failed to invoke FMPSystemPropertiesProxy.getString()"

    const-string v2, "FMPActivity"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "[[@@_EMULATOR]] isEmulator NOT REACHABLE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isEmulatorSUPPORTED_ABIS()Z
    .locals 6

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    const-string/jumbo v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[[@@_EMULATOR]] Build.SUPPORTED_ABIS : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static logForEmulatorCheck()V
    .locals 4

    const-string v0, "ro.product.cpu.abi"

    const-string v1, "ro_product_cpu_abi"

    invoke-static {v0, v1}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "[[@@_EMULATOR]]isEmulator - cpuAbi : \'%s\'"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[[@@_EMULATOR]] @{ onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] init.svc.qemud : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "init.svc.qemud"

    const-string v3, "default_value"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] init.svc.qemu-props : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "init.svc.qemu-props"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] qemu.hw.mainkeys : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "qemu.hw.mainkeys"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] qemu.sf.fake_camera : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "qemu.sf.fake_camera"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] qemu.sf.lcd_density : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "qemu.sf.lcd_density"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.bootloader : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.bootloader"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.bootmode : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.bootmode"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.hardware : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.hardware"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.kernel.android.qemud : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.kernel.android.qemud"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.kernel.qemu.gles : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.kernel.qemu.gles"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.kernel.qemu : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.kernel.qemu"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.product.device : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.product.device"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.product.model : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.product.model"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.product.name : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.product.name"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] ro.serialno : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ro.serialno"

    invoke-static {v2, v3}, Lcom/ea/game/fmp/FMPSystemPropertiesProxy;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.FINGERPRINT : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.MODEL : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.MANUFACTURER : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.BOARD : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.BOOTLOADER : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.HARDWARE : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.PRODUCT : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.SERIAL : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.HOST : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.CPU_ABI : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.CPU_ABI2 : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.SUPPORTED_ABIS : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.SUPPORTED_32_BIT_ABIS : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.SUPPORTED_64_BIT_ABIS : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.BRAND : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.DEVICE : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] Build.BASEBAND : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[[@@_EMULATOR]] OS.ARCH : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "[[@@_EMULATOR]] @} onCreate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loginWithPublishPermissions()V
    .locals 0

    return-void
.end method

.method public static native sendStory(Ljava/lang/String;)V
.end method

.method public static setClipboardText(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    new-instance v1, Lcom/ea/game/fmp/FMPActivity$1;

    invoke-direct {v1, p0}, Lcom/ea/game/fmp/FMPActivity$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/game/fmp/FMPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    new-instance v1, Lcom/ea/game/fmp/FMPActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/ea/game/fmp/FMPActivity$5;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/ea/game/fmp/FMPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeXGPushLog(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "store.ini"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "(.*)=(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dataPath"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/xgpush.log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public ApkUpdate(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApkUpdate"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public PopImgView()V
    .locals 1

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ea/game/fmp/FMPActivity$3;

    invoke-direct {v0, p0}, Lcom/ea/game/fmp/FMPActivity$3;-><init>(Lcom/ea/game/fmp/FMPActivity;)V

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public PublicApkUpdate(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public RequestAudioFocus()V
    .locals 3

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public Screenshot(I)V
    .locals 1

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mGLView:Lcom/ea/blast/MainView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ea/game/fmp/FMPActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/ea/game/fmp/FMPActivity$4;-><init>(Lcom/ea/game/fmp/FMPActivity;I)V

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public ScreenshotImpl(I)V
    .locals 6

    :try_start_0
    const-string v0, "fmp_screen.png"

    const-string v1, ""

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "store.ini"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "(.*)=(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataPath"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v4

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "temp/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainView;->Capture(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ea/game/fmp/FMPActivity;->screenShotEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FMPActivity"

    const-string v1, "@@@@@@@ ScreenshotImpl exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method StartApp()V
    .locals 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, "SHA"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    const-string v4, "MY KEY HASHrow:"

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "My key exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/ea/Fabric/Fabric2;

    invoke-direct {v0}, Lcom/ea/Fabric/Fabric2;-><init>()V

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->fabric:Lcom/ea/Fabric/Fabric2;

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/ea/Fabric/Fabric2;->Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/ea/InAppBilling/InAppBilling2;

    invoke-direct {v0}, Lcom/ea/InAppBilling/InAppBilling2;-><init>()V

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->inAppBilling:Lcom/ea/InAppBilling/InAppBilling2;

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/ea/InAppBilling/InAppBilling2;->Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {p0}, Lcom/ea/rwfilesystem/rwfilesystem;->Startup(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p0}, Lcom/ea/game/fmp/FMPActivity;->updateInternetConnectionType(Landroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;

    invoke-direct {v1, p0}, Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;-><init>(Lcom/ea/game/fmp/FMPActivity;)V

    invoke-virtual {p0, v1, v0}, Lcom/ea/game/fmp/FMPActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public androidAsyncPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/ea/game/fmp/FMPActivity$DoAsyncPostTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncPostTask;-><init>(Lcom/ea/game/fmp/FMPActivity;Lcom/ea/game/fmp/FMPActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncPostTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public asyncDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@@@@@@@@@@@@@@@ asyncDownload "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mAsyncDownloadTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const-string p1, "mAsyncDownloadTask is not null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAsyncDownloadTask address["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;-><init>(Lcom/ea/game/fmp/FMPActivity;Lcom/ea/game/fmp/FMPActivity$1;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity;->mAsyncDownloadTask:Landroid/os/AsyncTask;

    sget p1, Lcom/ea/game/fmp/FMPActivity;->activeInternetConnection:I

    iput p1, p0, Lcom/ea/game/fmp/FMPActivity;->mActiveInternetConnection:I

    return-void
.end method

.method public native asyncDownloadEvent(ZLjava/lang/String;)V
.end method

.method public cancelAsyncDownload()V
    .locals 2

    const-string v0, "@@@@@@@@@@@@@@@ cancelAsyncDownload"

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->mAsyncDownloadTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    const-string v0, "mAsyncDownloadTask is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method convertedTrimMemoryLevel(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    const-string p1, "default"

    return-object p1

    :cond_0
    const-string p1, "TRIM_MEMORY_COMPLETE"

    return-object p1

    :cond_1
    const-string p1, "TRIM_MEMORY_MODERATE"

    return-object p1

    :cond_2
    const-string p1, "TRIM_MEMORY_BACKGROUND"

    return-object p1

    :cond_3
    const-string p1, "TRIM_MEMORY_UI_HIDDEN"

    return-object p1

    :cond_4
    const-string p1, "TRIM_MEMORY_RUNNING_CRITICAL"

    return-object p1

    :cond_5
    const-string p1, "TRIM_MEMORY_RUNNING_LOW"

    return-object p1

    :cond_6
    const-string p1, "TRIM_MEMORY_RUNNING_MODERATE"

    return-object p1
.end method

.method public exitFMPApp()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method expansionFilesDelivered()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAvailableMemory()Landroid/app/ActivityManager$MemoryInfo;
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v1
.end method

.method public native getMusicOptions()I
.end method

.method public getSignInfo()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "SHA"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "My key exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public native initJNI()V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/ea/blast/MainActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->apkDowndload_filepath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->PublicApkUpdate(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->inAppBilling:Lcom/ea/InAppBilling/InAppBilling2;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/ea/InAppBilling/InAppBilling2;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/ea/Sentry/Sentry2;

    invoke-direct {v0}, Lcom/ea/Sentry/Sentry2;-><init>()V

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->sentry:Lcom/ea/Sentry/Sentry2;

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lcom/ea/Sentry/Sentry2;->Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-static {}, Lcom/ea/nimble/GameSdk;->getComponent()Lcom/ea/nimble/INimbleGameSdk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/ea/nimble/INimbleGameSdk;->init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/ea/nimble/MeasureSdk;->getComponent()Lcom/ea/nimble/INimbleMeasureSdk;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/INimbleMeasureSdk;->initApp(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_1
    const-string v0, "APP_LAUNCH_TYPE_TAG"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/ea/game/fmp/FMPActivity;->mLaunchType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sput-object p0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    const-string/jumbo p1, "wifi"

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    sput-object p1, Lcom/ea/game/fmp/FMPActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->initJNI()V

    sget-object p1, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    invoke-static {p1}, Lcom/ea/game/fmp/FMPPermissionUtil;->Initialize(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->StartApp()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/ea/game/fmp/FMPActivity;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity;->fabric:Lcom/ea/Fabric/Fabric2;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ea/Fabric/Fabric2;->Shutdown()V

    :cond_0
    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity;->sentry:Lcom/ea/Sentry/Sentry2;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ea/Sentry/Sentry2;->Shutdown()V

    :cond_1
    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity;->inAppBilling:Lcom/ea/InAppBilling/InAppBilling2;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ea/InAppBilling/InAppBilling2;->Shutdown()V

    iput-object v0, p0, Lcom/ea/game/fmp/FMPActivity;->inAppBilling:Lcom/ea/InAppBilling/InAppBilling2;

    :cond_2
    invoke-static {}, Lcom/ea/rwfilesystem/rwfilesystem;->Shutdown()V

    invoke-static {}, Lcom/ea/game/fmp/FMPPermissionUtil;->Release()V

    invoke-static {}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Shutdown()V

    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityDestroy(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/game/fmp/FMPActivity;->mCancelValidation:Z

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityPause(Landroid/app/Activity;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/ea/blast/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "ApkUpdate"

    const-string v1, "onRequestPermissionsResult: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p3, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V

    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->apkDowndload_filepath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->PublicApkUpdate(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/ea/game/fmp/FMPPermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onRestart()V

    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onResume()V

    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityResume(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FILE_NAME_TO_BE_DELETED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/game/fmp/FMPActivity;->deleteNotificationFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityRetainNonConfigurationInstance()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onStart()V

    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityStart(Landroid/app/Activity;)V

    invoke-virtual {p0, p0}, Lcom/ea/game/fmp/FMPActivity;->updateInternetConnectionType(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityStop(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;

    invoke-direct {v1, p0}, Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;-><init>(Lcom/ea/game/fmp/FMPActivity;)V

    invoke-virtual {p0, v1, v0}, Lcom/ea/game/fmp/FMPActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "## onTrimMemory level = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity;->reportSystemMemoryAlert(I)V

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->reportAppMemoryStatus()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityWindowFocusChanged(ZLandroid/app/Activity;)V

    return-void
.end method

.method public reportAppMemoryStatus()V
    .locals 0

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->reportDeviceMemory()V

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->reportAppVMMemory()V

    return-void
.end method

.method reportAppVMMemory()V
    .locals 11

    const-string v0, "## reportAppVMMemory"

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    mul-long v8, v8, v2

    div-long/2addr v8, v4

    long-to-double v8, v8

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v10, "App VM Memory Available : "

    invoke-direct {v0, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "% >> Free : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-wide/32 v9, 0x100000

    div-long/2addr v2, v9

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MB,  Total : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    div-long/2addr v4, v9

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MB,  Max : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    div-long/2addr v6, v9

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MB\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity;->fabric:Lcom/ea/Fabric/Fabric2;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ea/Fabric/Fabric2;->CrashlyticsSetCustomLogMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method reportDeviceMemory()V
    .locals 9

    const-string v0, "## reportDeviceMemory"

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ea/game/fmp/FMPActivity;->getAvailableMemory()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v6, 0x64

    mul-long v6, v6, v2

    div-long/2addr v6, v4

    long-to-double v6, v6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, "Device Memory Available : "

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "% >> Available : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-wide/32 v7, 0x100000

    div-long/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MB,  Total : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    div-long/2addr v4, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MB\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity;->fabric:Lcom/ea/Fabric/Fabric2;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ea/Fabric/Fabric2;->CrashlyticsSetCustomLogMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reportSystemMemoryAlert(I)V
    .locals 4

    const-string v0, "## reportSystemMemoryAlert"

    const-string v1, "FMPActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "onTrimMemory level : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity;->convertedTrimMemoryLevel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/game/fmp/FMPActivity;->fabric:Lcom/ea/Fabric/Fabric2;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ea/Fabric/Fabric2;->CrashlyticsSetCustomLogMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public native screenShotEvent(ILjava/lang/String;)V
.end method

.method public native shutdownJNI()V
.end method

.method public updateInternetConnectionType(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    sput p1, Lcom/ea/game/fmp/FMPActivity;->activeInternetConnection:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    sput p1, Lcom/ea/game/fmp/FMPActivity;->activeInternetConnection:I

    :goto_0
    return-void
.end method
