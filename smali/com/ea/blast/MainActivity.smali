.class public Lcom/ea/blast/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/MainActivity$LifeCycleState;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/MainActivity"

.field protected static activityExists:Z

.field protected static activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

.field public static instance:Lcom/ea/blast/MainActivity;

.field public static mPendingNFCList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationOrientation:I

.field public mFrameLayout:Landroid/widget/FrameLayout;

.field public mGLView:Lcom/ea/blast/MainView;

.field private mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

.field private mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    new-instance v0, Lcom/ea/blast/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ea/blast/MainActivity$1;-><init>(Lcom/ea/blast/MainActivity;)V

    iput-object v0, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ForceHideVirtualKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public static GetInstance()Lcom/ea/blast/MainActivity;
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    return-object v0
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private SetCommonPreferences()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->setVolumeControlStream(I)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private initEAIO()V
    .locals 6

    :try_start_0
    const-string v0, "com.ea.EAIO.EAIO"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Startup"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to initialize EAIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initEAMIO()V
    .locals 6

    :try_start_0
    const-string v0, "com.ea.EAMIO.StorageDirectory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Startup"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception: Unable to initialize EAMIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initEAThread()V
    .locals 4

    :try_start_0
    const-string v0, "com.ea.EAThread.EAThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Init"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to initialize EAThread using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private shutdownEAIO()V
    .locals 4

    :try_start_0
    const-string v0, "com.ea.EAIO.EAIO"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Shutdown"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception: Unable to shutdown EAIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private shutdownEAMIO()V
    .locals 4

    :try_start_0
    const-string v0, "com.ea.EAMIO.StorageDirectory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Shutdown"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception: Unable to shutdown EAMIO using reflexion."

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private shutdownEAThread()V
    .locals 0

    return-void
.end method


# virtual methods
.method public IsActivityMultiWindowMode()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->isInMultiWindowMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsActivityStopped()Z
    .locals 2

    sget-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    sget-object v1, Lcom/ea/blast/MainActivity$LifeCycleState;->Stopped:Lcom/ea/blast/MainActivity$LifeCycleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsActivitySuspended()Z
    .locals 2

    sget-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    sget-object v1, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsAppInstalledOnSdCard()Z
    .locals 3

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public native NativeGetExitCode()I
.end method

.method public native NativeOnBackPressed()V
.end method

.method public native NativeOnCreate()V
.end method

.method public native NativeOnLowMemory()V
.end method

.method public native NativeOnMultiWindowFocusChanged(Z)V
.end method

.method public native NativeOnOrientationChanged()V
.end method

.method public native NativeOnPause()V
.end method

.method public native NativeOnResume(Z)V
.end method

.method public native NativeOnStop()V
.end method

.method public native NativeOnWindowFocusChanged(Z)V
.end method

.method public native NativeOsExit()V
.end method

.method protected ProcessNearFieldCommunicationIntent()V
    .locals 5

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    new-array v1, v1, [Landroid/nfc/NdefMessage;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Landroid/nfc/NdefMessage;

    aput-object v3, v1, v2

    sget-object v4, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->setIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public getDisplayHeight()I
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current display height= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return v0
.end method

.method public getDisplayWidth()I
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current display width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return v0
.end method

.method public getNaturalOrientation()I
    .locals 5

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v4, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "The device natural orientation is portrait."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return v3

    :cond_5
    const-string v0, "The device natural orientation is landscape."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return v2
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnOrientationChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate..."

    invoke-direct {p0, p1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    sget-boolean p1, Lcom/ea/blast/MainActivity;->activityExists:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOsExit()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->SetCommonPreferences()V

    sput-object p0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getRequestedOrientation()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getNaturalOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    :cond_1
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->initEAThread()V

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->initEAIO()V

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->initEAMIO()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnCreate()V

    new-instance p1, Lcom/ea/blast/MainView;

    invoke-direct {p1, p0}, Lcom/ea/blast/MainView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ea/blast/MainView;->setPreserveEGLContextOnPause(Z)V

    iget-object p1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {p1, v0}, Lcom/ea/blast/MainView;->setFocusable(Z)V

    iget-object p1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {p1, v0}, Lcom/ea/blast/MainView;->setFocusableInTouchMode(Z)V

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->setContentView(Landroid/view/View;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, p1}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-direct {p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;-><init>()V

    iput-object p1, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    new-instance p1, Lcom/ea/blast/MotionEventAndroid;

    invoke-direct {p1}, Lcom/ea/blast/MotionEventAndroid;-><init>()V

    iput-object p1, p0, Lcom/ea/blast/MainActivity;->mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

    sput-boolean v0, Lcom/ea/blast/MainActivity;->activityExists:Z

    :goto_0
    const-string p1, "...onCreate"

    invoke-direct {p0, p1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const-string v0, "onDestroy..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOsExit()V

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->shutdownEAMIO()V

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->shutdownEAIO()V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onDestroy()V

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->shutdownEAThread()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "...onDestroy"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeGetExitCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MotionEventAndroid;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    const-string v0, "onLowMemory"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnLowMemory()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMultiWindowModeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivitySuspended()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->ProcessNearFieldCommunicationIntent()V

    sget-object p1, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object p1, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnResume(Z)V

    iget-object p1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {p1}, Lcom/ea/blast/MainView;->onResume()V

    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->hasWindowFocus()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnMultiWindowFocusChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnPause()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->hasWindowFocus()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnResume(Z)V

    :goto_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const-string v0, "onPause..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivityMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call native pause"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->ForceHideVirtualKeyboard()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnPause()V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "...onPause"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const-string v0, "onResume..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivityMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call native resume"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->ProcessNearFieldCommunicationIntent()V

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->NativeOnResume(Z)V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onResume()V

    :cond_0
    const-string v0, "...onResume"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "onSaveInstanceState"

    invoke-direct {p0, p1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const-string v0, "onStart..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivityMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "call native start"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->ProcessNearFieldCommunicationIntent()V

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->hasWindowFocus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->NativeOnResume(Z)V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onResume()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    :cond_1
    :goto_0
    const-string v0, "...onStart"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const-string v0, "onStop..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivityMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "call native stop"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->ForceHideVirtualKeyboard()V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnPause()V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onPause()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Stopped:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnStop()V

    :goto_0
    const-string v0, "...onStop"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mMotionEvent:Lcom/ea/blast/MotionEventAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MotionEventAndroid;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivityMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->IsActivitySuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->ProcessNearFieldCommunicationIntent()V

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    sput-object v0, Lcom/ea/blast/MainActivity;->activityState:Lcom/ea/blast/MainActivity$LifeCycleState;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->NativeOnResume(Z)V

    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onResume()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnMultiWindowFocusChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnWindowFocusChanged(Z)V

    :goto_0
    return-void
.end method
