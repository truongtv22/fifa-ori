.class Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;
.super Ljava/lang/Object;
.source "NimbleIdentityGenericAuthenticationConductorHandler.java"

# interfaces
.implements Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;


# instance fields
.field private loginResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

.field private logoutResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

.field private m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    return-void
.end method


# virtual methods
.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V
    .locals 0

    new-instance p2, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

    invoke-direct {p2, p1}, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->loginResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    invoke-interface {p1, p2}, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;->handleLogin(Lcom/ea/nimble/identity/INimbleIdentityGenericLoginResolver;)V

    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 1

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

    invoke-direct {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->logoutResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    invoke-interface {p1, v0}, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;->handleLogout(Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;)V

    return-void
.end method
