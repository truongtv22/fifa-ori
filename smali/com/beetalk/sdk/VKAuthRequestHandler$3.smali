.class Lcom/beetalk/sdk/VKAuthRequestHandler$3;
.super Ljava/lang/Object;
.source "VKAuthRequestHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/VKAuthRequestHandler;->exchangeToken(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/beetalk/sdk/AuthClient$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

.field final synthetic val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/VKAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p3, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/beetalk/sdk/AuthClient$Result;
    .locals 8

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getRequestCode()I

    move-result v1

    const v2, 0xdbed

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeVkTokenSyncNoGrant(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v2}, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/beetalk/sdk/networking/service/AuthService;->exchangeVkTokenSync(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_1
    const-string v3, "open_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "access_token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "expiry_time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "platform"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v6, Lcom/beetalk/sdk/data/AuthToken;

    iget-object v7, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    invoke-virtual {v7, v1}, Lcom/beetalk/sdk/VKAuthRequestHandler;->getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v7

    invoke-direct {v6, v4, v7, v1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {v6, v5}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    iget-object v4, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-static {v4, v6, v3, v1}, Lcom/beetalk/sdk/AuthClient$Result;->createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_2
    const-string v0, "error"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_user_ban"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    const-string v1, "invalid_grant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->this$0:Lcom/beetalk/sdk/VKAuthRequestHandler;

    iget-object v0, v0, Lcom/beetalk/sdk/VKAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKUtils;->logout(Landroid/content/Context;)V

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->val$pendingRequest:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-static {v1, v0}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/beetalk/sdk/VKAuthRequestHandler$3;->call()Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    return-object v0
.end method
