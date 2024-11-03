.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;
.super Ljava/lang/Object;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;

.field final synthetic val$handle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;->val$handle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$3$1;->val$handle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-static {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->access$400(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    return-void
.end method
