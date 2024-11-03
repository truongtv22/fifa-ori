.class Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler$1;->this$1:Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler$1;->this$1:Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;

    iget-object v1, v1, Lcom/garena/android/gpns/external/ServiceManager$IncomingHandler;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-static {v1, v0}, Lcom/garena/android/gpns/external/ServiceManager;->access$500(Lcom/garena/android/gpns/external/ServiceManager;Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
