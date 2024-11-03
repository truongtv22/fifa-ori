.class public abstract Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "BaseFBPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field protected callbackManager:Lcom/facebook/CallbackManager;

.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method

.method private startAuth(Landroid/app/Activity;)Z
    .locals 4

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onSuccess(Landroid/app/Activity;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;

    invoke-direct {v3, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getFacebookLoginPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return v1
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TS;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->mData:Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->startAuth(Landroid/app/Activity;)Z

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onError(Ljava/lang/Exception;Landroid/app/Activity;)V
.end method

.method public onFBActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/plugin/GGPluginActivity;)Z
    .locals 0

    iget-object p4, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {p4, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public abstract onSuccess(Landroid/app/Activity;)V
.end method
