.class Lcom/ea/nimble/BaseCore;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/BaseCore$State;
    }
.end annotation


# static fields
.field public static final CHIMBLE_BASE_SETTING:Ljava/lang/String; = "setting::base"

.field public static final NIMBLE_COMPONENTS:[Ljava/lang/String;

.field public static final NIMBLE_COMPONENT_LIST:Ljava/lang/String; = "setting::components"

.field public static final NIMBLE_LOG_SETTING:Ljava/lang/String; = "setting::log"

.field public static final NIMBLE_SERVER_CONFIG:Ljava/lang/String; = "com.ea.nimble.configuration"

.field protected static s_core:Lcom/ea/nimble/BaseCore;

.field protected static s_coreDestroyed:Z


# instance fields
.field protected m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

.field protected m_applicationLifecycle:Lcom/ea/nimble/IApplicationLifecycle;

.field protected m_chimble_base_setting:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_componentManager:Lcom/ea/nimble/ComponentManager;

.field protected m_configuration:Lcom/ea/nimble/NimbleConfiguration;

.field protected m_log:Lcom/ea/nimble/LogImpl;

.field protected m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

.field protected m_state:Lcom/ea/nimble/BaseCore$State;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "com.ea.nimble.identity.NimbleIdentityImpl"

    const-string v1, "com.ea.nimble.identity.AuthenticatorOrigin"

    const-string v2, "com.ea.nimble.identity.AuthenticatorFacebook"

    const-string v3, "com.ea.nimble.identity.AuthenticatorAnonymous"

    const-string v4, "com.ea.nimble.friends.NimbleFriendsImpl"

    const-string v5, "com.ea.nimble.friends.NimbleOriginFriendsServiceImpl"

    const-string v6, "com.ea.nimble.origin.Origin"

    const-string v7, "com.ea.nimble.NimbleAndroidFacebook"

    const-string v8, "com.ea.nimble.NimbleAndroidGoogleServiceImpl"

    const-string v9, "com.ea.nimble.mtx.googleplay.GooglePlay"

    const-string v10, "com.ea.nimble.mtx.amazon.AmazonStore"

    const-string v11, "com.ea.nimble.pushtng.PushNotification"

    const-string v12, "com.ea.nimble.bridge.NimbleCppApplicationLifeCycle"

    const-string v13, "com.ea.nimble.bridge.NimbleCppComponentRegistrar"

    const-string v14, "com.ea.nimble.PushSdk"

    const-string v15, "com.ea.nimble.NimbleGameSdk"

    const-string v16, "com.ea.nimble.MarketingSdk"

    const-string v17, "com.ea.nimble.mtx.gamesdk.GameSdkMTX"

    const-string v18, "com.ea.nimble.MeasureSdk"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ea/nimble/BaseCore;->NIMBLE_COMPONENTS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_chimble_base_setting:Ljava/util/Map;

    return-void
.end method

.method private destroy()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NIMBLE DESTROY for Android will keep Core and Static components alive"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ea/nimble/BaseCore;
    .locals 6

    const-class v0, Lcom/ea/nimble/BaseCore;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    if-nez v1, :cond_0

    const-string v1, "Nimble"

    const-string v2, "NIMBLE VERSION %s (Build %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0.5.0.1"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "0.5.0.1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/ea/nimble/BaseCore;

    invoke-direct {v1}, Lcom/ea/nimble/BaseCore;-><init>()V

    sput-object v1, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    invoke-direct {v1}, Lcom/ea/nimble/BaseCore;->initialize()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Cannot revive destroyed BaseCore, please utilizesetupNimble() and tearDownNimble() explicitly to extend longevity to match your expectation."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initialize()V
    .locals 11

    const-string v0, "Nimble"

    const-string v1, "Method "

    sget-object v2, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    iput-object v2, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-direct {p0}, Lcom/ea/nimble/BaseCore;->loadConfiguration()V

    new-instance v2, Lcom/ea/nimble/ComponentManager;

    invoke-direct {v2}, Lcom/ea/nimble/ComponentManager;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    new-instance v2, Lcom/ea/nimble/ApplicationLifecycleImpl;

    invoke-direct {v2, p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v2, p0, Lcom/ea/nimble/BaseCore;->m_applicationLifecycle:Lcom/ea/nimble/IApplicationLifecycle;

    new-instance v2, Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-direct {v2, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v2, p0, Lcom/ea/nimble/BaseCore;->m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/LogImpl;

    iput-object v2, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    invoke-virtual {v2, p0}, Lcom/ea/nimble/LogImpl;->connectToCore(Lcom/ea/nimble/BaseCore;)V

    new-instance v2, Lcom/ea/nimble/PersistenceServiceImpl;

    invoke-direct {v2}, Lcom/ea/nimble/PersistenceServiceImpl;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/BaseCore;->m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

    invoke-direct {p0}, Lcom/ea/nimble/BaseCore;->loadChimbleConfiguration()V

    new-instance v2, Lcom/ea/nimble/NetworkImpl;

    invoke-direct {v2}, Lcom/ea/nimble/NetworkImpl;-><init>()V

    new-instance v3, Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-direct {v3, p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;-><init>(Lcom/ea/nimble/BaseCore;)V

    new-instance v4, Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-direct {v4}, Lcom/ea/nimble/SynergyNetworkImpl;-><init>()V

    new-instance v5, Lcom/ea/nimble/SynergyIdManagerImpl;

    invoke-direct {v5}, Lcom/ea/nimble/SynergyIdManagerImpl;-><init>()V

    new-instance v6, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;

    invoke-direct {v6}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;-><init>()V

    iget-object v7, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    iget-object v8, p0, Lcom/ea/nimble/BaseCore;->m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    const-string v9, "com.ea.nimble.applicationEnvironment"

    invoke-virtual {v7, v8, v9}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    iget-object v8, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    const-string v9, "com.ea.nimble.NimbleLog"

    invoke-virtual {v7, v8, v9}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    iget-object v8, p0, Lcom/ea/nimble/BaseCore;->m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

    const-string v9, "com.ea.nimble.persistence"

    invoke-virtual {v7, v8, v9}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v8, "com.ea.nimble.network"

    invoke-virtual {v7, v2, v8}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v7, "com.ea.nimble.synergyidmanager"

    invoke-virtual {v2, v5, v7}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v5, "com.ea.nimble.synergyEnvironment"

    invoke-virtual {v2, v3, v5}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v3, "com.ea.nimble.synergynetwork"

    invoke-virtual {v2, v4, v3}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v3, "com.ea.nimble.operationaltelemetrydispatch"

    invoke-virtual {v2, v6, v3}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/ea/nimble/BaseCore;->NIMBLE_COMPONENTS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_0

    aget-object v7, v2, v5

    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "initialize"

    new-array v10, v4, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Component "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "No method "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".initialize()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".initialize() threw an exception"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".initialize() is not accessible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".initialize() should take no arguments"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".initialize() should be static"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/BaseCore;->isAppSigned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "This application is NOT signed with a valid certificate. MTX may not work correctly with this application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v1, "This application is signed with a valid certificate."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    :catch_6
    move-exception v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "Unable to verify application signature. Message: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method protected static injectMock(Lcom/ea/nimble/BaseCore;)V
    .locals 1

    const-string v0, "BaseCore"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    sput-object p0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    sput-boolean v0, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    sput-boolean v0, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    :goto_0
    return-void
.end method

.method private isAppSigned(Landroid/content/Context;)Z
    .locals 7

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "Could not get Package Manager"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    :try_start_1
    aget-object v4, p1, v1

    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    goto :goto_5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move v1, v3

    goto :goto_1

    :catch_1
    move-exception p1

    move v1, v3

    goto :goto_2

    :catch_2
    move-exception p1

    move v1, v3

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p1

    :goto_2
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_4
    move v3, v1

    :cond_2
    :goto_5
    xor-int/lit8 p1, v3, 0x1

    return p1
.end method

.method private loadChimbleConfiguration()V
    .locals 4

    const-string v0, "BaseCore"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "base_settings"

    const-string/jumbo v3, "xml"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->parseXmlFile(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_chimble_base_setting:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private loadConfiguration()V
    .locals 2

    const-string v0, "BaseCore"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    const-string v0, "com.ea.nimble.configuration"

    invoke-static {v0}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/ea/nimble/NimbleConfiguration;->fromName(Ljava/lang/String;)Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "Nimble"

    const-string v1, "WARNING! Cannot find valid NimbleConfiguration from AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    return-void
.end method


# virtual methods
.method public activeValidate()Lcom/ea/nimble/BaseCore;
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "Accessing component after destroy, only static components are available right now."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_1
    const-string v0, "Access NimbleBaseCore after clean up, call setupNimble() explicitly again to activate it."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_2
    const-string v0, "Access NimbleBaseCore before setup, call setupNimble() explicitly to activate it."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public getApplicationEnvironment()Lcom/ea/nimble/IApplicationEnvironment;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    return-object v0
.end method

.method public getApplicationLifecycle()Lcom/ea/nimble/IApplicationLifecycle;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_applicationLifecycle:Lcom/ea/nimble/IApplicationLifecycle;

    return-object v0
.end method

.method public getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "setting::base"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/BaseCore;->getSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getComponentManager()Lcom/ea/nimble/ComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    return-object v0
.end method

.method public getConfiguration()Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    return-object v0
.end method

.method public getLog()Lcom/ea/nimble/ILog;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    return-object v0
.end method

.method public getPersistenceService()Lcom/ea/nimble/IPersistenceService;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

    return-object v0
.end method

.method public getSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "setting::log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "nimble_log"

    const-string/jumbo v3, "xml"

    invoke-virtual {v0, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->parseXmlFile(I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "setting::base"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_chimble_base_setting:Ljava/util/Map;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public isActive()Z
    .locals 2

    const-string v0, "BaseCore"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-ne v0, v1, :cond_0

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

.method public onApplicationLaunch(Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->DESTROY:Lcom/ea/nimble/BaseCore$State;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->FAKE_DESTROY:Lcom/ea/nimble/BaseCore$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {p1}, Lcom/ea/nimble/ComponentManager;->resume()V

    sget-object p1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->QUITTING:Lcom/ea/nimble/BaseCore$State;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {p1}, Lcom/ea/nimble/ComponentManager;->resume()V

    sget-object p1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {p1}, Lcom/ea/nimble/ComponentManager;->setup()V

    const-string p1, "nimble.notification.componentIndependentSetupFinished"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    sget-object p1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object p1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    :try_start_0
    iget-object p1, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {p1}, Lcom/ea/nimble/ComponentManager;->restore()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    throw p1
.end method

.method public onApplicationQuit()V
    .locals 3

    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->suspend()V

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->QUITTING:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->suspend()V

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->FAKE_DESTROY:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    goto :goto_0

    :cond_2
    const-string v0, "Double app quit, something must be wrong."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "No app start before app quit, something must be wrong."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->resume()V

    :cond_1
    return-void
.end method

.method public onApplicationSuspend()V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->suspend()V

    :cond_1
    return-void
.end method

.method public restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ">>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "restartWithConfiguration should not be used in an integration. This function is for QA testing purposes."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    if-ne p1, v1, :cond_0

    const-string p1, "Cannot restart nimble with unknown configuration"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ea/nimble/BaseCore$1;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/BaseCore$1;-><init>(Lcom/ea/nimble/BaseCore;Lcom/ea/nimble/NimbleConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setup()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Multiple setupNimble() calls without teardownNimble()."

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->setup()V

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    const-string v0, "nimble.notification.componentIndependentSetupFinished"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->restore()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public teardown()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->cleanup()V

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->teardown()V

    invoke-direct {p0}, Lcom/ea/nimble/BaseCore;->destroy()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->cleanup()V

    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->teardown()V

    goto :goto_0

    :pswitch_2
    const-string v0, "Multiple teardownNimble() calls without setupNibmle()."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "Cannot teardownNimble() before setupNimble()."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
