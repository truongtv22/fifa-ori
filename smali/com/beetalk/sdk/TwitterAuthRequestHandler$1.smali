.class Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterAuthRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/TwitterAuthRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorize canceled."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->access$100(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Lcom/garena/pay/android/GGErrorCode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->access$100(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Lcom/garena/pay/android/GGErrorCode;)V

    :goto_0
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    sget-object v1, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", secret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    invoke-static {v1, v0, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->access$000(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
