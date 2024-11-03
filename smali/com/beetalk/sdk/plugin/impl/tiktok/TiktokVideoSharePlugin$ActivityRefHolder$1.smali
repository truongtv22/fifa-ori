.class Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder$1;
.super Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;
.source "TiktokVideoSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokBroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder$1;->this$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    invoke-direct {p0}, Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/beetalk/sdk/helper/SimpleActivityLifecycleCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder$1;->this$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$ActivityRefHolder;->unregisterReceiver(Landroid/app/Activity;)V

    return-void
.end method
