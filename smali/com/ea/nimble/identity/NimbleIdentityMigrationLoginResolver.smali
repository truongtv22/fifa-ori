.class Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;
.super Ljava/lang/Object;
.source "NimbleIdentityMigrationLoginResolver.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityMigrationLoginResolver;


# instance fields
.field private m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

.field private m_authenticatorId:Ljava/lang/String;

.field private m_loggedInAuthenticatorIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_authenticatorId:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_loggedInAuthenticatorIds:Ljava/util/ArrayList;

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentity;->getComponent()Lcom/ea/nimble/identity/INimbleIdentity;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentity;->getLoggedInAuthenticators()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_loggedInAuthenticatorIds:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLoggedInAuthenticatorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_loggedInAuthenticatorIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLoggingInAuthenticatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_authenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public migrate(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-virtual {v0, p1, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->migrate(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    return-void
.end method

.method public switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;->m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-virtual {v0, p1, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    return-void
.end method
