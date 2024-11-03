.class public Lcom/ea/nimble/identity/NimbleIdentityPlainAuthenticationConductorHandler;
.super Ljava/lang/Object;
.source "NimbleIdentityPlainAuthenticationConductorHandler.java"

# interfaces
.implements Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;


# instance fields
.field private m_conductor:Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPlainAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;

    return-void
.end method


# virtual methods
.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "anonymous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "New authenticator %s being LogIn handled by Plain authenticator."

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "New authenticator %s being LogOut handled by Plain authenticator."

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
