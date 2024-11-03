.class Lcom/ea/nimble/identity/AuthenticatorBase$9;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
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

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p2, p2, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v0, "Ready to refresh persona info"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ea/nimble/Timer;->cancel()V

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1100(Lcom/ea/nimble/identity/AuthenticatorBase;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1200(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v1, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;

    move-result-object v1

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-virtual {v1, v2, v3, p1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v1, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Persona refresh failed early because of error %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, p1

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-interface {p1, v1, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    :cond_4
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method
