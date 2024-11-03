.class public Lcom/beetalk/sdk/account/AccountAuthenticatorService;
.super Landroid/app/Service;
.source "AccountAuthenticatorService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Lcom/beetalk/sdk/account/Authenticator;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/account/Authenticator;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/account/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
