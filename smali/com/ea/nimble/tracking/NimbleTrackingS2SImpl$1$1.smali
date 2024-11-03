.class Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;
.super Ljava/lang/Object;
.source "NimbleTrackingS2SImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;

.field final synthetic val$handle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;->val$handle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;->val$handle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;

    iget-object v2, v2, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$1;->val$sessionData:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    return-void
.end method
