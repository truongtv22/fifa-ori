.class Lcom/beetalk/sdk/plugin/GGPluginManager$2;
.super Ljava/lang/Object;
.source "GGPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

.field final synthetic val$ggPluginActivity:Landroid/app/Activity;

.field final synthetic val$result:Ljava/lang/Object;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$source:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$ggPluginActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$200(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/plugin/GGPlugin;

    invoke-virtual {v0}, Lcom/beetalk/sdk/plugin/GGPlugin;->embedInActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$ggPluginActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$result:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$300(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$source:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$result:Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$400(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$500(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$source:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$500(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;->val$source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
