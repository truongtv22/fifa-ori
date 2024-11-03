.class public Lcom/beetalk/sdk/FBAuthRequestHandler;
.super Lcom/beetalk/sdk/AuthRequestHandler;
.source "FBAuthRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;
    }
.end annotation


# instance fields
.field private final callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/AuthRequestHandler;-><init>(Lcom/beetalk/sdk/AuthClient;)V

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->callbackManager:Lcom/facebook/CallbackManager;

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    iput-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/FBAuthRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/FBAuthRequestHandler$1;-><init>(Lcom/beetalk/sdk/FBAuthRequestHandler;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/FBAuthRequestHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/FBAuthRequestHandler;->onSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/FBAuthRequestHandler;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/FBAuthRequestHandler;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/FBAuthRequestHandler;->exchangeTokenFromGOP(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/FBAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->onResult(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private exchangeTokenFromGOP(Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 7

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v0

    const v1, 0xdbed

    const-string v2, "://auth/"

    const-string v3, "gop"

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeFacebookTokenSyncNoGrant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeFacebookTokenSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FB login exchange token, result: "

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const-string v2, "open_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "expiry_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "platform"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance v5, Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v6

    invoke-direct {v5, v3, v6, p1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {v5, v4}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-static {p2, v5, v2, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error_user_ban"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const-string v0, "invalid_grant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-nez v1, :cond_5

    invoke-static {p2, v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "FB login failed, exception: "

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    instance-of v1, p1, Lcom/beetalk/sdk/exception/InvalidOperationException;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "user_cancelled"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onResult(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbed

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbec

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/cache/StorageCache;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    :cond_2
    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onSuccess()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Starting Token Exchange for Facebook"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;-><init>(Lcom/beetalk/sdk/FBAuthRequestHandler;Lcom/beetalk/sdk/FBAuthRequestHandler$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    :goto_0
    return-void
.end method


# virtual methods
.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "start FB Auth"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/beetalk/sdk/FBAuthRequestHandler;->onSuccess()V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1}, Lcom/beetalk/sdk/AuthClient;->getActivityLauncher()Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object p1

    invoke-interface {p1}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/beetalk/sdk/FBAuthRequestHandler;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getFacebookLoginPermissions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroidx/activity/result/ActivityResultRegistryOwner;Lcom/facebook/CallbackManager;Ljava/util/Collection;)V

    return v0
.end method
