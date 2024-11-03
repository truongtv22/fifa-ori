.class Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;
.super Ljava/lang/Object;
.source "FBSharePlugin.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getShareDialog(Landroid/app/Activity;)Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "User cancelled"

    invoke-static {v1, v2, v3}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->access$100(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v1

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    invoke-virtual {v3}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    instance-of v0, p1, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "User cancelled"

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->access$200(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->access$300(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Success"

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin$1;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
