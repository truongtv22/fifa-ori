.class Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;
.super Ljava/lang/Object;
.source "FBInvitePlugin.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->onSuccess(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/gamingservices/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-virtual {v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const-string v1, "Share cancelled"

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-virtual {v3}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-virtual {v1}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "Share Failed"

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/gamingservices/GameRequestDialog$Result;)V
    .locals 3

    new-instance p1, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {p1}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p1, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const-string v0, "Successfully shared"

    iput-object v0, p1, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/gamingservices/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$2;->onSuccess(Lcom/facebook/gamingservices/GameRequestDialog$Result;)V

    return-void
.end method
