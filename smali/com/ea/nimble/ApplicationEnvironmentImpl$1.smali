.class Lcom/ea/nimble/ApplicationEnvironmentImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationEnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/ApplicationEnvironmentImpl;->refreshAgeCompliance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$000(Lcom/ea/nimble/ApplicationEnvironmentImpl;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->access$002(Lcom/ea/nimble/ApplicationEnvironmentImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-virtual {p1}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->refreshAgeCompliance()V

    return-void
.end method
