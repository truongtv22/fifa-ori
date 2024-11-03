.class public Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;
.super Ljava/lang/Object;
.source "NimbleIdentityPendingMigrationResolver.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;


# instance fields
.field private m_GUID:Ljava/lang/String;

.field private m_currentAuthenticatorId:Ljava/lang/String;

.field private m_currentAuthenticatorPid:Ljava/lang/String;

.field private m_newAuthenticatorId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_GUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_newAuthenticatorId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorPid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMigrationSourceAuthenticatorId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrationTargetAuthenticatorId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_newAuthenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_newAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorPid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->completeMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_GUID:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    :cond_1
    :goto_0
    return-void
.end method
