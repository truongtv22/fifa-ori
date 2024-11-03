.class public Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;
.super Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/helper/ActivityUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityLifecycleMonitor"
.end annotation


# instance fields
.field private final action:Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;

.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->action:Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->action:Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;

    invoke-interface {p1}, Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;->onDestroy()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->tryRelease()V

    :cond_0
    return-void
.end method

.method public tryRelease()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;->activity:Landroid/app/Activity;

    :cond_0
    return-void
.end method
