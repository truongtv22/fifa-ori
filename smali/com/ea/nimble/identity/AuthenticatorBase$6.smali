.class Lcom/ea/nimble/identity/AuthenticatorBase$6;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;
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

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$6;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$6;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$500(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    return-void
.end method
