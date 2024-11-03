.class Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;
.super Ljava/lang/Object;
.source "NimbleIdentityMigrationAuthenticationConductorHandler.java"

# interfaces
.implements Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;


# instance fields
.field private m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentity;->getComponent()Lcom/ea/nimble/identity/INimbleIdentity;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentity;->getLoggedInAuthenticators()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "anonymous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->handlePendingMigration()Z

    return-void
.end method


# virtual methods
.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Authenticator %s, which is already mainAuthenticator, is currently logged in"

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->handlePendingMigration()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p2, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;

    invoke-direct {p2, p1}, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    invoke-interface {p1, p2}, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;->handleLogin(Lcom/ea/nimble/identity/INimbleIdentityMigrationLoginResolver;)V

    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Given a null authenticator as part of logout proess."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "anonymous"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Unable to set Anonymous Authenticator as main authenticator as part of logout process."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    invoke-virtual {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object p1

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq p1, v0, :cond_2

    invoke-virtual {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V

    :cond_2
    return-void
.end method

.method public handlePendingMigration()Z
    .locals 9

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "com.ea.nimble.identity"

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Attempted to check pending migration status but persistence was not available. Failing."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string v2, "nimble.notification.identity.migraiton"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;

    if-nez v0, :cond_1

    const-string v0, "No pending migration object found in persistence!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v4, v5, :cond_3

    invoke-interface {v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorPid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v3, v4, :cond_3

    invoke-interface {v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorPid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;

    iget-object v4, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_migrationGUID:Ljava/lang/String;

    iget-object v5, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorId:Ljava/lang/String;

    iget-object v6, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorPid:Ljava/lang/String;

    iget-object v7, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorId:Ljava/lang/String;

    iget-object v8, v0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorPid:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sending request to game to handle pending migration"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    invoke-interface {v0, v2}, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;->handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;)V

    const/4 v0, 0x1

    return v0
.end method
