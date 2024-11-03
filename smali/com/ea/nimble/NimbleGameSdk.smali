.class public Lcom/ea/nimble/NimbleGameSdk;
.super Lcom/ea/nimble/Component;
.source "NimbleGameSdk.java"

# interfaces
.implements Lcom/ea/nimble/INimbleGameSdk;
.implements Lcom/ea/nimble/LogSource;
.implements Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.gamesdk.default"

.field private static final LOG_TAG:Ljava/lang/String; = "NimbleGameSdk"

.field private static instance:Lcom/ea/nimble/NimbleGameSdk;

.field private static final mDefaultAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

.field private static final mDefaultExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

.field private static final mDefaultLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

.field private static final mDefaultNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;


# instance fields
.field private mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

.field private mExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

.field private mLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

.field private mNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

.field private mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

.field private mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

.field private mState:Lcom/ea/nimble/INimbleGameSdk$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ea/nimble/NimbleGameSdk$1;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleGameSdk$1;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    new-instance v0, Lcom/ea/nimble/NimbleGameSdk$2;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleGameSdk$2;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    new-instance v0, Lcom/ea/nimble/NimbleGameSdk$3;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleGameSdk$3;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    new-instance v0, Lcom/ea/nimble/NimbleGameSdk$4;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleGameSdk$4;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->mDefaultNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    sget-object v0, Lcom/ea/nimble/INimbleGameSdk$State;->NONE:Lcom/ea/nimble/INimbleGameSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/NimbleGameSdk;->mNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$IExitCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/NimbleGameSdk;->mExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ea/nimble/NimbleGameSdk;Lcom/ea/nimble/INimbleGameSdk$State;)Lcom/ea/nimble/INimbleGameSdk$State;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/NimbleGameSdk;->mLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    return-object p0
.end method

