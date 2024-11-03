.class Lcom/ea/nimble/identity/NimbleIdentityImpl$3;
.super Ljava/lang/Object;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-static {p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->access$200(Lcom/ea/nimble/identity/NimbleIdentityImpl;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    check-cast v0, Lcom/ea/nimble/identity/AuthenticatorBase;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    :cond_1
    return-void
.end method
