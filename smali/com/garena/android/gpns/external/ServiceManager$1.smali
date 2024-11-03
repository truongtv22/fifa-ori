.class Lcom/garena/android/gpns/external/ServiceManager$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/android/gpns/external/ServiceManager;->getToken()Ljava/lang/String;
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

    iput-object p1, p0, Lcom/garena/android/gpns/external/ServiceManager$1;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtherServiceRunning(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager$1;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-static {v0, p1}, Lcom/garena/android/gpns/external/ServiceManager;->access$200(Lcom/garena/android/gpns/external/ServiceManager;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceStarted()V
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager$1;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-static {v0}, Lcom/garena/android/gpns/external/ServiceManager;->access$000(Lcom/garena/android/gpns/external/ServiceManager;)V

    iget-object v0, p0, Lcom/garena/android/gpns/external/ServiceManager$1;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/garena/android/gpns/external/ServiceManager$1;->this$0:Lcom/garena/android/gpns/external/ServiceManager;

    invoke-static {v2}, Lcom/garena/android/gpns/external/ServiceManager;->access$100(Lcom/garena/android/gpns/external/ServiceManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/garena/android/gpns/GNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/garena/android/gpns/external/ServiceManager;->access$200(Lcom/garena/android/gpns/external/ServiceManager;Landroid/content/ComponentName;)V

    return-void
.end method
