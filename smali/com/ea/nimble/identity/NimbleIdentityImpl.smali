.class public Lcom/ea/nimble/identity/NimbleIdentityImpl;
.super Lcom/ea/nimble/Component;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentity;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final DATA_TEMPLATE_MIGRATE:Ljava/lang/String; = "?client_id=%s&tuid=%s"

.field private static final REQUEST_HEADER_CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-type"

.field private static final REQUEST_HEADER_CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final REQUEST_HEADER_SOURCE_AT_KEY:Ljava/lang/String; = "X-SOURCE-ACCESS-TOKEN"

.field private static final REQUEST_HEADER_TARGET_AT_KEY:Ljava/lang/String; = "X-TARGET-ACCESS-TOKEN"

.field private static final URL_TEMPLATE_MIGRATE:Ljava/lang/String; = "%s/connect/migrate"

.field private static final URL_TEMPLATE_REQUEST_SERVER_AUTHENTICATION_OAUTH_CODE:Ljava/lang/String; = "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"


# instance fields
.field private m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

.field private m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

.field private final m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_authenticators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

.field private m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

.field private final m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_pidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-direct {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidMap:Ljava/util/HashMap;

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl$1;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->onAuthenticatorStateChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->onPidInfoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/nimble/identity/NimbleIdentityImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    return-object p0
.end method

.method private getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAccessToken()Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Authenticator Base was null!"

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;
    .locals 1

    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityImpl;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    const-string v0, "NimbleIdentityImpl"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;-><init>()V

    const-string v1, "com.ea.nimble.identity"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method private loadMainAuthenticator()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mainAuthenticatorId"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized onAuthenticatorStateChange()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setState(Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_READY:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setState(Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onPidInfoUpdate()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lcom/ea/nimble/IApplicationEnvironment;->setPlayerId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidMap:Ljava/util/HashMap;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveMainAuthenticator(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "mainAuthenticatorId"

    invoke-virtual {v0, v1, p1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method private validateMigrationIds(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/Error;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "anonymous"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Source authenticator must be anonymous"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Target authenticator cannot be anonymous"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object p1

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object p1

    sget-object p2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Target authenticator is not logged in"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_7
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Source authenticator is not logged in"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_8
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Target authenticator ID is either null or empty"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p1

    :cond_9
    :goto_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Source authenticator ID is either null or empty"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {p1, v0, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method completeMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Account migration successful"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.tracking"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-static {v2}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-static {v2}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NIMBLESTANDARD::IDENTITY_MIGRATION"

    invoke-interface {v0, v2, v1}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->completeMigration()V

    const-string p1, "com.ea.nimble.identity"

    sget-object v0, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p1, v0}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p1

    const-string v0, "nimble.notification.identity.migraiton"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p1}, Lcom/ea/nimble/Persistence;->synchronize()V

    if-eqz p3, :cond_1

    invoke-interface {p3, p2, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_1
    return-void
.end method

.method getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    return-object v0
.end method

.method getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/ea/nimble/identity/AuthenticatorBase;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ea/nimble/identity/AuthenticatorBase;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAuthenticators()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAutoRefreshFlag()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.identity"

    return-object v0
.end method

.method getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Identity"

    return-object v0
.end method

.method public getLoggedInAuthenticators()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    return-object v0
.end method

.method public getPidMap()Ljava/util/Map;
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

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method getPidMapInternal()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getState()Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    return-object v0
.end method

.method handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 8

    invoke-interface {p4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V

    return-void
.end method

.method highlight(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Game wants to high light the just logged in authenticator"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    return-void
.end method

.method makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Starting migration network call"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const-string p2, "?client_id=%s&tuid=%s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v3

    const-string v4, "nexus.connect"

    invoke-interface {v3, v4}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "%s/connect/migrate"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v3, p2

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-object v0, v2

    :catch_1
    move-object v2, v1

    goto :goto_0

    :catch_2
    move-object v0, v2

    :goto_0
    move-object v1, v2

    :goto_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-SOURCE-ACCESS-TOKEN"

    invoke-virtual {p2, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "X-TARGET-ACCESS-TOKEN"

    invoke-virtual {p2, p6, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/ea/nimble/HttpRequest;

    invoke-direct {p4, v1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object p6, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p6, p4, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p2, p4, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    iput-object v0, p4, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p2

    new-instance p6, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;

    invoke-direct {p6, p0, p3, p1, p5}, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    invoke-interface {p2, p4, p6}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    return-void
.end method

.method migrate(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 14

    move-object v7, p0

    move-object v1, p1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const-string v1, "Request account migration without callback, no way to notify caller"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "Request account migration"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "com.ea.nimble.tracking"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lcom/ea/nimble/tracking/ITracking;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-static {v4}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-static {v4}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "NIMBLESTANDARD::IDENTITY_MIGRATION_STARTED"

    invoke-interface {v2, v4, v3}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v12, v10}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->validateMigrationIds(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/Error;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1, v3, v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_2
    invoke-direct {p0, v12}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v10}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "Request for account migration failed for error "

    if-eqz v6, :cond_3

    if-nez v4, :cond_4

    :cond_3
    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v8, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v9, "Access token is empty or invalid"

    invoke-direct {v5, v8, v9}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v3, v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_4
    iget-object v5, v7, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v8, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v9, "ClientId is empty or invalid"

    invoke-direct {v5, v8, v9}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v3, v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.ea.nimble.identity"

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "Attempted to save pending migration data but persistence was not available. Not saving."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;

    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v11

    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v13

    move-object v8, v5

    move-object v9, v2

    invoke-direct/range {v8 .. v13}, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "nimble.notification.identity.migraiton"

    invoke-virtual {v3, v8, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3}, Lcom/ea/nimble/Persistence;->synchronize()V

    const-string v3, "Migration object saved to persistence"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V

    return-void
.end method

.method migrationFailed(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    const-string v0, "Migration failed for %s."

    invoke-static {p0, v0, p3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public requestServerAuthCodeForLegacyOriginToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const-string p1, "Request server authentication oAuth code without callback, no way to get result"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "Request server authentication oauth code for legacy origin ocs token"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v1, "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v4, 0x2

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&scope=%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p3, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;

    invoke-direct {v2, p0, p4, p2, p3}, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    return-void
.end method

.method resolveLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    :cond_0
    return-void
.end method

.method public restore()V
    .locals 7

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->initialize()V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "com.ea.nimble.identity.authenticator."

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v0

    const-string v1, "nimble.notification.identity.authentication.update"

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v1, "nimble.notification.identity.authenticator.pid.info.update"

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    instance-of v5, v4, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/ea/nimble/Component;->getComponentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "Invalid authenticator %s"

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    check-cast v4, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->loadMainAuthenticator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "No existing main authenticator. Will log in anonymous authenticator"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "anonymous"

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Main authenticator is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setAuthenticationConductor(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Attempting setAuthenticationConductor when we already have one. Unsupported. Ignoring."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Attempting to setAuthenticationConductor with a null conductor."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eq v0, p1, :cond_5

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    instance-of v0, p1, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    if-eqz v0, :cond_2

    const-string v0, "Setting the generic auth conductor as our conductor."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;

    invoke-direct {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    if-eqz v0, :cond_3

    const-string v0, "Setting the migration auth conductor as our conductor."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;

    invoke-direct {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticators()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setAutoRefreshFlag(Z)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->setAutoRefresh(Z)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    check-cast v1, Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v1, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->enableAutoRefresh(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Failed to set mainAuthenticator with new authenticator because given authenticator is null."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    if-ne p1, v1, :cond_1

    const-string p1, "Skipping setMainAuthenticator because the given authenticator is the same as the previous one."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting mainAuthenticator to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->saveMainAuthenticator(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nimble.notification.identity.main.authenticator.change"

    invoke-static {p1, v0}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setState(Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    const-string p1, "nimble.notification.identity.update"

    invoke-static {p1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Requested account switching without callback. No way to notify caller. Aborting..."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_1

    new-instance p2, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object p3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "Attempted to switchAuthenticators but source authenticator was null"

    invoke-direct {p2, p3, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object p3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "Attempted to switchAuthenticators but target authenticator was null"

    invoke-direct {p2, p3, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    return-void

    :cond_2
    invoke-interface {p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p2, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object p3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "Attempted to switch from one authenticator to itself. Your from and your to authenticators must be different."

    invoke-direct {p2, p3, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    invoke-interface {p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anonymous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p3, Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {p3, p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->logoutInternal(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, p2, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :goto_0
    return-void
.end method
