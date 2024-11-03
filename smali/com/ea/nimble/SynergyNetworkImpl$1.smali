.class Lcom/ea/nimble/SynergyNetworkImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SynergyNetworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyNetworkImpl;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyNetworkImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyNetworkImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "result"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyNetworkImpl;->access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ea/nimble/SynergyNetworkConnection;

    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v2, "Failed to retrieve Environment data from Synergy"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ea/nimble/SynergyNetworkConnection;->errorPriorToSend(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyNetworkImpl;->access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-virtual {p2}, Lcom/ea/nimble/SynergyNetworkConnection;->start()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyNetworkImpl;->access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
