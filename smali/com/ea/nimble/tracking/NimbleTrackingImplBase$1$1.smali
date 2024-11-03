.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;
.super Ljava/lang/Object;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-static {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->access$600(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    return-void
.end method
