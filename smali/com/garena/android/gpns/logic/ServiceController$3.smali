.class Lcom/garena/android/gpns/logic/ServiceController$3;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Lcom/garena/android/gpns/notification/NotifyItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/logic/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/logic/ServiceController;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$3;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/garena/android/gpns/notification/event/NotifyEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$3;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$300(Lcom/garena/android/gpns/logic/ServiceController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$3;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$000(Lcom/garena/android/gpns/logic/ServiceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/DeviceUtil;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$3;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$400(Lcom/garena/android/gpns/logic/ServiceController;)Lcom/garena/android/gpns/network/NetworkThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/android/gpns/network/NetworkThread;->isTCPDisconnected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$3;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    const/16 v0, 0x7530

    invoke-static {p1, v0}, Lcom/garena/android/gpns/logic/ServiceController;->access$500(Lcom/garena/android/gpns/logic/ServiceController;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$3;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$600(Lcom/garena/android/gpns/logic/ServiceController;)V

    :cond_2
    :goto_0
    return-void
.end method
