.class Lcom/beetalk/sdk/plugin/GGPluginManager$1;
.super Ljava/lang/Object;
.source "GGPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$pluginCallback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

.field final synthetic val$pluginKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginCallback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    iput-object p4, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$data:Ljava/lang/Object;

    iput-object p5, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "invokePlugin: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$000(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginCallback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$100(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getPlugin(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/GGPlugin;->embedInActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$pluginKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/GGPlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/beetalk/sdk/plugin/GGPluginActivity;->startWithPlugin(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->realExecute(Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
