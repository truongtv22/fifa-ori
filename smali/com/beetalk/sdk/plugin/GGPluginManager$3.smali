.class Lcom/beetalk/sdk/plugin/GGPluginManager$3;
.super Ljava/lang/Object;
.source "GGPluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginManager;->unregister(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

.field final synthetic val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$3;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$3;->val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$3;->this$0:Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-static {v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->access$600(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginManager$3;->val$callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
