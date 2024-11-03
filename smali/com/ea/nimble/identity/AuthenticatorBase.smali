.class public abstract Lcom/ea/nimble/identity/AuthenticatorBase;
.super Lcom/ea/nimble/Component;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/AuthenticatorBase$INimbleIdentityInternalServiceRequestCallback;
    }
.end annotation


# static fields
.field private static final AUTHORIZATION_KEY:Ljava/lang/String; = "Authorization"

.field private static final DATA_CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-type"

.field private static final DATA_CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final DATA_TEMPLATE_LOGIN_WITH_OAUTH_CODE:Ljava/lang/String; = "grant_type=authorization_code&code=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

.field private static final DATA_TEMPLATE_LOGIN_WITH_REFRESH_TOKEN:Ljava/lang/String; = "grant_type=refresh_token&refresh_token=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

.field private static final DEFAULT_RETRY_INTERVAL:D = 60.0

.field private static final EXPIRY_MARGIN_FOR_TIMER:D = 5.0

.field public static final NIMBLE_IDENTITY_PERSISTENCE_TOKEN_SUFFIX:Ljava/lang/String; = "nimble_identity_access_token"

.field private static final REQUEST_HEADER_PERSONA_INFO_EXTRA_FLAG:Ljava/lang/String; = "X-Expand-Results"

.field private static final REQUEST_HEADER_PID_INFO_EXTRA_FLAG:Ljava/lang/String; = "X-Include-Underage"

.field private static final REQUEST_HEADER_REFRESH_TOKEN_EXTRA_FLAG:Ljava/lang/String; = "X-Include-RT-Time"

.field private static final REQUEST_HEADER_TRUE_VALUE:Ljava/lang/String; = "true"

.field private static final URL_TEMPALTE_GET_IDENTITY_INFO_FOR_FRIENDS:Ljava/lang/String; = "/proxy/identity/pids/personaextref/bulk"

.field private static final URL_TEMPLATE_GET_PERSONA_INFO:Ljava/lang/String; = "%s/proxy/identity/pids/me/personas"

.field private static final URL_TEMPLATE_GET_PID_INFO:Ljava/lang/String; = "%s/proxy/identity/pids/me"

.field private static final URL_TEMPLATE_LOGIN:Ljava/lang/String; = "%s/connect/token"

.field private static final URL_TEMPLATE_LOGOUT:Ljava/lang/String; = "%s/connect/clearsid?client_id=%s&access_token=%s"

.field private static final URL_TEMPLATE_REQUEST_SERVER_AUTHENTICATION_OAUTH_CODE:Ljava/lang/String; = "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected m_authenticateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

.field protected m_autoLoginAttempt:Z

.field protected m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_personaCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_personaRefreshTimer:Lcom/ea/nimble/Timer;

.field private m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

.field private m_personas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/identity/NimbleIdentityPersona;",
            ">;"
        }
    .end annotation
.end field

.field private m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

.field private m_pidInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

.field private m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

.field protected m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field private m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

.field private m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

.field protected m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

