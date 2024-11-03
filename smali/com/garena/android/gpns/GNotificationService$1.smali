.class Lcom/garena/android/gpns/GNotificationService$1;
.super Landroid/content/BroadcastReceiver;
.source "GNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/android/gpns/GNotificationService;->onStartService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/GNotificationService;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/GNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/GNotificationService$1;->this$0:Lcom/garena/android/gpns/GNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "command"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "local action to kill:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/GNotificationService$1;->this$0:Lcom/garena/android/gpns/GNotificationService;

    invoke-virtual {p1}, Lcom/garena/android/gpns/GNotificationService;->selfDestruct()V

    :cond_0
    return-void
.end method
