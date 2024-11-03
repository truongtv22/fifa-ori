.class Lcom/garena/android/gpns/logic/ServiceController$7;
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

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$7;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/garena/android/gpns/notification/event/NotifyEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/garena/android/gpns/notification/event/NotifyEvent;->notifyData:Ljava/lang/Object;

    instance-of v0, v0, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/logic/ServiceController$7;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {v0}, Lcom/garena/android/gpns/logic/ServiceController;->access$700(Lcom/garena/android/gpns/logic/ServiceController;)Lcom/garena/android/gpns/network/NetworkRequestHandler;

    move-result-object v0

    iget-object p1, p1, Lcom/garena/android/gpns/notification/event/NotifyEvent;->notifyData:Ljava/lang/Object;

    check-cast p1, Lcom/garena/android/gpns/network/tcp/TCPPacket;

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/network/NetworkRequestHandler;->sendPacket(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V

    :cond_0
    return-void
.end method
