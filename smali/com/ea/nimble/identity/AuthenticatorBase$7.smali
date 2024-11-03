.class Lcom/ea/nimble/identity/AuthenticatorBase$7;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
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

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 4

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$600(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v3, "Fail to refresh user info from pid info"

    invoke-direct {v1, v2, v3, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object p1, p1, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Received null callback in refreshUserInfo"

    invoke-static {p1, v0, p2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
