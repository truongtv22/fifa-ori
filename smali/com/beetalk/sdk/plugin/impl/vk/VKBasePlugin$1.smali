.class Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;
.super Ljava/lang/Object;
.source "VKBasePlugin.java"

# interfaces
.implements Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

    invoke-virtual {v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v1, -0x66

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const-string p1, "Unknown Error."

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

    invoke-virtual {v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onLoggedIn()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;Landroid/app/Activity;)V

    return-void
.end method
