.class Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;
.super Ljava/lang/Object;
.source "VKSharePlugin.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialog$VKShareDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->executeActionAuthorized(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVkShareCancel()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "vk share canceled"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method

.method public onVkShareComplete(I)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string/jumbo v1, "vk share complete"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    invoke-virtual {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const-string p1, "Success"

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onVkShareError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "vk share failed: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v0, -0x66

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V

    :goto_0
    return-void
.end method
