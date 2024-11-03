.class public Lcom/ea/nimble/NimbleMarketingSdk;
.super Lcom/ea/nimble/Component;
.source "NimbleMarketingSdk.java"

# interfaces
.implements Lcom/ea/nimble/INimbleMarketingSdk;
.implements Lcom/ea/nimble/LogSource;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NimbleMarketingSdk"

.field private static instance:Lcom/ea/nimble/NimbleMarketingSdk;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

.field private mState:Lcom/ea/nimble/INimbleMarketingSdk$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ea/nimble/NimbleMarketingSdk;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleMarketingSdk;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleMarketingSdk;->instance:Lcom/ea/nimble/NimbleMarketingSdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    sget-object v0, Lcom/ea/nimble/INimbleMarketingSdk$State;->NONE:Lcom/ea/nimble/INimbleMarketingSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    return-void
.end method

.method static synthetic access$002(Lcom/ea/nimble/NimbleMarketingSdk;Lcom/ea/nimble/INimbleMarketingSdk$State;)Lcom/ea/nimble/INimbleMarketingSdk$State;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/NimbleMarketingSdk;)Lcom/ea/games/marketingsdk/MarketingSdkInterface;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    return-object p0
.end method

.method public static getInstance()Lcom/ea/nimble/NimbleMarketingSdk;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleMarketingSdk;->instance:Lcom/ea/nimble/NimbleMarketingSdk;

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

.method public createSdk(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "MarketingSDK.properties"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/NimbleMarketingSdk;->createSdk(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create MarketingSDK failed, reason: "

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

.method public createSdk(Ljava/util/Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MarketingSDK has been created."

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

    check-cast p1, Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    iput-object p1, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create MarketingSDK failed, reason: "

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

    const-string v0, "com.ea.nimble.marketingsdk"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "NimbleMarketingSdk"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULLSDK"

    :goto_0
    return-object v0
.end method

.method public getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    return-object v0
.end method

.method public getState()Lcom/ea/nimble/INimbleMarketingSdk$State;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    return-object v0
.end method

.method public initApp(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleMarketingSdk$State;->NONE:Lcom/ea/nimble/INimbleMarketingSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SDK is already inited."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/ea/nimble/INimbleMarketingSdk$State;->INITING:Lcom/ea/nimble/INimbleMarketingSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleMarketingSdk$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleMarketingSdk$1;-><init>(Lcom/ea/nimble/NimbleMarketingSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->registerInitCallback(Lcom/ea/games/marketingsdk/SdkCallback;)Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->initApp(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, v0, p2}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->startWork(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleMarketingSdk$State;->INITED:Lcom/ea/nimble/INimbleMarketingSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/ea/nimble/INimbleMarketingSdk$State;->DESTROYING:Lcom/ea/nimble/INimbleMarketingSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->destory(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleMarketingSdk$State;->INITED:Lcom/ea/nimble/INimbleMarketingSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->pause(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mState:Lcom/ea/nimble/INimbleMarketingSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleMarketingSdk$State;->INITED:Lcom/ea/nimble/INimbleMarketingSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleMarketingSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleMarketingSdk;->mSdk:Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->resume(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->start(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->stop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected restore()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public setUserCohort(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->setUserCohort(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->setUserID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserLevel(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->setUserLevel(I)V

    :cond_0
    return-void
.end method

.method protected setup()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/NimbleMarketingSdk;->createSdk(Landroid/content/Context;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 15

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    invoke-interface/range {v1 .. v14}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public trackPurchase(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleMarketingSdk;->getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ea/games/marketingsdk/MarketingSdkInterface;->trackPurchase(Ljava/lang/String;Ljava/lang/String;D)V

    :cond_0
    return-void
.end method
