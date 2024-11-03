.class Lcom/ea/nimble/identity/NimbleIdentityImpl$5;
.super Ljava/lang/Object;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;->makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

.field final synthetic val$currentAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

.field final synthetic val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iput-object p3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$currentAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request for account migration failed for error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponentId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "nimble.notification.identity.migraiton"

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    :cond_1
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, p1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-interface {p1, v1, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$currentAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-virtual {p1, v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->completeMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    :goto_0
    return-void
.end method
