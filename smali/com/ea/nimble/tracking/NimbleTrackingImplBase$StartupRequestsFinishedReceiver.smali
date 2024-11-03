.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NimbleTrackingImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupRequestsFinishedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nimble.environment.notification.startup_requests_finished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-static {p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->access$300(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-object p1, p1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
