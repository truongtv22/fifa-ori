.class public Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;
.super Ljava/lang/Object;
.source "IdentityPlainAuthenticationConductor.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget v0, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    return-void
.end method

.method public handleLogin()V
    .locals 2

    iget v0, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLogout()V
    .locals 4

    iget v0, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method
