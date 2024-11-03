.class public Lcom/ea/nimble/NimbleMeasureSdk;
.super Lcom/ea/nimble/Component;
.source "NimbleMeasureSdk.java"

# interfaces
.implements Lcom/ea/nimble/INimbleMeasureSdk;
.implements Lcom/ea/nimble/LogSource;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NimbleMeasureSdk"

.field private static instance:Lcom/ea/nimble/NimbleMeasureSdk;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

.field private mState:Lcom/ea/nimble/INimbleMeasureSdk$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ea/nimble/NimbleMeasureSdk;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleMeasureSdk;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->instance:Lcom/ea/nimble/NimbleMeasureSdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    sget-object v0, Lcom/ea/nimble/INimbleMeasureSdk$State;->NONE:Lcom/ea/nimble/INimbleMeasureSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    return-void
.end method

.method static synthetic access$002(Lcom/ea/nimble/NimbleMeasureSdk;Lcom/ea/nimble/INimbleMeasureSdk$State;)Lcom/ea/nimble/INimbleMeasureSdk$State;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/NimbleMeasureSdk;)Lcom/ea/games/measuresdk/MeasureSdkInterface;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    return-object p0
.end method

.method public static getInstance()Lcom/ea/nimble/NimbleMeasureSdk;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->instance:Lcom/ea/nimble/NimbleMeasureSdk;

    return-object v0
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method protected createDummySdk()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "try to create DummyMeasureSdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ea/nimble/DummyMeasureSdk;

    invoke-direct {v0}, Lcom/ea/nimble/DummyMeasureSdk;-><init>()V

    check-cast v0, Lcom/ea/games/measuresdk/MeasureSdkInterface;

    iput-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create DummyMeasureSdk failed, reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public createSdk(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MeasureSDK has been created."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "MeasureSDK.properties"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/NimbleMeasureSdk;->createSdk(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create MeasureSDK failed, reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMeasureSdk;->createDummySdk()V

    :cond_1
    return-void
.end method

.method public createSdk(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MeasureSDK has been created."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "ClassName"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/games/measuresdk/MeasureSdkInterface;

    iput-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create MeasureSDK failed, reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.measuresdk"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "NimbleMeasureSdk"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULLSDK"

    :goto_0
    return-object v0
.end method

.method public getSdk()Lcom/ea/games/measuresdk/MeasureSdkInterface;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    return-object v0
.end method

.method public getState()Lcom/ea/nimble/INimbleMeasureSdk$State;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    return-object v0
.end method

.method public initApp(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleMeasureSdk$State;->NONE:Lcom/ea/nimble/INimbleMeasureSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SDK is already inited."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/ea/nimble/INimbleMeasureSdk$State;->INITING:Lcom/ea/nimble/INimbleMeasureSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMeasureSdk;->getSdk()Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleMeasureSdk$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleMeasureSdk$1;-><init>(Lcom/ea/nimble/NimbleMeasureSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->registerInitCallback(Lcom/ea/games/measuresdk/SdkCallback;)Lcom/ea/games/measuresdk/MeasureSdkInterface;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMeasureSdk;->getSdk()Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->initApp(Landroid/content/Context;Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMeasureSdk;->getSdk()Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, v0, p2}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->startWork(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    sget-object v0, Lcom/ea/nimble/INimbleMeasureSdk$State;->INITED:Lcom/ea/nimble/INimbleMeasureSdk$State;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object p1, Lcom/ea/nimble/INimbleMeasureSdk$State;->DESTROYING:Lcom/ea/nimble/INimbleMeasureSdk$State;

    iput-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    invoke-interface {p1}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->destory()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    sget-object v0, Lcom/ea/nimble/INimbleMeasureSdk$State;->INITED:Lcom/ea/nimble/INimbleMeasureSdk$State;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    invoke-interface {p1}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->pause()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    sget-object v0, Lcom/ea/nimble/INimbleMeasureSdk$State;->INITED:Lcom/ea/nimble/INimbleMeasureSdk$State;

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mSdk:Lcom/ea/games/measuresdk/MeasureSdkInterface;

    invoke-interface {p1}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->resume()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method protected restore()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method protected setup()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/NimbleMeasureSdk;->createSdk(Landroid/content/Context;)V

    return-void
.end method

.method public trackEvent(Lcom/ea/games/measuresdk/MeasureEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleMeasureSdk;->mState:Lcom/ea/nimble/INimbleMeasureSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleMeasureSdk$State;->INITED:Lcom/ea/nimble/INimbleMeasureSdk$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ea/nimble/NimbleMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SDK has not been inited."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMeasureSdk;->getSdk()Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->trackEvent(Lcom/ea/games/measuresdk/MeasureEvent;)V

    return-void
.end method
