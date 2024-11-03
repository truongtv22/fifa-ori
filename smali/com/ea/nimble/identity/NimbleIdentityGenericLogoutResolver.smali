.class public Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;
.super Ljava/lang/Object;
.source "NimbleIdentityGenericLogoutResolver.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;


# instance fields
.field private m_authenticatorId:Ljava/lang/String;

.field private m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_authenticatorId:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLoggingOutAuthenticatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_authenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getStillLoggedInAuthenticatorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->resolveLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    :cond_0
    return-void
.end method
