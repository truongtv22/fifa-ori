.class Lcom/garena/android/gpns/external/ServiceManager$2;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/external/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/external/ServiceManager;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/external/ServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager$2;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "Service Connected"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager$2;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/garena/android/gpns/external/ServiceManager;->access$302(Lcom/garena/android/gpns/external/ServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 p1, 0x0

    const/16 p2, 0x2707

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/garena/android/gpns/external/ServiceManager$2;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-static {p2}, Lcom/garena/android/gpns/external/ServiceManager;->access$400(Lcom/garena/android/gpns/external/ServiceManager;)Landroid/os/Messenger;

    move-result-object p2

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object p2, p0, Lcom/garena/android/gpns/external/ServiceManager$2;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-static {p2}, Lcom/garena/android/gpns/external/ServiceManager;->access$300(Lcom/garena/android/gpns/external/ServiceManager;)Landroid/os/Messenger;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Service disconnected"

    invoke-static {p1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager$2;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/garena/android/gpns/external/ServiceManager;->access$302(Lcom/garena/android/gpns/external/ServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
