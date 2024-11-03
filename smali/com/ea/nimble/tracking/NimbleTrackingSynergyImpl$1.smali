.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "NimbleTrackingSynergyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iget-object p1, p1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1$1;

    invoke-direct {v0, p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method
