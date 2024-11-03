.class Lcom/beetalk/sdk/plugin/GGPluginManager$4;
.super Ljava/lang/Object;
.source "GGPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginManager;->register(Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

.field final synthetic val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

.field final synthetic val$pluginKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$pluginKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$600(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$pluginKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$600(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$pluginKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$500(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$pluginKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-interface {v1, v0}, Lcom/beetalk/sdk/plugin/GGPluginCallback;->onPluginResult(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$500(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;->val$pluginKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
