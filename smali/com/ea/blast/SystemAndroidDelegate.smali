.class public Lcom/ea/blast/SystemAndroidDelegate;
.super Ljava/lang/Object;
.source "SystemAndroidDelegate.java"


# static fields
.field private static final kInputDeviceStr:Ljava/lang/String; = "android.view.InputDevice"

.field private static wifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private kClass_InputDevice:Z

.field private mDeviceModel:Ljava/lang/String;

.field private final mMainActivity:Lcom/ea/blast/MainActivity;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iput-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/ea/blast/SystemAndroidDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sput-object v3, Lcom/ea/blast/SystemAndroidDelegate;->wifiManager:Landroid/net/wifi/WifiManager;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/ea/blast/SystemAndroidDelegate;->mDeviceModel:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v0, "android.view.InputDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method


# virtual methods
.method public GetAccelerometerCount()I
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public GetApiLevel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public GetApplicationVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public GetApplicationVersionCode()I
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public GetCameraCount()I
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.camera.front"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public GetChipset()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public GetCompassCount()I
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public GetDeviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public GetDeviceName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public GetDeviceUniqueId()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/ea/blast/SystemAndroidDelegate;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Lcom/ea/blast/SystemAndroidDelegate;->getAndroidID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method

.method public GetFirmware()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public GetGyroscopeCount()I
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public GetHardwareFloatingPointSupport()Ljava/lang/String;
    .locals 5

    const-string v0, "false"

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x200

    new-array v2, v2, [B

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v4, "[\\s\\S]*Features.*vfp(v3)?[\\s\\S]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public GetLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLocale()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public GetMicrophoneCount()I
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public GetPlatformVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public GetProcessorArchitecture()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetTouchPadCount()I
    .locals 6

    iget-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const v5, 0x100008

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public GetTouchScreenCount()I
    .locals 6

    iget-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const/16 v5, 0x1002

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public GetTrackBallCount()I
    .locals 6

    iget-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v4, v0, v1

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    const v5, 0x10004

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method public GetVibratorCount()I
    .locals 6

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "hasVibrator"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :catch_0
    return v1
.end method

.method public IntentView(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {p1, v0}, Lcom/ea/blast/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/blast/SystemAndroidDelegate;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
