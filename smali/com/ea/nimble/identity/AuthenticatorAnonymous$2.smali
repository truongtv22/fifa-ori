.class Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;
.super Ljava/lang/Object;
.source "AuthenticatorAnonymous.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getUpidToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 4

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ea/nimble/Error;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ea/nimble/Error;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    const-string v3, "Connection error"

    invoke-direct {v1, v2, v3, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {v1, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$102(Lcom/ea/nimble/identity/AuthenticatorAnonymous;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$200(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$300(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Cannot read UPID token from server response"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void
.end method
