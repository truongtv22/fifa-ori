.class Lcom/ea/nimble/identity/AuthenticatorBase$17;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$17;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$17;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 2

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$17;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$17;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_0
    return-void
.end method
