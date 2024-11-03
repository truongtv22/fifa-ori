.class Lcom/garena/android/gpns/logic/ServiceController$1;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Lcom/garena/android/gpns/notification/NotifyItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/logic/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/logic/ServiceController;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$1;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/garena/android/gpns/notification/event/NotifyEvent;)V
    .locals 1

    const-string p1, "received gip == 0, reconnect to auth server"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$1;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$000(Lcom/garena/android/gpns/logic/ServiceController;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$1;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$000(Lcom/garena/android/gpns/logic/ServiceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x927c0

    invoke-static {p1, v0}, Lcom/garena/android/gpns/utility/AlarmUtil;->scheduleWakeConnect(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
