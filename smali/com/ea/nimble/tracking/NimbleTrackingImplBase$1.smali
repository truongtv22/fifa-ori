.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;
.super Landroid/content/BroadcastReceiver;
.source "NimbleTrackingImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isAbleToPostEvent(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nimble.notification.networkStatusChange"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-object p1, p1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance p2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;

    invoke-direct {p2, p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    invoke-virtual {p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
