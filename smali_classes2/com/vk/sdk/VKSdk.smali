.class public Lcom/vk/sdk/VKSdk;
.super Ljava/lang/Object;
.source "VKSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/VKSdk$CheckTokenResult;,
        Lcom/vk/sdk/VKSdk$LoginState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_API_ERRORS:Z = false

.field static final EXTRA_ERROR_ID:Ljava/lang/String; = "vk_extra_error_id"

.field static final RESULT_ERROR:I = 0x0

.field static final RESULT_OK:I = -0x1

.field public static final SDK_API_VERSION:Ljava/lang/String; = "com_vk_sdk_ApiVersion"

.field public static final SDK_APP_ID:Ljava/lang/String; = "com_vk_sdk_AppId"

.field public static final SDK_TAG:Ljava/lang/String; = "VK SDK"

.field private static final VK_SDK_APP_ID_PREF_KEY:Ljava/lang/String; = "VK_SDK_APP_ID_PLEASE_DONT_TOUCH"

.field private static final VK_SDK_APP_VERSION_PREF_KEY:Ljava/lang/String; = "VK_SDK_APP_VERSION_PLEASE_DONT_TOUCH"

.field private static handler:Landroid/os/Handler;

.field private static requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentApiVersion:Ljava/lang/String;

.field private static sCurrentAppId:I

.field private static volatile sCurrentLoginState:Lcom/vk/sdk/VKSdk$LoginState;

.field private static sIsCustomInitialize:Z

