.class Lcom/ea/nimble/SynergyEnvironmentImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SynergyEnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nimble.notification.networkStatusChange"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object p1

    invoke-interface {p1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object p1

    sget-object p2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Network restored. Starting Synergy environment update."

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$000(Lcom/ea/nimble/SynergyEnvironmentImpl;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$002(Lcom/ea/nimble/SynergyEnvironmentImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$100(Lcom/ea/nimble/SynergyEnvironmentImpl;)Lcom/ea/nimble/SynergyEnvironmentUpdater;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$200(Lcom/ea/nimble/SynergyEnvironmentImpl;Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    :cond_0
    return-void
.end method
