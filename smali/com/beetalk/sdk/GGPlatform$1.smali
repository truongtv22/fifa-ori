.class Lcom/beetalk/sdk/GGPlatform$1;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->loginWithBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "obtain valid platfor token, start to bind guest"

    invoke-static {p2, p1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->access$000(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-interface {v0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-interface {v0, p1, p2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_3
    :goto_0
    return-void
.end method
