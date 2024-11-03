.class public Lcom/beetalk/sdk/GGLoginSession;
.super Ljava/lang/Object;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/GGLoginSession$Builder;,
        Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;,
        Lcom/beetalk/sdk/GGLoginSession$SessionCallback;,
        Lcom/beetalk/sdk/GGLoginSession$SessionProvider;,
        Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;
    }
.end annotation


# static fields
.field private static final APP_PLATFORM_BIND_CACHE_KEY:Ljava/lang/String; = "com.garena.msdk.app_platform_bind_token"

.field private static final BIND_CACHE_KEY:Ljava/lang/String; = "com.garena.msdk.bind_token"

.field private static mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

.field private static mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

.field private static mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private applicationKey:Ljava/lang/String;

.field private cache:Lcom/beetalk/sdk/cache/StorageCache;

.field private errorCode:I

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private final mode:Lcom/beetalk/sdk/AuthMode;

.field private final requestCode:I

.field private final sessionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/GGLoginSession$SessionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field private sessionStatus:Lcom/beetalk/sdk/SessionStatus;

.field private tokenValue:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p7, :cond_1

    goto :goto_0

    :cond_1
    new-instance p7, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {p7, p1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object p7, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    invoke-virtual {p7}, Lcom/beetalk/sdk/cache/StorageCache;->getToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object p7

    invoke-static {p6, p7}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->isEqualToSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/data/TokenProvider;)Z

    move-result p7

    if-eqz p7, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->hasAllFields()Z

    move-result p7

    if-eqz p7, :cond_2

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    :cond_2
    const-string p1, "applicationId"

    invoke-static {p2, p1}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->mode:Lcom/beetalk/sdk/AuthMode;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    iput p5, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    iput-object p6, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    :goto_1
    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;Lcom/beetalk/sdk/GGLoginSession$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/beetalk/sdk/GGLoginSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshFacebookToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$202(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/SessionStatus;)Lcom/beetalk/sdk/SessionStatus;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    return-void
.end method

.method static synthetic access$402(Lcom/beetalk/sdk/GGLoginSession;I)I
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    return p1
.end method

