.class Lcom/beetalk/sdk/plugin/GGPluginManager$5;
.super Ljava/lang/Object;
.source "GGPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginManager;->realExecute(Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

.field final synthetic val$ggPluginActivity:Landroid/app/Activity;

.field final synthetic val$plugin:Lcom/beetalk/sdk/plugin/GGPlugin;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->val$plugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->val$ggPluginActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->val$plugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->val$ggPluginActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$100(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;->val$plugin:Lcom/beetalk/sdk/plugin/GGPlugin;

    invoke-virtual {v3}, Lcom/beetalk/sdk/plugin/GGPlugin;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPlugin;->executeAction(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
