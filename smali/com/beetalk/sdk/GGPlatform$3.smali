.class Lcom/beetalk/sdk/GGPlatform$3;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field final synthetic val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

.field final synthetic val$platformToken:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3;->val$platformToken:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$3;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p3, p0, Lcom/beetalk/sdk/GGPlatform$3;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenResult(Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3;->val$platformToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/beetalk/sdk/GGPlatform$3;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {p2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/beetalk/sdk/GGPlatform$3$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGPlatform$3$1;-><init>(Lcom/beetalk/sdk/GGPlatform$3;)V

    invoke-static {p1, p2, v0}, Lcom/beetalk/sdk/networking/service/AuthService;->bindGuestAccount(Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->access$100()V

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$3;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
