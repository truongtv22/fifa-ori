.class Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;
.super Ljava/lang/Object;
.source "NimbleTrackingS2SImpl.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->postPendingEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;

.field final synthetic val$sessionData:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

.field final synthetic val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    iput-object p3, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->val$sessionData:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    return-void
.end method
