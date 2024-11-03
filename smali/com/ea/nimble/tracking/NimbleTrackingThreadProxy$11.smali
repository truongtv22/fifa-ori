.class Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->removeCustomSessionData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    invoke-static {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->removeCustomSessionData(Ljava/lang/String;)V

    return-void
.end method
