.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver$1;
.super Ljava/lang/Object;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V

    return-void
.end method