.field private m_userInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-direct {v0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfoCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$2;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$2;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$3;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$4;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$4;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    const-string v0, "AuthenticatorBase"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$5;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$5;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$6;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$6;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onTokenRefreshTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onUserProfileRefreshTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ea/nimble/identity/AuthenticatorBase;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->onTokenResponse(Lcom/ea/nimble/NetworkConnectionHandle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closePidInfoUpdate(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/NimbleIdentityPidInfo;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closePersonaUpdate(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onPidInfoRefreshTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onPersonaRefreshTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onNetworkChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onConfigurationChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ea/nimble/identity/AuthenticatorBase;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePidInfo()V

    return-void
.end method

.method private closePersonaUpdate(Lcom/ea/nimble/Error;)V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Updating persona information succeed!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get persona from Identity server for error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    sub-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v1

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v3, v1, v2, v0}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-interface {v1, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private closePidInfoUpdate(Lcom/ea/nimble/Error;)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Updating pid information succeed!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get pid information from Identity server for error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v3, v1, v2, v0}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-virtual {v1, v2, v3, v0}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-interface {v1, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized environmentCheck()Lcom/ea/nimble/Error;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    :cond_0
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    const-string v2, "Idenitity cannot work without network."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    const-string v2, "No authentication conductor has been set yet."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_0
    :try_start_2
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    const-string v2, "Identity is still in initialization and not ready for operation."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadPidInfo()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "pidInfo"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Restored existing pidInfo (pid = %s) for %s authenticator from persistence."

    invoke-static {v2, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nimble.notification.identity.authenticator.pid.info.update"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "The previous Exception in Persistence while getting NimbleIdentityPidInfo can be safely ignored. A cached value for pidInfo does not exist or was stored in an older format. This value will instead be retrieved from the server."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private loadState()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "loggedIn"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Loaded state: OFFLINE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Loaded state: NONE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private loadToken()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    return-void

    :cond_0
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityToken;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onConfigurationChange()V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Identity resumes after configuration changed."

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume()V

    return-void
.end method

.method private onNetworkChange()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Identity resumes after network recovered."

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->cancelAuthentication()V

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onPersonaRefreshTimer()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method private onPidInfoRefreshTimer()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method private onTokenRefreshTimer()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onTokenResponse(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-direct {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityToken;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$18;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$18;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->saveToken()V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updateUserProfile()V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePidInfo()V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to parse token from server response data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method private onUserProfileRefreshTimer()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method private declared-synchronized prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    if-eqz p1, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized refreshToken()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_0
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    const-string v1, "grant_type=refresh_token&refresh_token=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientSecret()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/net/URL;

    const-string v6, "%s/connect/token"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-Include-RT-Time"

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v2, v3}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object v3, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v3, v2, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v0, v2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    iput-object v1, v2, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    iput-boolean v5, v2, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$13;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$13;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v0, v2, v1}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-object v2, v3

    :catch_1
    :try_start_4
    const-string v0, "Network"

    const-string v1, "Malformed URL from %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Ready to refresh user profile"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updateUserProfile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v0, "Skipping autoLogin for state NONE"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v0, "Authenticator %s resume failing - environment not ready."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v0, "Skipping autoLogin for state GOING"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->verifyAccessToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshTokenExpiryTime()Ljava/util/Date;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private savePidInfo()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_0

    const-string v2, "pidInfo"

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Saved current pidInfo (pid = %s) for %s authenticator to persistence."

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private saveState()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "loggedIn"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    aput-object v1, v2, v4

    const-string v1, "Saved loggedIn value to persistence as %s for state %s"

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private saveToken()V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saving token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method private updatePersonas()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Persona update in progress, skipping"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Updating persona info"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/proxy/identity/pids/me/personas"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getProxyServerUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "%s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Expand-Results"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, v2}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v2, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v1, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    new-instance v2, Lcom/ea/nimble/identity/AuthenticatorBase$16;

    invoke-direct {v2, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$16;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v1, v0, v2}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    return-void

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Network"

    const-string v2, "Malformed URL from %s"

    invoke-static {v1, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updatePidInfo()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Pid info update in progress, skipping"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Updating pid info"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/proxy/identity/pids/me"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getProxyServerUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "%s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Include-Underage"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, v2}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v2, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v1, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    new-instance v2, Lcom/ea/nimble/identity/AuthenticatorBase$15;

    invoke-direct {v2, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$15;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v1, v0, v2}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    return-void

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Network"

    const-string v2, "Malformed URL from %s"

    invoke-static {v1, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method abstract autoLogin()V
.end method

.method protected cancelAuthentication()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    :cond_2
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    :cond_3
    return-void
.end method

.method protected declared-synchronized cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 9

    const-string v0, "Logout of authenticator "

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_9

    :try_start_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    new-instance v2, Ljava/net/URL;

    const-string v6, "%s/connect/clearsid?client_id=%s&access_token=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v1, v2}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v2, v1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v2

    new-instance v6, Lcom/ea/nimble/identity/AuthenticatorBase$17;

    invoke-direct {v6, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$17;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-interface {v2, v1, v6}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_2
    iput-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->saveToken()V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v5

    :goto_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iput-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nimble.notification.identity.authenticator.pid.info.update"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    if-eqz v3, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nimble.notification.identity.authenticator.persona.info.update"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    const-string v0, "com.ea.nimble.tracking"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-static {v2}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "NIMBLESTANDARD::IDENTITY_LOGOUT"

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1, p0}, Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;->handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    goto :goto_3

    :catch_0
    const-string p1, "Network"

    const-string v0, "Malformed URL from %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {p1, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Logout of authenticator %s while state was going. Premature interruption. Check for failure."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_a

    invoke-interface {p1, p0, v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_a
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1, p0}, Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;->handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    goto :goto_3

    :cond_b
    sget-object p1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected cleanup()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected closeAuthentication(Lcom/ea/nimble/Error;)V
    .locals 8

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "Authentication succeed!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "\n\n\nAuthentication succeeded for %s\n\n\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.tracking"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v4, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v4, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-static {v3}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "NIMBLESTANDARD::IDENTITY_LOGIN"

    invoke-interface {v0, v3, v2}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    sub-double/2addr v2, v4

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0, v2, v3, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_4
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_autoLoginAttempt:Z

    invoke-interface {v0, p0, v2}, Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;->handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "\n\n\n@@@@@@@@@@@@@@@@Attempting to login with no conductor registered!~!!!!!@@@@@@@@@@@@@\n\n\n"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "Authentication closed with error %s."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->isPlatformLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_autoLoginAttempt:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-interface {v1, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_4

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected closeUserInfoUpdate(Lcom/ea/nimble/Error;Z)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Updating user profile succeed!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Fail to get user profile for error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne p2, v1, :cond_2

    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {p2}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {p2}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    sub-double/2addr v1, v3

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p2, v1, v2, v0}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    invoke-virtual {p2, v1, v2, v0}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfoCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfoCallbacks:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected completeMigration()V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AuthenticatorBase complete migration called - has no implementation"

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method declared-synchronized enableAutoRefresh(Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    const-wide v2, 0x408f400000000000L    # 1000.0

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v2

    sub-double/2addr v5, v0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1, v5, v6, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v2

    sub-double/2addr v5, v0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1, v5, v6, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v2

    sub-double/2addr v5, v0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1, v5, v6, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_3
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getExpiryTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v2

    sub-double/2addr v5, v0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1, v5, v6, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_5
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_6
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected exchangeAuthCodeToToken(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const/4 p1, 0x2

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "grant_type=authorization_code&code=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->exchangeDataForToken(Ljava/lang/String;)V

    return-void
.end method

.method protected exchangeDataForToken(Ljava/lang/String;)V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "%s/connect/token"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X-Include-RT-Time"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, v4}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object v1, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v1, v0, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p1, v0, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p1

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$12;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$12;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-object v2, v4

    :catch_1
    const-string p1, "Network"

    const-string v3, "Malformed URL from %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {p1, v3, v1}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method getAccessToken()Lcom/ea/nimble/identity/NimbleIdentityToken;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.ea.nimble.identity.authenticator."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .locals 1

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaByNamespace(Ljava/lang/String;J)Lcom/ea/nimble/identity/NimbleIdentityPersona;
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPersonas()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getPersonaId()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v2

    :cond_1
    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getPersonaId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, p3, v3

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    const/4 v0, 0x2

    aput-object p1, p3, v0

    const-string p1, "Try to get persona with persona id %d, but namespace %s doesn\'t match the asked for %s"

    invoke-static {p2, p1, p3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public getPersonaByNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPersonas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPersonas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ea/nimble/identity/NimbleIdentityPersona;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->savePidInfo()V

    return-object v0
.end method

.method public getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    return-object v0
.end method

.method public getUserInfo()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isPlatformLoggedIn()Z
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onVerifiedAccessToken()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPersonas()Ljava/util/List;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getUserInfo()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    return-void
.end method

.method public refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$9;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$9;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$8;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$8;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public refreshUserInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$7;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$7;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method public requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "requestAccessToken API called without a callback. Aborting token refresh"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "requestAccessToken API called, proceeding with token refresh"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    const-string v1, "No tokens found for your authenticator"

    const-string v2, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v3, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p1, p0, v2, v2, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p0, v0, v1, v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$11;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$11;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v3, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    invoke-interface {p1, p0, v2, v2, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    :goto_0
    return-void
.end method

.method public requestAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string p2, "Request server authentication oAuth code without callback, no way to get result"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const-string v0, "Request server authentication oauth code for serverId %s and scope %s"

    invoke-static {v1, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ea/nimble/identity/AuthenticatorBase$10;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method protected requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string p2, "requestIdentityForFriends called with no way to notify caller"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "pidType"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "clientId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "values"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    const/4 p2, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getProxyServerUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "/proxy/identity/pids/personaextref/bulk"

    aput-object v5, v4, p2

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "%s %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Authorization"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Content-Type"

    const-string v2, "text/plain;charset=UTF-8"

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/ea/nimble/HttpRequest;

    invoke-direct {p1, v4}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    sget-object v2, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v2, p1, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object p2, p1, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    iput-object v1, p1, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$14;

    invoke-direct {v0, p0, p3}, Lcom/ea/nimble/identity/AuthenticatorBase$14;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    invoke-interface {p2, p1, v0}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    monitor-exit p0

    return-void

    :cond_1
    const-string p1, "Network"

    const-string p2, "Network Component was null!"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catch_0
    move-object v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :goto_0
    const-string p1, "Network"

    const-string p3, "Malformed URL from %s"

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, v0

    invoke-static {p1, p3, p2}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Authenticator "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t support identity information for friends"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->loadState()V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->loadToken()V

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->loadPidInfo()V

    :cond_0
    const-string v0, "nimble.notification.networkStatusChange"

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "nimble.notification.identity.configuration.change"

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->saveState()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nimble.notification.identity.authentication.update"

    invoke-static {v0, p1}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->cancelAuthentication()V

    return-void
.end method

.method protected updateUserProfile()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setExpiryTime(Ljava/util/Date;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeUserInfoUpdate(Lcom/ea/nimble/Error;Z)V

    return-void
.end method

.method public verifyAccessToken()V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onVerifiedAccessToken()V

    return-void
.end method
