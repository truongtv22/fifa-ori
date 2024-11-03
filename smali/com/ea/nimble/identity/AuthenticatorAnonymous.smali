.class Lcom/ea/nimble/identity/AuthenticatorAnonymous;
.super Lcom/ea/nimble/identity/AuthenticatorBase;
.source "AuthenticatorAnonymous.java"


# static fields
.field private static final ANONYMOUS_USER_NAME:Ljava/lang/String; = "Guest"

.field private static final INITIAL_RETRY_TIME:D = 1.0

.field private static final MAX_RETRY_TIME:D = 300.0

.field private static final PID_TYPE:Ljava/lang/String; = "mobile_upid"

.field private static final URL_TEMPLATE_ANONYMOUS_LOGIN:Ljava/lang/String; = "%s/connect/auth?mobile_login_type=mobile_game_UPID&mobile_UPIDToken=%s&client_id=%s&response_type=code&redirect_uri=nucleus:rest"

.field private static final URL_TEMPLATE_ANONYMOUS_UPIDTOKEN:Ljava/lang/String; = "%s/connect/upidtoken?client_id=%s"


# instance fields
.field private m_currentRetryTime:D

.field private m_retryTimer:Lcom/ea/nimble/Timer;

.field private m_upidToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    const-string v0, "AuthenticatorAnonymous"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->onRetryTimerExpired()V

    return-void
.end method

.method static synthetic access$102(Lcom/ea/nimble/identity/AuthenticatorAnonymous;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->saveUpidToken()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeUpidTokenForAuthCode()V

    return-void
.end method

.method private declared-synchronized exchangeUpidTokenForAuthCode()V
    .locals 7

    const-string v0, "Received a malformed URL with exception e: "

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/connect/auth?mobile_login_type=mobile_game_UPID&mobile_UPIDToken=%s&client_id=%s&response_type=code&redirect_uri=nucleus:rest"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;

    invoke-direct {v3, p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;-><init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    invoke-interface {v0, v2, v1, v3}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUpidToken()V
    .locals 7

    const-string v0, "Received a malformed URL with exception e: "

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/connect/upidtoken?client_id=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;

    invoke-direct {v3, p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;-><init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    invoke-interface {v0, v2, v1, v3}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static initialize()V
    .locals 2

    const-string v0, "AuthenticatorAnonymous"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;-><init>()V

    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method private loadUpidToken()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    return-void

    :cond_0
    const-string v1, "UpidToken"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "upid_token"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private declared-synchronized login(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v0, "Anonymous Login"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v0, "Found cached UPID token %s, use it for login"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeUpidTokenForAuthCode()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v0, "Request a new User PID token"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getUpidToken()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onRetryTimerExpired()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->login(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method private saveUpidToken()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    :cond_0
    const-string v1, "UpidToken"

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    :cond_1
    return-void
.end method


# virtual methods
.method autoLogin()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_autoLoginAttempt:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->login(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method protected closeAuthentication(Lcom/ea/nimble/Error;)V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_autoLoginAttempt:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v0

    const-wide v4, 0x4072c00000000000L    # 300.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Auto login failed. Retrying in %.1f seconds"

    invoke-static {p1, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1, v0, v1, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    return-void

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    invoke-super {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method protected completeMigration()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public getAuthenticatorId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "anonymous"

    return-object v0
.end method

.method protected isPlatformLoggedIn()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login(Lcom/ea/nimble/identity/NimbleIdentityLoginParams;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Anonymous authenticator is self-maintained, explicitly calling login on the anonymous authenticator does nothing."

    invoke-static {p1, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_0
    return-void
.end method

.method public logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Anonymous authenticator is self-maintained, explicitly calling logout on the anonymous authenticator does nothing."

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_0
    return-void
.end method

.method logoutInternal(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getLoggedInAuthenticators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Attempting to logout the anonymous authenticator but it is the only one logged in. Aborting"

    invoke-static {p1, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->cancelAuthentication()V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public requestIdentityForFriends(Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "mobile_upid"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    return-void
.end method

.method public restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    const-string v1, "Guest"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setDisplayName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->loadUpidToken()V

    invoke-super {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public suspend()V
    .locals 2

    invoke-super {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->suspend()V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    return-void
.end method
