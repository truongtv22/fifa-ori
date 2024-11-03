.class Lcom/beetalk/sdk/GGPlatform$4;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field final synthetic val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$guestToken:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iput-object p4, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object p1

    sget-object p2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, p2, v1}, Lcom/beetalk/sdk/GGPlatform;->access$300(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    :cond_2
    const-string p1, "bindPlatformWhenGuestLogin: login platform fail with exception"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    const-string p1, "bindPlatformWhenGuestLogin: login platform success"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/GGPlatform$4$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGPlatform$4$1;-><init>(Lcom/beetalk/sdk/GGPlatform$4;)V

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/networking/service/AuthService;->bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$currentSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v0, p0, Lcom/beetalk/sdk/GGPlatform$4;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/GGPlatform;->access$300(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_2
    return-void
.end method
