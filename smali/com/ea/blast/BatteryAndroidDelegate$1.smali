.class Lcom/ea/blast/BatteryAndroidDelegate$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryAndroidDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/BatteryAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/BatteryAndroidDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/BatteryAndroidDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "plugged"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-virtual {p1}, Lcom/ea/blast/BatteryAndroidDelegate;->NativeOnPowerDisconnected()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-virtual {p1}, Lcom/ea/blast/BatteryAndroidDelegate;->NativeOnPowerConnected()V

    :goto_0
    const-string p1, "scale"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "level"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p1, p0, Lcom/ea/blast/BatteryAndroidDelegate$1;->this$0:Lcom/ea/blast/BatteryAndroidDelegate;

    invoke-virtual {p1, p2}, Lcom/ea/blast/BatteryAndroidDelegate;->NativeOnBatteryLevelChanged(F)V

    return-void
.end method
