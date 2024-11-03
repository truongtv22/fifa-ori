.class Lcom/beetalk/sdk/GGLoginSession$9;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession;->refreshFacebookToken(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$9;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "facebook token refresh failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->access$202(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/SessionStatus;)Lcom/beetalk/sdk/SessionStatus;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->access$300(Lcom/beetalk/sdk/GGLoginSession;)V

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->access$402(Lcom/beetalk/sdk/GGLoginSession;I)I

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$9;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {v0, v1, v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->access$100(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public OnTokenRefreshed(Lcom/facebook/AccessToken;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "facebook token refreshed"

    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$9;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->access$000(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$9;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$9;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Lcom/beetalk/sdk/GGLoginSession;->access$100(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
