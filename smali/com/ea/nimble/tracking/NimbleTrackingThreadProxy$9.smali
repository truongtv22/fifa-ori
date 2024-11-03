.class Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

.field final synthetic val$parameters:Ljava/util/Map;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$parameters:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    invoke-static {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$parameters:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