.method public static getInstance()Lcom/ea/nimble/NimbleGameSdk;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->instance:Lcom/ea/nimble/NimbleGameSdk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ea/nimble/NimbleGameSdk;

    invoke-direct {v0}, Lcom/ea/nimble/NimbleGameSdk;-><init>()V

    sput-object v0, Lcom/ea/nimble/NimbleGameSdk;->instance:Lcom/ea/nimble/NimbleGameSdk;

    :cond_0
    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->instance:Lcom/ea/nimble/NimbleGameSdk;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->getInstance()Lcom/ea/nimble/NimbleGameSdk;

    move-result-object v0

    const-string v1, "com.ea.nimble.gamesdk.default"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0, p1, p2}, Lcom/ea/games/gamesdk/GameSdkInterface;->addAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public auth(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    new-instance v1, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v2, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->ERROR:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v1, v2, v0}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;->handleAuth(Lcom/ea/nimble/INimbleGameSdk$Result;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/ea/games/gamesdk/AuthenticationInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/games/gamesdk/AuthenticationInfo;

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->auth(Landroid/app/Activity;Lcom/ea/games/gamesdk/AuthenticationInfo;)V

    return-void
.end method

.method protected cleanup()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    return-void
.end method

.method public createSdk(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "GameSDK.properties"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/NimbleGameSdk;->createSdk(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create GameSDK failed, reason: "

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
    .locals 6

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    const-string v0, "ClassName"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "getInstance"

    if-ge v2, v4, :cond_2

    :try_start_1
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lcom/ea/games/gamesdk/GameSdkInterface;

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    instance-of v0, p1, Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/ea/games/gamesdk/GameSdkExtendFake;

    invoke-direct {p1}, Lcom/ea/games/gamesdk/GameSdkExtendFake;-><init>()V

    :goto_2
    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create GameSDK success, sdk name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create GameSDK failed, reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_5
    :goto_4
    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "GameSdk has been created."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .locals 4

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SDK has not been inited."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    new-instance v2, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v3, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->ERROR:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v2, v3, v1}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/ea/nimble/INimbleGameSdk$IExitCallback;->handleExit(Lcom/ea/nimble/INimbleGameSdk$Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->exit(Landroid/app/Activity;)V

    return-void
.end method

.method public exitApp()V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->exitApp(Landroid/app/Activity;)V

    return-void
.end method

.method public getAdditionalInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0}, Lcom/ea/games/gamesdk/GameSdkInterface;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.gamesdk.default"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0}, Lcom/ea/games/gamesdk/GameSdkInterface;->getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/games/gamesdk/GameSdkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NULLSDK"

    :goto_0
    return-object v0
.end method

.method public getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    return-object v0
.end method

.method public getSdkExtend()Lcom/ea/games/gamesdk/GameSdkExtendInterface;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    return-object v0
.end method

.method public getState()Lcom/ea/nimble/INimbleGameSdk$State;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    return-object v0
.end method

.method public hasExit()Z
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0}, Lcom/ea/games/gamesdk/GameSdkInterface;->hasExit()Z

    move-result v0

    return v0
.end method

.method public hasLogout()Z
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0}, Lcom/ea/games/gamesdk/GameSdkInterface;->hasLogout()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->NONE:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SDK is already inited."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/ea/nimble/INimbleGameSdk$State;->INITING:Lcom/ea/nimble/INimbleGameSdk$State;

    iput-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleGameSdk;->getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$12;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$12;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerInitCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$11;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$11;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerDestoryCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$10;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$10;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerLoginCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$9;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$9;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerLogoutCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$8;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$8;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerAuthCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$7;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$7;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerExitCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$6;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$6;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerNotifyCallback(Lcom/ea/games/gamesdk/SdkCallbackWithType;)Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/NimbleGameSdk$5;

    invoke-direct {v1, p0}, Lcom/ea/nimble/NimbleGameSdk$5;-><init>(Lcom/ea/nimble/NimbleGameSdk;)V

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->registerPushOptionCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleGameSdk;->getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ea/games/gamesdk/GameSdkInterface;->init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public initApp(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleGameSdk;->getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->initApp(Landroid/content/Context;)V

    return-void
.end method

.method public login()V
    .locals 4

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SDK has not been inited."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    new-instance v2, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v3, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->ERROR:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v2, v3, v1}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;->handleLogin(Lcom/ea/nimble/INimbleGameSdk$Result;Lcom/ea/games/gamesdk/AccountInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public logout()V
    .locals 4

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SDK has not been inited."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    new-instance v2, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v3, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->ERROR:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v2, v3, v1}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;->handleLogout(Lcom/ea/nimble/INimbleGameSdk$Result;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/GameSdkInterface;->logout(Landroid/app/Activity;)V

    return-void
.end method

.method public notifySdk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p2, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/ea/nimble/NimbleGameSdk;->mNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    new-instance v1, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v2, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->ERROR:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v1, v2, v0}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {p2, v1, p1}, Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;->handleNotify(Lcom/ea/nimble/INimbleGameSdk$Result;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/ea/games/gamesdk/GameSdkInterface;->notifySdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->onDestory(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mState:Lcom/ea/nimble/INimbleGameSdk$State;

    sget-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SDK has not been inited."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onRawActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdk:Lcom/ea/games/gamesdk/GameSdkInterface;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/ea/games/gamesdk/GameSdkInterface;->onCreate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRawActivityRestart(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onRestart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRawActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk;->mSdkExtend:Lcom/ea/games/gamesdk/GameSdkExtendInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ea/games/gamesdk/GameSdkExtendInterface;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public registerAccountCallback(Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;)Lcom/ea/nimble/INimbleGameSdk;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->mDefaultAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mAccountCallback:Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;

    :goto_0
    return-object p0
.end method

.method public registerExitCallback(Lcom/ea/nimble/INimbleGameSdk$IExitCallback;)Lcom/ea/nimble/INimbleGameSdk;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->mDefaultExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mExitCallback:Lcom/ea/nimble/INimbleGameSdk$IExitCallback;

    :goto_0
    return-object p0
.end method

.method public registerLifecycleCallback(Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;)Lcom/ea/nimble/INimbleGameSdk;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->mDefaultLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mLifecycleCallback:Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;

    :goto_0
    return-object p0
.end method

.method public registerNotifyCallback(Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;)Lcom/ea/nimble/INimbleGameSdk;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ea/nimble/NimbleGameSdk;->mDefaultNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk;->mNotifyCallback:Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    :goto_0
    return-object p0
.end method

.method protected restore()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

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

    invoke-virtual {p0, v0}, Lcom/ea/nimble/NimbleGameSdk;->createSdk(Landroid/content/Context;)V

    return-void
.end method
