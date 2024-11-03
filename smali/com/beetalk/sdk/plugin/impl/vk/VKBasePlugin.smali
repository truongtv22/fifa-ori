.class public abstract Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "VKBasePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field private authHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->onLoginSuccess(Landroid/app/Activity;)V

    return-void
.end method

.method private onLoginSuccess(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->executeActionAuthorized(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TS;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "checking vk session"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->data:Ljava/lang/Object;

    new-instance p2, Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-direct {p2, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->authHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Lcom/beetalk/sdk/vk/VKAuthHelper;->setOnAuthResultListener(Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->authHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-virtual {p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->startLogin()V

    return-void
.end method

.method protected abstract executeActionAuthorized(Landroid/app/Activity;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TS;)V"
        }
    .end annotation
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->authHelper:Lcom/beetalk/sdk/vk/VKAuthHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/beetalk/sdk/vk/VKAuthHelper;->onActivityResult(ILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/vk/VKBasePlugin;->publishResult(Landroid/app/Activity;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
