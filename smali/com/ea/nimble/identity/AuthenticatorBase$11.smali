.class Lcom/ea/nimble/identity/AuthenticatorBase$11;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const-string v1, ""

    invoke-interface {p1, v0, v1, v1, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    :goto_0
    return-void
.end method