.field private static final sVKTokenListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vk/sdk/VKAccessTokenTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static vkSdk:Lcom/vk/sdk/VKSdk;


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/vk/sdk/VKSdk;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput v0, Lcom/vk/sdk/VKSdk;->sCurrentAppId:I

    const/4 v1, 0x0

    sput-object v1, Lcom/vk/sdk/VKSdk;->vkSdk:Lcom/vk/sdk/VKSdk;

    sput-boolean v0, Lcom/vk/sdk/VKSdk;->sIsCustomInitialize:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/vk/sdk/VKSdk;->sVKTokenListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/VKSdk;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKSdk;->sVKTokenListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/sdk/VKSdk;->updateLoginState(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->onAccessTokenIsInvalid(Landroid/content/Context;)V

    return-void
.end method

.method static addVKTokenTracker(Lcom/vk/sdk/VKAccessTokenTracker;)V
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKSdk;->sVKTokenListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static checkAndSetToken(Landroid/content/Context;Ljava/util/Map;)Lcom/vk/sdk/VKSdk$CheckTokenResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vk/sdk/VKSdk$CheckTokenResult;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/vk/sdk/VKSdk;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "scope"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/vk/sdk/VKAccessToken;->tokenFromParameters(Ljava/util/Map;)Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/vk/sdk/VKAccessToken;->copyWithToken(Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/vk/sdk/VKAccessToken;->copyWithToken(Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/vk/sdk/VKAccessToken;->replaceToken(Landroid/content/Context;Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;

    invoke-static {p1, v1}, Lcom/vk/sdk/VKSdk;->notifyVKTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    new-instance p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;

    invoke-direct {p0, p1, v0}, Lcom/vk/sdk/VKSdk$CheckTokenResult;-><init>(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    return-object p0

    :cond_2
    invoke-static {p0, v0}, Lcom/vk/sdk/VKAccessToken;->replaceToken(Landroid/content/Context;Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;

    invoke-static {p1, v0}, Lcom/vk/sdk/VKSdk;->notifyVKTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    new-instance p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;

    invoke-direct {p0, v0}, Lcom/vk/sdk/VKSdk$CheckTokenResult;-><init>(Lcom/vk/sdk/VKAccessToken;)V

    return-object p0

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    const-string p0, "success"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/vk/sdk/VKSdk$CheckTokenResult;

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/vk/sdk/VKSdk$CheckTokenResult;-><init>(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/vk/sdk/api/VKError;

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/VKError;-><init>(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/vk/sdk/api/VKError;->errorReason:Ljava/lang/String;

    if-eqz p1, :cond_7

    :cond_6
    new-instance p0, Lcom/vk/sdk/api/VKError;

    const/16 p1, -0x66

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    :cond_7
    new-instance p1, Lcom/vk/sdk/VKSdk$CheckTokenResult;

    invoke-direct {p1, p0}, Lcom/vk/sdk/VKSdk$CheckTokenResult;-><init>(Lcom/vk/sdk/api/VKError;)V

    return-object p1
.end method

.method public static customInitialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;
    .locals 3

    const-string v0, "VK_SDK_APP_ID_PLEASE_DONT_TOUCH"

    if-nez p1, :cond_0

    invoke-static {p0, v0}, Lcom/vk/sdk/VKSdk;->getIntFromPref(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "VK_SDK_APP_VERSION_PLEASE_DONT_TOUCH"

    if-eqz v1, :cond_1

    const-string p2, "5.21"

    invoke-static {p0, v2, p2}, Lcom/vk/sdk/VKSdk;->getStringFromPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    sput-boolean v1, Lcom/vk/sdk/VKSdk;->sIsCustomInitialize:Z

    invoke-static {p0, p1, p2}, Lcom/vk/sdk/VKSdk;->initialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;

    move-result-object p1

    sget p2, Lcom/vk/sdk/VKSdk;->sCurrentAppId:I

    if-eqz p2, :cond_2

    invoke-static {p0, v0, p2}, Lcom/vk/sdk/VKSdk;->storeIntToPref(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    sget-object p2, Lcom/vk/sdk/VKSdk;->sCurrentApiVersion:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {p0, v2, p2}, Lcom/vk/sdk/VKSdk;->storeStringToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "your_app_id is 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static forceLoginState(Lcom/vk/sdk/VKSdk$LoginState;Lcom/vk/sdk/VKCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/sdk/VKSdk$LoginState;",
            "Lcom/vk/sdk/VKCallback<",
            "Lcom/vk/sdk/VKSdk$LoginState;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/vk/sdk/VKSdk;->sCurrentLoginState:Lcom/vk/sdk/VKSdk$LoginState;

    if-eqz p1, :cond_0

    sget-object p0, Lcom/vk/sdk/VKSdk;->sCurrentLoginState:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-interface {p1, p0}, Lcom/vk/sdk/VKCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getAccessToken()Lcom/vk/sdk/VKAccessToken;
    .locals 1

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    return-object v0
.end method

.method public static getApiVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKSdk;->sCurrentApiVersion:Ljava/lang/String;

    return-object v0
.end method

.method private static getIntFromPref(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getIntResByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static getStringFromPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStringResByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p0

    :catch_0
    :goto_0
    return-object p2
.end method

.method static getsCurrentAppId()I
    .locals 1

    sget v0, Lcom/vk/sdk/VKSdk;->sCurrentAppId:I

    return v0
.end method

.method private static hasInStack(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/vk/sdk/VKSdk;
    .locals 3

    sget v0, Lcom/vk/sdk/VKSdk;->sCurrentAppId:I

    if-eqz v0, :cond_0

    sget-object p0, Lcom/vk/sdk/VKSdk;->vkSdk:Lcom/vk/sdk/VKSdk;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    const-string v1, "VKSdk.initialize(Context) must be call from Application#onCreate()"

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Application context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-class v0, Landroid/app/Application;

    const-string v2, "onCreate"

    invoke-static {v0, v2}, Lcom/vk/sdk/VKSdk;->hasInStack(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com_vk_sdk_AppId"

    invoke-static {p0, v0}, Lcom/vk/sdk/VKSdk;->getIntResByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "com_vk_sdk_ApiVersion"

    const-string v2, "5.21"

    invoke-static {p0, v1, v2}, Lcom/vk/sdk/VKSdk;->getStringResByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/vk/sdk/VKSdk;->initialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "String <integer name=\"com_vk_sdk_AppId\">your_app_id</integer> did not find in your resources.xml"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized initialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;
    .locals 2

    const-class v0, Lcom/vk/sdk/VKSdk;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vk/sdk/VKSdk;->sCurrentAppId:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/vk/sdk/VKSdk;

    invoke-direct {v1, p0}, Lcom/vk/sdk/VKSdk;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vk/sdk/VKSdk;->vkSdk:Lcom/vk/sdk/VKSdk;

    sput p1, Lcom/vk/sdk/VKSdk;->sCurrentAppId:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "5.21"

    :cond_0
    sput-object p2, Lcom/vk/sdk/VKSdk;->sCurrentApiVersion:Ljava/lang/String;

    sget-object p1, Lcom/vk/sdk/VKSdk$LoginState;->Unknown:Lcom/vk/sdk/VKSdk$LoginState;

    sput-object p1, Lcom/vk/sdk/VKSdk;->sCurrentLoginState:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->wakeUpSession(Landroid/content/Context;)Z

    :cond_1
    sget-object p0, Lcom/vk/sdk/VKSdk;->vkSdk:Lcom/vk/sdk/VKSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isCustomInitialize()Z
    .locals 1

    sget-boolean v0, Lcom/vk/sdk/VKSdk;->sIsCustomInitialize:Z

    return v0
.end method

.method public static isLoggedIn()Z
    .locals 1

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/sdk/VKAccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs login(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/vk/sdk/VKSdk;->preparingScopeList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/vk/sdk/VKSdk;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/vk/sdk/VKServiceActivity;->startLoginActivity(Landroid/app/Activity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static varargs login(Landroid/app/Fragment;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/vk/sdk/VKSdk;->preparingScopeList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/vk/sdk/VKSdk;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/vk/sdk/VKServiceActivity;->startLoginActivity(Landroid/app/Fragment;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static logout()V
    .locals 3

    invoke-static {}, Lcom/vk/sdk/VKUIHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    invoke-static {}, Lcom/vk/sdk/VKUIHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/vk/sdk/VKAccessToken;->replaceToken(Landroid/content/Context;Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;

    invoke-static {v0}, Lcom/vk/sdk/VKSdk;->updateLoginState(Landroid/content/Context;)V

    return-void
.end method

.method public static notifySdkAboutApiError(Lcom/vk/sdk/api/VKError;)V
    .locals 1

    iget p0, p0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/vk/sdk/VKUIHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->onAccessTokenIsInvalid(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static notifyVKTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V
    .locals 2

    sget-object v0, Lcom/vk/sdk/VKSdk;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vk/sdk/VKSdk$1;

    invoke-direct {v1, p0, p1}, Lcom/vk/sdk/VKSdk$1;-><init>(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static onAccessTokenIsInvalid(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vk/sdk/VKAccessToken;->replaceToken(Landroid/content/Context;Lcom/vk/sdk/VKAccessToken;)Lcom/vk/sdk/VKAccessToken;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lcom/vk/sdk/VKSdk;->notifyVKTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V

    :cond_0
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;Lcom/vk/sdk/VKCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Lcom/vk/sdk/VKCallback<",
            "Lcom/vk/sdk/VKAccessToken;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    if-ne p0, v0, :cond_3

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/vk/sdk/VKCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    const-wide/16 p0, 0x0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "vk_extra_error_id"

    invoke-virtual {p2, v0, p0, p1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p0

    :goto_0
    invoke-static {p0, p1}, Lcom/vk/sdk/VKObject;->getRegisteredObject(J)Lcom/vk/sdk/VKObject;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/VKError;

    invoke-interface {p3, p0}, Lcom/vk/sdk/VKCallback;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs preparingScopeList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "offline"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method static processActivityResult(Landroid/content/Context;ILandroid/content/Intent;Lcom/vk/sdk/VKCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/content/Intent;",
            "Lcom/vk/sdk/VKCallback<",
            "Lcom/vk/sdk/VKAccessToken;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string p1, "extra-token-data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/sdk/util/VKUtil;->explodeQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/vk/sdk/VKSdk;->checkAndSetToken(Landroid/content/Context;Ljava/util/Map;)Lcom/vk/sdk/VKSdk$CheckTokenResult;

    move-result-object p1

    iget-object v0, p1, Lcom/vk/sdk/VKSdk$CheckTokenResult;->error:Lcom/vk/sdk/api/VKError;

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    iget-object p1, p1, Lcom/vk/sdk/VKSdk$CheckTokenResult;->error:Lcom/vk/sdk/api/VKError;

    invoke-interface {p3, p1}, Lcom/vk/sdk/VKCallback;->onError(Lcom/vk/sdk/api/VKError;)V

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lcom/vk/sdk/VKSdk$CheckTokenResult;->token:Lcom/vk/sdk/VKAccessToken;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/vk/sdk/VKSdk$CheckTokenResult;->oldToken:Lcom/vk/sdk/VKAccessToken;

    if-eqz v0, :cond_5

    const-string v0, "extra-validation-request"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/vk/sdk/api/VKRequest;->getRegisteredRequest(J)Lcom/vk/sdk/api/VKRequest;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/vk/sdk/api/VKRequest;->unregisterObject()V

    invoke-virtual {p2}, Lcom/vk/sdk/api/VKRequest;->repeat()V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/vk/sdk/VKSdk;->trackVisitor(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    iget-object p1, p1, Lcom/vk/sdk/VKSdk$CheckTokenResult;->token:Lcom/vk/sdk/VKAccessToken;

    invoke-interface {p3, p1}, Lcom/vk/sdk/VKCallback;->onResult(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    sput-object v1, Lcom/vk/sdk/VKSdk;->requestedPermissions:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->updateLoginState(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    new-instance p1, Lcom/vk/sdk/api/VKError;

    const/16 p2, -0x66

    invoke-direct {p1, p2}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    invoke-interface {p3, p1}, Lcom/vk/sdk/VKCallback;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_9
    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->updateLoginState(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method

.method static removeVKTokenTracker(Lcom/vk/sdk/VKAccessTokenTracker;)V
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKSdk;->sVKTokenListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static storeIntToPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static storeStringToPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static trackVisitor(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/VKRequest;

    const-string v1, "stats.trackVisitor"

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/vk/sdk/api/VKRequest;->attempts:I

    invoke-virtual {v0, p0}, Lcom/vk/sdk/api/VKRequest;->executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    return-void
.end method

.method private static updateLoginState(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vk/sdk/VKSdk;->updateLoginState(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V

    return-void
.end method

.method private static updateLoginState(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vk/sdk/VKCallback<",
            "Lcom/vk/sdk/VKSdk$LoginState;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/vk/sdk/VKUIHelper;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/vk/sdk/VKSdk$LoginState;->LoggedIn:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-static {p0, p1}, Lcom/vk/sdk/VKSdk;->forceLoginState(Lcom/vk/sdk/VKSdk$LoginState;Lcom/vk/sdk/VKCallback;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vk/sdk/VKSdk$LoginState;->LoggedOut:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-static {p0, p1}, Lcom/vk/sdk/VKSdk;->forceLoginState(Lcom/vk/sdk/VKSdk$LoginState;Lcom/vk/sdk/VKCallback;)V

    :goto_0
    return-void
.end method

.method public static wakeUpSession(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vk/sdk/VKSdk;->wakeUpSession(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)Z

    move-result p0

    return p0
.end method

.method public static wakeUpSession(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vk/sdk/VKCallback<",
            "Lcom/vk/sdk/VKSdk$LoginState;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/sdk/VKUIHelper;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/vk/sdk/VKAccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vk/sdk/VKSdk$LoginState;->Pending:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-static {v1, p1}, Lcom/vk/sdk/VKSdk;->forceLoginState(Lcom/vk/sdk/VKSdk$LoginState;Lcom/vk/sdk/VKCallback;)V

    new-instance v1, Lcom/vk/sdk/VKSdk$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/vk/sdk/VKSdk$2;-><init>(Landroid/content/Context;Lcom/vk/sdk/VKCallback;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/vk/sdk/VKSdk;->trackVisitor(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0, p1}, Lcom/vk/sdk/VKSdk;->updateLoginState(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)V

    const/4 p0, 0x0

    return p0
.end method
