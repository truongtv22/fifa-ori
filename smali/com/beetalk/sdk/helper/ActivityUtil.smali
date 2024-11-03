.class public Lcom/beetalk/sdk/helper/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;,
        Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doOnDestroy(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;)Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/helper/ActivityUtil$ActivityLifecycleMonitor;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0
.end method
