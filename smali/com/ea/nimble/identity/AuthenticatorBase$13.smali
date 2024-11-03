.class Lcom/ea/nimble/identity/AuthenticatorBase$13;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$13;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 1

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$13;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$13;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1400(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/NetworkConnectionHandle;)V

    :goto_0
    return-void
.end method
