.class Lcom/ea/nimble/identity/AuthenticatorOrigin;
.super Lcom/ea/nimble/identity/AuthenticatorBase;
.source "AuthenticatorOrigin.java"


# static fields
.field private static final DATA_TEMPLATE_LOGIN_WITH_ORIGIN_PASSWORD:Ljava/lang/String; = "grant_type=password&client_id=%s&client_secret=%s&username=%s&password=%s&redirect_uri=nucleus:rest"

.field private static final PID_TYPE:Ljava/lang/String; = "mobile_origin"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;-><init>()V

    const-string v0, "AuthenticatorOrigin"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorOrigin;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static initialize()V
    .locals 2

    const-string v0, "AuthenticatorOrigin"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorOrigin;

    invoke-direct {v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;-><init>()V

    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method private loginOrigin(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object p3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientSecret()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "grant_type=password&client_id=%s&client_secret=%s&username=%s&password=%s&redirect_uri=nucleus:rest"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->exchangeDataForToken(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method autoLogin()V
    .locals 3

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v2, "Cannot auto login for origin after session expired"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method public getAuthenticatorId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "origin"

    return-object v0
.end method

.method public login(Lcom/ea/nimble/identity/NimbleIdentityLoginParams;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorOrigin;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->loginOrigin(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v1, "Invalid username/password for Origin login"

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_3
    return-void

    :cond_4
    instance-of v0, p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->getOauthCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    new-instance p1, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v1, "Invalid auth code for Origin login"

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_5
    return-void

    :cond_6
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorOrigin;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->getOauthCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->exchangeAuthCodeToToken(Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_8
    if-eqz p2, :cond_9

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "Unrecognized login parameters"

    invoke-direct {p1, v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p2, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->cancelAuthentication()V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

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

    const-string v0, "mobile_origin"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    return-void
.end method
