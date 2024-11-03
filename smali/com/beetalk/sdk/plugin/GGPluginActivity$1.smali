.class Lcom/beetalk/sdk/plugin/GGPluginActivity$1;
.super Ljava/lang/Object;
.source "GGPluginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPluginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPluginActivity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPluginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginActivity;

    invoke-static {v1}, Lcom/beetalk/sdk/plugin/GGPluginActivity;->access$000(Lcom/beetalk/sdk/plugin/GGPluginActivity;)Lcom/beetalk/sdk/plugin/GGPlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/GGPluginActivity$1;->this$0:Lcom/beetalk/sdk/plugin/GGPluginActivity;

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->realExecute(Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V

    return-void
.end method
