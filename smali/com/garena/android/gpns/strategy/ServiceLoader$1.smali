.class Lcom/garena/android/gpns/strategy/ServiceLoader$1;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/strategy/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/strategy/ServiceLoader;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/strategy/ServiceLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/strategy/ServiceLoader$1;->this$0:Lcom/garena/android/gpns/strategy/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStrategyFailure(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "Strategy Unsuccessful, Should not start service. Its already running."

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/ServiceLoader$1;->this$0:Lcom/garena/android/gpns/strategy/ServiceLoader;

    invoke-static {v0}, Lcom/garena/android/gpns/strategy/ServiceLoader;->access$000(Lcom/garena/android/gpns/strategy/ServiceLoader;)Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;->onOtherServiceRunning(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onStrategySuccess()V
    .locals 1

    const-string v0, "Strategy is successful. Service can be safely started"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/ServiceLoader$1;->this$0:Lcom/garena/android/gpns/strategy/ServiceLoader;

    invoke-static {v0}, Lcom/garena/android/gpns/strategy/ServiceLoader;->access$000(Lcom/garena/android/gpns/strategy/ServiceLoader;)Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;->onServiceStarted()V

    return-void
.end method
