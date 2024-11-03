.class Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;
.super Ljava/lang/Object;
.source "AuthenticatorAnonymous.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeUpidTokenForAuthCode()V
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

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read login OAuth code data from server response data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void

    :cond_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeAuthCodeToToken(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    return-void
.end method
