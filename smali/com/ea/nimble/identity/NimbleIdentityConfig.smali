.class Lcom/ea/nimble/identity/NimbleIdentityConfig;
.super Ljava/lang/Object;
.source "NimbleIdentityConfig.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final DEFAULT_DATA_EXPIRY_INTERVAL:D = 3600.0

.field private static final META_DATA_TAG_CLIENT_ID:Ljava/lang/String; = "com.ea.nimble.identity.client_id"

.field private static final META_DATA_TAG_CLIENT_SECRET:Ljava/lang/String; = "com.ea.nimble.identity.client_secret"

.field static final NOTIFICATION_IDENTITY_CONFIGURATION_CHANGE:Ljava/lang/String; = "nimble.notification.identity.configuration.change"


# instance fields
.field private m_autoRefresh:Z

.field private m_clientId:Ljava/lang/String;

.field private m_clientSecret:Ljava/lang/String;

.field private m_connectServerUrl:Ljava/lang/String;

.field private m_expiryInterval:D

.field private m_portalServerUrl:Ljava/lang/String;

.field private m_proxyServerUrl:Ljava/lang/String;

.field private m_ready:Z

.field private m_receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x40ac200000000000L    # 3600.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_expiryInterval:D

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityConfig$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/NimbleIdentityConfig$1;-><init>(Lcom/ea/nimble/identity/NimbleIdentityConfig;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/NimbleIdentityConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->onUpdate()V

    return-void
.end method

.method private onUpdate()V
    .locals 8

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    const-string v1, "nexus.connect"

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "nexus.proxy"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    const-string v3, "nexus.portal"

    invoke-interface {v2, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyEnvironment;->getNexusClientId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.ea.nimble.identity.client_id"

    invoke-static {v4}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    move-object v3, v4

    :cond_4
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/ISynergyEnvironment;->getNexusClientSecret()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.ea.nimble.identity.client_secret"

    invoke-static {v5}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    move-object v4, v5

    :cond_5
    iput-boolean v6, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_ready:Z

    iget-object v5, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_connectServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_proxyServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_portalServerUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientSecret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_connectServerUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_proxyServerUrl:Ljava/lang/String;

    iput-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_portalServerUrl:Ljava/lang/String;

    iput-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientId:Ljava/lang/String;

    iput-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientSecret:Ljava/lang/String;

    const-string v0, "nimble.notification.identity.configuration.change"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_0
    const-string v0, "Synergy environment update without valid server urls"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAutoRefresh()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_autoRefresh:Z

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_connectServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryInterval()D
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_expiryInterval:D

    return-wide v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Identity"

    return-object v0
.end method

.method public getPortalServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_portalServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyServerUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_proxyServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method initialize()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_ready:Z

    iput-boolean v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_autoRefresh:Z

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->onUpdate()V

    :cond_0
    const-string v1, "nimble.environment.notification.startup_environment_data_changed"

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v1, "Configuration initiailized"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isReady()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_ready:Z

    return v0
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_autoRefresh:Z

    return-void
.end method

.method uninitialize()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
