.class Lcom/beetalk/sdk/GGPlatform$5;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field final synthetic val$needSecondRoundLogin:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    iput-boolean p1, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$needSecondRoundLogin:Z

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/beetalk/sdk/GGPlatform$10;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-interface {v0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/garena/pay/android/GGErrorCode;->isFatal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$needSecondRoundLogin:Z

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p2, p1, v0}, Lcom/beetalk/sdk/GGPlatform;->access$400(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-interface {v0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$5;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
