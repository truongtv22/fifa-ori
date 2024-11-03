.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;
.super Ljava/lang/Object;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->postPendingEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

.field final synthetic val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;->val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;->val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    return-void
.end method
