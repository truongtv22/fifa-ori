.class public Lcom/beetalk/sdk/BTLoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BTLoginActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SAVED_AUTH_CLIENT:Ljava/lang/String; = "saved_auth_client"


# instance fields
.field protected authClient:Lcom/beetalk/sdk/AuthClient;

.field private callingPackage:Ljava/lang/String;

.field private request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/BTLoginActivity;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/BTLoginActivity;->onAuthClientCompletion(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method private onAuthClientCompletion(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/BTLoginActivity;->request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-static {v1}, Lcom/beetalk/sdk/AuthClient$Result;->isError(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "auth_result"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/beetalk/sdk/BTLoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/BTLoginActivity;->finish()V

    const p1, 0x10a0001

    invoke-virtual {p0, v0, p1}, Lcom/beetalk/sdk/BTLoginActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onActivityResult"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/beetalk/sdk/AuthClient;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "BTLoginActivity onCreate"

    invoke-static {v2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "recreate session"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "saved_auth_client"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient;

    iput-object p1, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    const-string p1, "BTLoginActivity onCreate, get authClient from savedInstanceState"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/beetalk/sdk/AuthClient;

    invoke-direct {p1}, Lcom/beetalk/sdk/AuthClient;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p0}, Lcom/beetalk/sdk/BTLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "request_extra"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p1, p0, Lcom/beetalk/sdk/BTLoginActivity;->request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    const-string p1, "BTLoginActivity onCreate, savedInstanceState is null, create authClient"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/beetalk/sdk/BTLoginActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/BTLoginActivity;->callingPackage:Ljava/lang/String;

    iget-object p1, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1, p0}, Lcom/beetalk/sdk/AuthClient;->setContext(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    new-instance v0, Lcom/beetalk/sdk/BTLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/BTLoginActivity$1;-><init>(Lcom/beetalk/sdk/BTLoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->setOnAuthCompleted(Lcom/beetalk/sdk/AuthClient$OnAuthCompleted;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "destroy"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->cancelCurrentHandler()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    iget-object v0, p0, Lcom/beetalk/sdk/BTLoginActivity;->callingPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error Calling Package must be set"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/BTLoginActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    iget-object v1, p0, Lcom/beetalk/sdk/BTLoginActivity;->request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/AuthClient;->startOrResumeAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "save bundle"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "saved_auth_client"

    iget-object v1, p0, Lcom/beetalk/sdk/BTLoginActivity;->authClient:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
