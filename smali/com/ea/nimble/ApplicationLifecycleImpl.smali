.class Lcom/ea/nimble/ApplicationLifecycleImpl;
.super Lcom/ea/nimble/Component;
.source "ApplicationLifecycleImpl.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ApplicationLifecycleImpl$State;
    }
.end annotation


# static fields
.field private static final RESTART_ON_CONFIG_CHANGE:Z


# instance fields
.field private m_activityEventCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_activityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_applicationLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_createdActivityCount:I

.field private m_runningActivityCount:I

.field private m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    return-void
.end method

.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    sget-object p1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const/4 p1, 0x0

    iput p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    iput p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private deleteConsumedDataFromIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ea://socialsharing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string v0, "PushNotification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private notifyApplicationLaunch(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    invoke-interface {v1, p1}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationLaunch(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/nimble/ApplicationLifecycleImpl;->deleteConsumedDataFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyApplicationQuit()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationQuit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyApplicationResume(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationResume()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/nimble/ApplicationLifecycleImpl;->deleteConsumedDataFromIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyApplicationSuspend()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationSuspend()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.applicationlifecycle"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AppLifecycle"

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onBackPressed()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public notifyActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s CREATE"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const/4 v4, 0x2

    const-string v5, "Invalid running acitivity count %d"

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p2, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Activity created with state CONFIG_CHANGE but different activity %s and %s"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "Activity created from CONFIG_CHANGE, activity configuration changed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-boolean v1, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationResume()V

    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-eqz v1, :cond_b

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p0, v5, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    goto/16 :goto_6

    :cond_4
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_6

    const-string v1, "Activity created from PAUSE, normal activity switch"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    goto/16 :goto_6

    :cond_6
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_8

    const-string v1, "Activity created from SUSPEND, external activity switch; (new) app restart"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationResume()V

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_7
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-eqz v1, :cond_b

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p0, v5, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    goto :goto_6

    :cond_8
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Activity created with %s state, shouldn\'t happen"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    :goto_4
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Activity created clearly with state %s"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/BaseCore;->onApplicationLaunch(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationLaunch(Landroid/content/Intent;)V

    iput v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-eqz v1, :cond_b

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p0, v5, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    :cond_b
    :goto_6
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    iget v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "State after created %s (%d, %d)"

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    instance-of v2, v1, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;

    if-eqz v2, :cond_c

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;

    invoke-interface {v1, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;->onRawActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_d
    return-void
.end method

.method public notifyActivityDestroy(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s DESTROY"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq p1, v1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "Activity destroy on invalid state %s"

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    if-nez p1, :cond_2

    sget-object p1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationQuit()V

    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->onApplicationQuit()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    :cond_2
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    iget v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "State after destroy %s (%d, %d)"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyActivityOnNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    invoke-interface {v1, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyActivityPause(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s PAUSE"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Activity pause on invalid state %s"

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    iget p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string p1, "State after pause %s (%d, %d)"

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyActivityRestart(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s RESTART"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_0

    const-string v1, "Activity restart from PAUSE, normal activity switch"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationResume()V

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "Activity restart from SUSPEND, external activity switch; (new) app restart"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Activity restart with invalid state %s"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    iget v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "State after restart %s (%d, %d)"

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    instance-of v2, v1, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;->onRawActivityRestart(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public notifyActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Activity %s RESTORE_STATE"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    invoke-interface {v1, p4, p1, p2, p3}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyActivityResume(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s RESUME"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq p1, v1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "Activity resume on invalid state %s"

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "<NOTE>Please double check if the game\'s activity hooks ApplicationLifecycle.onActivityRestart() correctly."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object p1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    iget p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    iget p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const-string p1, "State after resume %s (%d, %d)"

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyActivityRetainNonConfigurationInstance()V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "configuration change should happen between onStop() and onDestroy(), but state is %s"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    :cond_1
    return-void
.end method

.method public notifyActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Activity %s SAVE_STATE"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v1, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyActivityStart(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s START"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "Activity start with LAUNCH state, normal app start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationResume(Landroid/content/Intent;)V

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "Activity start with RESUME state, set to PAUSE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationResume(Landroid/content/Intent;)V

    :cond_4
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "Activity start with CONFIG_CHANGE state, set to PAUSE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_6

    const-string v1, "Activity start with PAUSE state, normal activity switch"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_2

    :cond_7
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Activity start with invalid state %s"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    iget v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "State after start %s (%d, %d)"

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    instance-of v2, v1, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;

    invoke-interface {v1, p1}, Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;->onRawActivityStarted(Landroid/app/Activity;)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public notifyActivityStop(Landroid/app/Activity;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Activity %s STOP"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    sget-boolean v1, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v2, v1, v3

    const-string v2, "Interesting case %s, HIGHLIGHT!!"

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationSuspend()V

    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->onApplicationSuspend()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "running activity count may be messed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationSuspend()V

    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->onApplicationSuspend()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq p1, v1, :cond_5

    new-array p1, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "Activity stop on invalid state %s"

    invoke-static {p0, v1, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v1}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    iget v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const-string v0, "State after stop %s (%d, %d)"

    invoke-static {p0, v0, p1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public notifyActivityWindowFocusChanged(ZLandroid/app/Activity;)V
    .locals 1

    iget-object p2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    invoke-interface {v1, p4, p1, p2, p3}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected teardown()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
