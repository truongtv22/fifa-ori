.class public Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;
.super Lcom/ea/nimble/Component;
.source "NimbleCppApplicationLifeCycle.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.bridge.NimbleCppApplicationLifeCycle"


# instance fields
.field private m_newIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->m_newIntent:Landroid/content/Intent;

    return-void
.end method

.method private static initialize()V
    .locals 2

    new-instance v0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;

    invoke-direct {v0}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;-><init>()V

    const-string v1, "com.ea.nimble.bridge.NimbleCppApplicationLifeCycle"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method private parseIntentInformation(Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mode"

    const-string v2, "PushNotification"

    const-string v3, "key"

    const-string/jumbo v4, "url"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->parsePushNotificationDetails(Ljava/util/Map;Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->parsePushNotificationDetails(Ljava/util/Map;Landroid/os/Bundle;)V

    :cond_5
    return-object v0
.end method

.method private parsePushNotificationDetails(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "mode"

    const-string v1, "pn"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pushId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "pnType"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object p2

    invoke-interface {p2}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "deviceId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.bridge.NimbleCppApplicationLifeCycle"

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->m_newIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->parseIntentInformation(Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->onUpdateLaunchMethod(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->m_newIntent:Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onApplicationLaunch(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->parseIntentInformation(Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->onApplicationLaunch(Ljava/util/Map;)V

    return-void
.end method

.method public native onApplicationLaunch(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onApplicationQuit()V
.end method

.method public onApplicationResume()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->m_newIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->parseIntentInformation(Landroid/content/Intent;Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->onApplicationResume(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->m_newIntent:Landroid/content/Intent;

    return-void
.end method

.method public native onApplicationResume(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onApplicationSuspend()V
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    iput-object p2, p0, Lcom/ea/nimble/bridge/NimbleCppApplicationLifeCycle;->m_newIntent:Landroid/content/Intent;

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public native onUpdateLaunchMethod(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public setup()V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    return-void
.end method
