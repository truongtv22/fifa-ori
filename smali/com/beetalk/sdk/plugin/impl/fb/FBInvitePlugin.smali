.class public Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBInvitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.invite"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/facebook/gamingservices/GameRequestDialog;

    invoke-direct {v0, p1}, Lcom/facebook/gamingservices/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;

    invoke-direct {v2, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/gamingservices/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;

    iget-object v1, v1, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->mData:Ljava/lang/Object;

    check-cast v1, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;

    iget-object v1, v1, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;->message:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/gamingservices/GameRequestDialog;->show(Ljava/lang/Object;)V

    return-void
.end method