.method static synthetic access$500(Lcom/beetalk/sdk/GGLoginSession;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/beetalk/sdk/GGLoginSession;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private addCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private checkIfLoginWorks(Lcom/beetalk/sdk/AuthRequest;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->getLoginActivityIntent(Lcom/beetalk/sdk/AuthRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    invoke-direct {v1, v0}, Lcom/beetalk/sdk/GGLoginSession;->validIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getRequestCode()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static checkSessionValidity()Z
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static declared-synchronized clearAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    const/4 v1, 0x0

    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clearSession()Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->clearSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clearSession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 3

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->logout()V

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    const/4 v1, 0x0

    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v2, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    :cond_1
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    :cond_2
    new-instance v1, Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-direct {v1}, Lcom/beetalk/sdk/cache/RedeemCache;-><init>()V

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/RedeemCache;->clearMsdkTokenSession()V

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/RedeemCache;->clearRedeemCache()V

    invoke-static {}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->getInstance()Lcom/beetalk/sdk/cache/PaymentChannelStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/cache/PaymentChannelStorage;->clear()V

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/beetalk/sdk/facebook/FBClient;->clearSession(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/SessionManager;->clearActiveSession()V

    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKUtils;->logout(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/beetalk/sdk/line/LineUtils;->logout(Landroid/content/Context;)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/garena/pay/android/helper/GMSHelper;->getCurrentGooglePlayServiceState(Landroid/content/Context;)Lcom/garena/android/model/Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/garena/android/model/Result;->isSucceed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->getGoogleSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Start to sign out Google account."

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda4;-><init>(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/garena/pay/android/helper/GMSHelper;->printGMSAvailabilityResult(Lcom/garena/android/model/Result;)V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;->onComplete()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static declared-synchronized clearThirdPartySession(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->invalidateCache()V

    const/4 v1, 0x0

    sput-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    :cond_0
    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->clearSessionInternal(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthRequest;->setApplicationId(Ljava/lang/String;)V

    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthRequest;->setRequestCode(I)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthRequest;->setApplicationKey(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->checkIfLoginWorks(Lcom/beetalk/sdk/AuthRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    iget-object v1, v1, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v3, v2, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    iget-object p1, p1, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    new-instance v3, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string v4, "Failed to Validate the authenticity of the internal package.Did you forget to include the BTLoginActivity in your AndroidManifest.xml"

    invoke-direct {v3, v4}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1, p1, v3}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static forceOpenSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/AuthRequest;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/AuthRequest;->setSession(Lcom/beetalk/sdk/GGLoginSession;)V

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "[forceOpenSession] Callback Array Size"

    invoke-static {p0, p1, v1}, Lcom/beetalk/sdk/helper/Validate;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    return-object p0
.end method

.method public static declared-synchronized getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLoginActivityIntent(Lcom/beetalk/sdk/AuthRequest;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/beetalk/sdk/BTLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_extra"

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthRequest;->getAuthClientRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private inspectToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 5

    sget-boolean v0, Lcom/beetalk/sdk/SDKConstants$DEBUG;->FORCE_TOKEN_REFRESH:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void

    :cond_0
    sget-boolean v0, Lcom/beetalk/sdk/SDKConstants$DEBUG;->TEST_REFRESH_TOKEN_FAIL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    invoke-direct {p0, p1, p0, v1}, Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    sget-object v2, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v0

    add-int/lit16 v0, v0, -0xe10

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getLastInspectTime()I

    move-result v2

    if-gt v0, v2, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v2

    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/AuthToken;->getLastInspectTime()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "no need for another inspection - last %d minutes ago"

    invoke-static {v2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, p0, v1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void

    :cond_3
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    :cond_4
    return-void
.end method

.method private static isSessionValid(Lcom/beetalk/sdk/GGLoginSession;)Z
    .locals 2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$clearSessionInternal$0(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Google account signed out"

    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;->onComplete()V

    :cond_0
    return-void
.end method

.method private notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession$1;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static obtainActiveAppPlatformBindSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/AuthRequest;

    const v1, 0xdbed

    const-string v2, ""

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveAppPlatformBindSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0
.end method

.method private static obtainActiveAppPlatformBindSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const-string v1, "com.garena.msdk.app_platform_bind_token"

    if-eqz v0, :cond_0

    new-instance v2, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v2, p0, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    new-instance v2, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v2, p0, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0
.end method

.method public static obtainActiveBindSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/AuthRequest;

    const v1, 0xdbec

    const-string v2, ""

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveBindSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0
.end method

.method private static obtainActiveBindSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const-string v1, "com.garena.msdk.bind_token"

    if-eqz v0, :cond_0

    new-instance v2, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v2, p0, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    new-instance v2, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v2, p0, v1}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0
.end method

.method private static obtainActiveLoginSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0
.end method

.method public static obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/AuthRequest;

    invoke-direct {v0, p0, p2}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {p0, p1, p2, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveLoginSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    return-object p0
.end method

.method private static obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/AuthRequest;Lcom/beetalk/sdk/GGLoginSession;)Lcom/beetalk/sdk/GGLoginSession;
    .locals 2

    invoke-static {p4}, Lcom/beetalk/sdk/GGLoginSession;->isSessionValid(Lcom/beetalk/sdk/GGLoginSession;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    iget-object p1, p4, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {p1}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p4, p2}, Lcom/beetalk/sdk/GGLoginSession;->inspectToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-object p4

    :cond_1
    new-instance p0, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string p1, "Session is awaiting fulfillment. Please destroy before requesting for a new Session"

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p4, p0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_7

    if-nez p4, :cond_3

    new-instance p1, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p4

    :cond_3
    iget-object p0, p4, Lcom/beetalk/sdk/GGLoginSession;->lock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, p4, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    iput-object p1, p4, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p4, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    sget-object p2, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    invoke-direct {p4, p1, p2, v1}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p4, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-ne p0, p1, :cond_6

    invoke-virtual {p3, p4}, Lcom/beetalk/sdk/AuthRequest;->setSession(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-direct {p4, p3}, Lcom/beetalk/sdk/GGLoginSession;->commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V

    :cond_6
    return-object p4

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    :goto_0
    return-object v1
.end method

.method private publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionCallbacks:Ljava/util/List;

    monitor-enter v0

    if-ne p1, p2, :cond_0

    :try_start_0
    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Lcom/beetalk/sdk/GGLoginSession$10;

    invoke-direct {p1, p0, p3}, Lcom/beetalk/sdk/GGLoginSession$10;-><init>(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    iget-object p2, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    invoke-static {p2, p1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private refreshFacebookToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z
    .locals 9

    const-string v0, "open_id"

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshGarenaToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$9;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/GGLoginSession$9;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return v4

    :cond_2
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "gop"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://auth/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v5}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v6}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v5, v6}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeFacebookTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "expiry_time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "platform"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    new-instance v7, Lcom/beetalk/sdk/data/AuthToken;

    sget-object v8, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-direct {v7, v3, v8, v1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    iput-object v7, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-ne v1, v4, :cond_4

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v7, v1}, Lcom/beetalk/sdk/data/AuthToken;->setTokenProvider(Lcom/beetalk/sdk/data/TokenProvider;)V

    :cond_4
    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v1, v6}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-direct {p0, p1, p0, v5}, Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return v4

    :cond_5
    const-string p1, "error"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "invalid_grant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    invoke-static {v5}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    :goto_0
    sget-object p1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_2
    return v2
.end method

.method private refreshGarenaToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z
    .locals 6

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    return v1

    :cond_1
    const-string v2, "open_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const-string v5, "access_token"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/beetalk/sdk/data/AuthToken;->setAuthToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const-string v5, "refresh_token"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const-string v5, "expiry_time"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v2}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    const-string v0, "refresh token successful"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    const-string p1, "error"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "refresh error %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "invalid_grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    goto :goto_0

    :cond_3
    const-string v0, "error_user_ban"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_5
    :goto_0
    return v1
.end method

.method private refreshGuestToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/garena/pay/android/GGErrorCode;
    .locals 4

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->refreshTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    :cond_2
    const-string v1, "open_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/beetalk/sdk/data/AuthToken;->setAuthToken(Ljava/lang/String;)V

    const-string v2, "refresh_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    const-string v2, "expiry_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/cache/StorageCache;->putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V

    const-string p1, "refresh token successful"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_3
    const-string p1, "error"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "refresh error %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "invalid_grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    :cond_4
    const-string v0, "error_user_ban"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    :cond_5
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_6
    :goto_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    :cond_7
    :goto_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p1
.end method

.method private refreshToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshGarenaToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshFacebookToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result p1

    return p1
.end method

.method public static removeInvalidToken()V
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    return-void
.end method

.method private removeToken()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setAuthToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    if-eqz v0, :cond_1

    const-string v1, "com.garena.msdk.token"

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/StorageCache;->removeGuestToken()V

    :cond_1
    return-void
.end method

.method private static runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static setCallback(Landroid/content/Context;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    if-nez v0, :cond_0

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    :cond_0
    sget-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->addCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static declared-synchronized setCurrentAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mAppPlatformBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCurrentBindSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mBindSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private validIntent(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCache()Lcom/beetalk/sdk/cache/StorageCache;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    return v0
.end method

.method public getMode()Lcom/beetalk/sdk/AuthMode;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->mode:Lcom/beetalk/sdk/AuthMode;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPlatform()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    return v0
.end method

.method public getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object v0
.end method

.method public getSessionStatus()Lcom/beetalk/sdk/SessionStatus;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-object v0
.end method

.method public getTokenValue()Lcom/beetalk/sdk/data/AuthToken;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    return-object v0
.end method

.method public hasCachedTokenExpired()Z
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v0

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v1}, Lcom/beetalk/sdk/data/AuthToken;->getExpiryTimestamp()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method inspectGuestToken(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public invalidateCache()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/StorageCache;->clearSession()V

    :cond_0
    return-void
.end method

.method synthetic lambda$inspectGuestToken$4$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getExpiryTimestamp()I

    move-result v0

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x2a300

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshGuestToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    if-ne v0, v1, :cond_1

    const-string v1, "refresh guest token ok - no need for inspection"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/beetalk/sdk/GGLoginSession$2;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/beetalk/sdk/GGLoginSession$2;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V

    invoke-static {v1, v3}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v2

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    div-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "%d hours until the token expires"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->inspectTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$3;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v2

    :cond_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inspection guest token error %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "invalid_grant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshGuestToken(Lcom/beetalk/sdk/data/AuthToken;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/beetalk/sdk/GGLoginSession$4;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/beetalk/sdk/GGLoginSession$4;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V

    invoke-static {v1, v3}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$5;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string v1, "platform"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "open_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_1
    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/beetalk/sdk/GGLoginSession$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$6;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v5, v6}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/beetalk/sdk/GGLoginSession$7;

    invoke-direct {v6, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$7;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v5, v6}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    const-string/jumbo v5, "verify the open id %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/beetalk/sdk/GGLoginSession$8;-><init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->runThroughHandler(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-object v2
.end method

.method synthetic lambda$inspectToken$2$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-object v0
.end method

.method synthetic lambda$inspectToken$3$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getExpiryTimestamp()I

    move-result v0

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v1

    sub-int/2addr v0, v1

    const v1, 0x2a300

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "refresh token ok - no need for inspection"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-array v1, v2, [Ljava/lang/Object;

    div-int/lit16 v0, v0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "%d hours until the token expires"

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->inspectTokenSync(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    goto/16 :goto_2

    :cond_2
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inspection error %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "invalid_grant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_3
    const-string v1, "error_token_session"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->removeInvalidToken()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    return-object v3

    :cond_5
    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    goto :goto_2

    :cond_6
    const-string v1, "platform"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "open_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :try_start_1
    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v5}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v5}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    sget-object v5, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    iput-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const-string v6, "expiry_time"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    iget-object v5, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v6, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v5, v6}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    :goto_1
    const-string/jumbo v5, "verify the open id %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v7}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_8
    :goto_2
    invoke-direct {p0, p1, p0, v3}, Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-object v3
.end method

.method synthetic lambda$logout$1$com-beetalk-sdk-GGLoginSession()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->logoutSync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public logout()V
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;-><init>(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 2

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onActivityResult"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/beetalk/sdk/GGLoginSession;->requestCode:I

    if-eq p2, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-eqz p4, :cond_5

    const/4 p2, -0x1

    if-ne p3, p2, :cond_5

    const-class p2, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter p2

    :try_start_0
    const-string p3, "onActivityResult: success"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p3, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    if-nez p4, :cond_1

    monitor-exit p2

    return v0

    :cond_1
    const-string v1, "auth_result"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    check-cast p4, Lcom/beetalk/sdk/AuthClient$Result;

    if-eqz p4, :cond_4

    iget-object v1, p4, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p4, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    iget-object p4, p4, Lcom/beetalk/sdk/AuthClient$Result;->openId:Ljava/lang/String;

    invoke-virtual {v0, p4}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p4, v0}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_1
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_2
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_3
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_4
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_5
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_6
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_7
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_8
    sget-object p4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    :goto_0
    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p4, v0, :cond_3

    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->tokenValue:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p4, v0}, Lcom/beetalk/sdk/cache/StorageCache;->putGuestToken(Lcom/beetalk/sdk/data/AuthToken;)V

    :cond_3
    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    invoke-direct {p0, p3, p4, p1}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    monitor-exit p2

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    monitor-exit p2

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    if-nez p3, :cond_9

    const-class p2, Lcom/beetalk/sdk/GGLoginSession;

    monitor-enter p2

    :try_start_1
    iget-object p3, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    const-string v1, "auth_result"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p4

    check-cast p4, Lcom/beetalk/sdk/AuthClient$Result;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p4

    :try_start_3
    invoke-static {p4}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    move-object p4, p1

    :goto_2
    if-eqz p4, :cond_6

    iget v1, p4, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    if-nez v1, :cond_6

    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    goto :goto_4

    :cond_6
    if-nez p4, :cond_7

    sget-object p4, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_3

    :cond_7
    iget p4, p4, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    :goto_3
    iput p4, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p4, v1, :cond_8

    invoke-direct {p0}, Lcom/beetalk/sdk/GGLoginSession;->removeToken()V

    :cond_8
    sget-object p4, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    :goto_4
    iget-object p4, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    invoke-direct {p0, p3, p4, p1}, Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V

    monitor-exit p2

    goto :goto_5

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_9
    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshAccessToken(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->REFRESH_TOKEN:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    new-instance v0, Lcom/beetalk/sdk/AuthRequest;

    invoke-direct {v0, p1, p2}, Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession;->mLoginSessionInstance:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthRequest;->setSession(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->commenceAuth(Lcom/beetalk/sdk/AuthRequest;)V

    return-void
.end method

.method public setApplicationKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->applicationKey:Ljava/lang/String;

    return-void
.end method

.method public setCache(Lcom/beetalk/sdk/cache/StorageCache;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession;->errorCode:I

    return-void
.end method

.method public setSessionStatus(Lcom/beetalk/sdk/SessionStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession;->sessionStatus:Lcom/beetalk/sdk/SessionStatus;

    return-void
.end method
