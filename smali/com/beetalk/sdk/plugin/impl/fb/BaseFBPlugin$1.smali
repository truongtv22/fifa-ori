.class Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;
.super Ljava/lang/Object;
.source "BaseFBPlugin.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->startAuth(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string v1, "Login Cancelled"

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onError(Ljava/lang/Exception;Landroid/app/Activity;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/beetalk/sdk/exception/InvalidOperationException;

    const-string v0, "Login Failed for some reason"

    invoke-direct {p1, v0}, Lcom/beetalk/sdk/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onError(Ljava/lang/Exception;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onError(Ljava/lang/Exception;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;->onSuccess(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
